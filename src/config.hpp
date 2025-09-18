#pragma once
#include <algorithm>

namespace dm {

struct Config {
    int scale;   // multiply input
    int offset;  // add before scale
    int lo;      // clamp low
    int hi;      // clamp high
};

inline Config CFG = {1, 0, -100, 100};

}

