#include <cassert>
#include <cmath>
#include "math.hpp"

using dm::Mode;

static inline bool nearly(double a, double b, double eps=1e-12) {
    return std::fabs(a - b) <= eps * (1.0 + std::fabs(a) + std::fabs(b));
}

int main() {
    assert(nearly(dm::evaluate(2.0, Mode::VALUE), 2.0));
    assert(nearly(dm::evaluate(-1.0, Mode::VALUE), 2.0));

    assert(nearly(dm::evaluate(2.0, Mode::DERIVATIVE), 9.0));
    assert(nearly(dm::evaluate(0.0, Mode::DERIVATIVE), -3.0));

    {
        double x0 = 2.0;
        double expected = 2.0 - 2.0/9.0;
        double got = dm::evaluate(x0, Mode::NEWTON_STEP);
        assert(nearly(got, expected));
    }

    assert(nearly(dm::evaluate(2.0, Mode::INTEGRAL), -2.0));

    {
        const double x = dm::DELTA / 2.0;
        const double lin_expected = -3.0 * x;
        const double val = dm::evaluate(x, dm::Mode::VALUE);

        assert(nearly(val, lin_expected));

        const double fx = dm::f(x);
        assert(std::fabs(val - fx) > (x*x*x)/2.0);
    }

    assert(nearly(dm::evaluate(100.0, Mode::VALUE), dm::f(100.0)));
    assert(nearly(dm::evaluate(-50.0, Mode::VALUE), dm::f(-50.0)));

    return 0;
}
