#pragma once
#include <array>
#include "config.hpp"

namespace dm {

// Quartic coefficients a..e
inline std::array<int,5> COEFFS = {2, 2, 4, 4, 5};

double normalize(double x);
double evaluate(double x);

}

