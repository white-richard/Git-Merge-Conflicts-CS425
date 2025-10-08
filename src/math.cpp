#include "math.hpp"

namespace dm {

double f(double x) {
    return x; 
}

double evaluate(double x, Mode mode) {
    double xn = x; 
    return f(xn);
}

}