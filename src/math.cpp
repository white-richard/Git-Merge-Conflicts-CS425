#include "math.hpp"

namespace dm {

double f(double x) { return x*x*x - 3.0*x; }
double fprime(double x) { return 3.0*x*x - 3.0; }
double Fantiderivative(double x) { return 0.25*x*x*x*x - 1.5*x*x; }

double normalize(double x) {
    const double y = (x + CFG.offset) * CFG.scale;
    return std::clamp(y,
        static_cast<double>(CFG.lo),
        static_cast<double>(CFG.hi));
}

double evaluate(double x, Mode mode) {
    double xn = normalize(x);

    // Value with linearization near 0, Student D
    if (mode == Mode::VALUE) {
        if (std::abs(xn) < DELTA) {
            return f(0.0) + fprime(0.0) * xn;
        }
        return f(xn);
    }

    // Intergal via antiderivative, Student C
    if (mode == Mode::INTEGRAL) {
        return Fantiderivative(xn) - Fantiderivative(0.0);
    }

    // Newton step with derivative guard, Student B
    if (mode == Mode::NEWTON_STEP) {
        const double d = fprime(xn);
        if (std::abs(d) < EPS) {
            return xn;
        }
        return xn - f(xn)/d;
    }

    // Derivative, Student A
    if (mode == Mode::DERIVATIVE) {
        return fprime(xn);
    }

    return f(xn);
}

}
