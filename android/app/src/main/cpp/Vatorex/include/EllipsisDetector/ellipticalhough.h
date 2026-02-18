/****** Copyright © 2019 weto@zhaw.ch ******/
#ifndef ELLYPTICALHOUGH_H
#define ELLYPTICALHOUGH_H

#include "ellipse_detector.h"
#include <stack>
#include <cstdlib>
#include <stdlib.h>
#include <math.h>

/* tomtom:
 * - major axis search:
 *    -split several seeds in case of bridge (at all at leas equally high voted (not max only))
 *    -check for branching point (more than 2 connected directions) and add it to major cands
 */

namespace t_ellipse_detector
{

class EllipticalHough: public EllipseDetectorBase
{
public:
    EllipticalHough(EllipseDetectorParameter parameter = EllipseDetectorParameter());

private:
    void extract_ellipsis_int();    

    struct MajorAxisCand
    {
        MajorAxisCand(PixPos p_0_col = 0, PixPos p_0_row = 0, PixPos p_1_col = 0, PixPos p_1_row = 0,
                      RType a_0 = 0,RType a_1 = 0,RType major_s = 0);
        PixPos p_0_col,p_0_row;
        PixPos p_1_col,p_1_row;
        RType a_0,a_1;
        RType major_s;
    };
    std::stack<MajorAxisCand> major_candidates;
    void maximize_major_add_to_cands(MajorAxisCand candidate,const Mat& edge_image);
#ifdef SHRINK_MAJOR
    void split_shrink_major_axis_candidates(MajorAxisCand candidate,const Mat& edge_image);
#endif
    vector<std::uint_fast32_t> accumulator;
#ifdef GROW_LM_D
    vector<bool> max_candidates;
    vector<std::array<std::int8_t,2>> to_expand_candidates;
#endif
};

} //end namespace t_ellipse_detector
#include "impl/ellipticalhough_impl.h"
#endif // ELLYPTICALHOUGH_H
