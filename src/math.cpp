#include "math.hpp"
#include <algorithm>
#include <limits>

namespace dm {

double normalize(double x) {
    return x;
}

double evaluate(double x) {
    // Quartic: a*x^4 + b*x^3 + c*x^2 + d*x + e
    const auto [a,b,c,d,e] = COEFFS;
    double xn = x;

    return ((((a*xn + b)*xn + c)*xn + d)*xn + e);
}

}

