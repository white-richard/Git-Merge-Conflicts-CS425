#include <iostream>
#include "math.hpp"

int main() {
    std::cout << "f(2) = " << dm::evaluate(2.0, dm::Mode::VALUE) << "\n";
}
