#pragma once
#include <array>
#include "config.hpp"

namespace dm {

// Quartic coefficients a..e
inline std::array<int,5> COEFFS = {1, 2, 3, 4, 5};

double normalize(double x);
double evaluate(double x);

}

