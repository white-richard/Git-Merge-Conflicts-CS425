#include "math.hpp"
#include <algorithm>
#include <limits>

namespace dm {

double normalize(double x) {
    double y = (x + CFG.offset) * CFG.scale;
    return std::clamp(y, static_cast<double>(CFG.lo), static_cast<double>(CFG.hi));
}

double evaluate(double x) {
    // Quartic: a*x^4 + b*x^3 + c*x^2 + d*x + e
    const auto [a,b,c,d,e] = COEFFS;
    double xn = normalize(x);
    return ((((a*xn + b)*xn + d) * xn + e);
}

