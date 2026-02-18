
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was EllipsisDetectorConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

include("${CMAKE_CURRENT_LIST_DIR}/EllipsisDetectorTargets.cmake")

# Capturing values from configure (optional)
#set(my-config-var )
set(PARAMETER_READER_SUPPORT OFF)

include(CMakeFindDependencyMacro)
# Same syntax as find_package
#find_dependency(MYDEP REQUIRED)

find_dependency(OpenCV REQUIRED)

if(FITTING)
    if(BS_USE_MKL)
        set(MKL "MKL_Wrapper")
        find_dependency(${MKL} REQUIRED CONFIG)
    endif()
    find_dependency(Eigen3 3.3 REQUIRED NO_MODULE)
endif(FITTING)

if(PARAMETER_READER_SUPPORT)
    set(PFR_Target "ParameterFileReader")
    find_dependency(${PFR_Target} REQUIRED CONFIG)
endif(PARAMETER_READER_SUPPORT)

check_required_components("EllipsisDetector")
