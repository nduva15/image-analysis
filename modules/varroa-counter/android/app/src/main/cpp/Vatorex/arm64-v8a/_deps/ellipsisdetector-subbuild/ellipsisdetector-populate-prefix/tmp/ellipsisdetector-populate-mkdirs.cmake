# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/dependencies/EllipsisDetector"
  "/Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/build/Vatorex/arm64-v8a/EllipsisDetector"
  "/Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/build/Vatorex/arm64-v8a/_deps/ellipsisdetector-subbuild/ellipsisdetector-populate-prefix"
  "/Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/build/Vatorex/arm64-v8a/_deps/ellipsisdetector-subbuild/ellipsisdetector-populate-prefix/tmp"
  "/Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/build/Vatorex/arm64-v8a/_deps/ellipsisdetector-subbuild/ellipsisdetector-populate-prefix/src/ellipsisdetector-populate-stamp"
  "/Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/build/Vatorex/arm64-v8a/_deps/ellipsisdetector-subbuild/ellipsisdetector-populate-prefix/src"
  "/Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/build/Vatorex/arm64-v8a/_deps/ellipsisdetector-subbuild/ellipsisdetector-populate-prefix/src/ellipsisdetector-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/build/Vatorex/arm64-v8a/_deps/ellipsisdetector-subbuild/ellipsisdetector-populate-prefix/src/ellipsisdetector-populate-stamp/${subDir}")
endforeach()
