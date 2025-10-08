#include "math.hpp"

namespace dm {

double f(double x) {
    return x; // REPLACE WITH ACTUAL FUNCTION
}

// ==> ADD FUNCTION IMPLMENTATIONS HERE <==

double evaluate(double x, Mode mode) {
    double xn = x; 
    // ==> ADD FUNCTION CALLS HERE <==
    return f(xn);
}

}