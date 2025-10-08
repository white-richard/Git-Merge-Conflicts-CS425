#include "math.hpp"

namespace dm {

double f(double x) {
    return x; // REPLACE WITH ACTUAL FUNCTION
}


double normalize(double x) {
    const double y = (x + CFG.offset) * CFG.scale;
    return std::clamp(y,
        static_cast<double>(CFG.lo),
        static_cast<double>(CFG.hi));
}



double evaluate(double x, Mode mode) {

    // ==> ADD FUNCTION CALLS HERE <==
    
    double xn = normalize(x);
    return f(xn);
}

}