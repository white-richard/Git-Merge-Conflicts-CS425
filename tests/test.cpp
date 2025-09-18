#include <cassert>
#include "math.hpp"

int main() {
    assert(dm::COEFFS[0] == 2);
    assert(dm::COEFFS[1] == 4);
    assert(dm::COEFFS[2] == 3);
    assert(dm::evaluate(2.0) == 19.0);
    return 0;
}

