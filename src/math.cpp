#include "math.hpp"

namespace dm {

double f(double x) { 
    return x*x*x - 3.0*x; 
}

double fprime(double x) { 
    return 3.0*x*x - 3.0; 
}

double Fantiderivative(double x) { 
    return 0.25*x*x*x*x - 1.5*x*x; 
}

// Student D: Function Value with Linearization
// Evaluates f(x) with linearization near critical points for numerical stability
// Uses Taylor approximation: f(a) + f'(a)(x-a) when near critical points
double computeFunctionValue(double x) {
    // Check if near critical points where f'(x) = 0 (x = ±1)
    if (std::abs(x - 1.0) < DELTA || std::abs(x + 1.0) < DELTA) {
        // Use linearization for stability
        double a = (std::abs(x - 1.0) < DELTA) ? 1.0 : -1.0;
        return f(a) + fprime(a) * (x - a);
    }
    return f(x);
}

// Student C: Definite Integral Evaluation
// Computes the definite integral of f from 0 to x using antiderivative
// Returns: ∫[0 to x] f(t)dt = F(x) - F(0)
double computeDefiniteIntegral(double x) {
    return Fantiderivative(x) - Fantiderivative(0.0);
}

// Student B: Newton-Raphson Root Refinement
// Applies one iteration of Newton's method to refine root approximation
// Formula: x_new = x - f(x)/f'(x)
// Guards against division by zero when derivative is small
double applyNewtonStep(double x) {
    double deriv = fprime(x);
    if (std::abs(deriv) >= EPS) {
        return x - f(x) / deriv;
    }
    return x;  // Guard: if f'(x) ≈ 0, no refinement
}

// Student A: Inverse Derivative (Reciprocal of Slope)
// Computes 1/f'(x), representing the inverse rate of change
// Useful for sensitivity analysis: how much x changes per unit change in f(x)
// Guards against near-zero derivatives
double computeInverseDerivative(double x) {
    double deriv = fprime(x);
    if (std::abs(deriv) >= EPS) {
        return 1.0 / deriv;
    }
    return x;
}

double normalize(double x) {
    const double y = (x + CFG.offset) * CFG.scale;
    return std::clamp(y,
        static_cast<double>(CFG.lo),
        static_cast<double>(CFG.hi));
}

double evaluate(double x, ModeSet modes) {

    double result = normalize(x);

    // Student D: Evaluate Function Value
    // MUST BE FIRST - Computes f(x) with linearization near critical points
    // This establishes the base value that other operations transform
    if (modes & VALUE) {
        result = computeFunctionValue(result);
    }

    // Student C: Compute Definite Integral  
    // MUST BE SECOND - Integrates: ∫[0 to result] f(t)dt
    // Order dependency: If VALUE ran first, integrates over [0, f(x)]
    //                   Otherwise integrates over [0, x]
    if (modes & INTEGRAL) {
        result = computeDefiniteIntegral(result);
    }

    // Student B: Apply Newton-Raphson Iteration
    // MUST BE THIRD - Refines: result - f(result)/f'(result)
    // Order dependency: Operates on either f(x), ∫f(x), or normalized x
    if (modes & NEWTON_STEP) {
        result = applyNewtonStep(result);
    }

    // Student A: Compute Inverse Derivative
    // MUST BE LAST - Computes: 1/f'(result)
    // Order dependency: f'(g(x)) ≠ g(f'(x)) for non-linear g
    if (modes & DERIVATIVE) {
        result = computeInverseDerivative(result);
    }

    return result;
}

}
