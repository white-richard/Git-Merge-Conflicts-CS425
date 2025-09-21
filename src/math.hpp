#pragma once
#include <algorithm>

namespace dm {

struct Config {int scale; int offset; int lo; int hi;};
inline Config CFG{1, 0, -100, 100};

enum class Mode {VALUE, DERIVATIVE, NEWTON_STEP, INTEGRAL};

static constexpr double EPS = 1e-9;
static constexpr double DELTA = 1e-3;

double f(double x);
double fprime(double x);
double Fantiderivative(double x);

double normalize(double x);
double evaluate(double x, Mode mode = Mode::VALUE);
}
