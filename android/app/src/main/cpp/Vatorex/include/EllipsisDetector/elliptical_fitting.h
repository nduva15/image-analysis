#ifndef ELLIPTICAL_FITTING_H
#define ELLIPTICAL_FITTING_H

#include "ellipse_detector.h"
#ifdef BUILD_FIT_BASED
#include <array>

/* tomtom:
 * try decrease bin_size for refinements?
 *
 */

namespace t_ellipse_detector
{
using std::array;

class EllipticalFitt: public EllipseDetectorBase
{
public:
    EllipticalFitt(EllipseDetectorParameter parameter = EllipseDetectorParameter());

protected:
    struct EllipseSeed
    {
        void clear();
        void add_point(PixPos x, PixPos y);
        array<RType,36> scatter{0};
    };
    void compute_ellipse_seeds(PixPos seed_col,PixPos seed_row);
    void extract_ellipsis_int();
    void compute_candidates_from_seeds();
    Ellipse compute_ellipse_candidate(EllipseSeed seed);
    void fill_accumulator(const Ellipse& new_candidate,EllipseSeed& seed);
    void accumulator_to_votes(Ellipse& new_candidate);

    vector<EllipseSeed> ellipse_seeds;
    vector<bool> max_candidates;
    vector<std::array<std::int8_t,2>> to_expand_candidates;
    vector<RType> accumulator;
};

} // end namespace t_ellipse_detector
#endif
#endif // ELLIPTICAL_FITTING_H
