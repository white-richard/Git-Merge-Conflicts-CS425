= Team Git Merge Excercise

This document is written to guide your team through the workshop step by step. In this workshop you will be copying provided code snippets into the repository files, you will not be writing the code from scratch.

== Overview

One teammate should fork the given repo and invite the others. Each student takes one feature branch (A, B, C, D) and will copy the provided code for their feature into the repo. An instructor feature branch will then introduce an intentional change that causes merge conflicts. Your job is to use git workflows (branching, merge, PRs) to resolve those conflicts, pass the tests, and merge everything into `main`.

These are the day-to-day workflows used in real software teams. Knowing how to merge, reason about conflicts, and keep tests green is essential for working on any team.

== Objectives

- Use forks, remotes, branches, and PRs to collaborate.
- Resolve merge conflicts.

== Team Setup

Steps for the Repo Owner:

+ Fork the repository on GitHub.
+ In your fork: Settings -> Collaborators -> add teammates with write access.
+ (Optional but recommended) Protect `main` so merges require PRs, approvals, and passing status checks.

All teammates then clone the team fork and add the instructor repo as `upstream`:

```bash
git clone https://github.com/<RepoOwner>/<team-fork>.git
git fetch --all --prune
```

Create and push a shared `development` branch (one-time):

```bash
git checkout -b development origin/main
git push -u origin development
```

Install the project dependencies:

MacOS with Homebrew
```bash
brew install cmake
```

Ubuntu/Debian
```bash
sudo apt-get install cmake
```

Windows
- Install CMake installer from https://cmake.org/download/
- During installation, check "Add CMake to the system PATH"

Verify CMake is installed:
```bash
cmake --version
ctest --version
```

Note that c++17 is recommended. If your compiler is older, you may need to update it.

The development branch serves as the team’s central integration point. It’s where feature pull requests are merged and continuous integration runs its checks before any changes are promoted to main

== Feature work 

Each student (A, B, C, D) will create a feature branch from `development` and copy the provided snippet for their role into the specified file(s). The students' job is to place the code, keep signatures consistent, run the tests, and follow the Git workflow.

Roles and where to paste the provided snippets:

- Student A — Implement the inverse derivative

  - src/math.cpp
    - At the beginning of the namespace (place where indicated):
    ```cpp
    double computeInverseDerivative(double x) {
        double deriv = fprime(x);
        if (std::abs(deriv) >= EPS) {
            return 1.0 / deriv;
        }
        return x;
    }
    ```
    - In evaluate(...) (place where indicated):
    ```cpp
    if (modes & DERIVATIVE) {
        result = computeInverseDerivative(result);
    }
    ```

- Student B — Implement the Newton-Raphson iteration

  - src/math.cpp
    - At the beginning of the namespace (place where indicated):
    ```cpp
    double applyNewtonStep(double x) {
        double deriv = fprime(x);
        if (std::abs(deriv) >= EPS) {
            return x - f(x) / deriv;
        }
        return x;  // Guard: if f'(x) ≈ 0, no refinement
    }
    ```
    - In evaluate(...) (place where indicated):
    ```cpp
    if (modes & NEWTON_STEP) {
        result = applyNewtonStep(result);
    }
    ```

- Student C — Implement the definite integral evaluation

  - src/math.cpp
    - At the beginning of the namespace (place where indicated):
    ```cpp
    double computeDefiniteIntegral(double x) {
        return Fantiderivative(x) - Fantiderivative(0.0);
    }
    ```
    - In evaluate(...) (place where indicated):
    ```cpp
    if (modes & INTEGRAL) {
        result = computeDefiniteIntegral(result);
    }
    ```

- Student D — Implement the function value with linearization

  - src/math.cpp
    - At the beginning of the namespace (place where indicated):
    ```cpp
    double computeFunctionValue(double x) {
        // Check if near critical points where f'(x) = 0 (x = ±1)
        if (std::abs(x - 1.0) < DELTA || std::abs(x + 1.0) < DELTA) {
            // Use linearization for stability
            double a = (std::abs(x - 1.0) < DELTA) ? 1.0 : -1.0;
            return f(a) + fprime(a) * (x - a);
        }
        return f(x);
    }
    ```
    - In evaluate(...) (place where indicated):
    ```cpp
    if (modes & VALUE) {
        result = computeFunctionValue(result);
    }
    ```

#pagebreak()

== Create your feature branch and copy code

+ Create your feature branch from `development`:

```bash
git checkout development
git pull origin development
git checkout -b feature/<descriptive-feature-name>
```

+ Copy the code snippets into the target file(s). Use the placeholder markers above to find the right content and location.

+ Build and run the tests locally:

```bash
mkdir -p build
cd build
cmake ..
cmake --build .
ctest --output-on-failure
./app
cd ..
```

+ Commit and push your branch:

```bash
git add src/math.cpp src/math.hpp
git commit -m "Implemented <feature description>"
git push -u origin feature/<your-feature>
```

It’s important to run tests locally as soon as possible since they help catch issues such as mismatched function prototypes early on. Identifying these problems right away not only saves time during conflict resolution but also ensures that pull requests ready for review.

== Accept the Instructor PR

- At this point, you should accept the instructor pull request

- Make sure to do this before merging your feature branch into `development` or you will be marked off.

- This intentionally creates overlapping edits so that when you merge your feature branch into `development`, you will have to resolve conflicts.

We do this to practice resolving conflicts safely by taking two versions that are each correct in their own way and combining them into one final version that compiles.

== Resolve conflicts by merging

When development receives instructor updates, each student must bring their work up to date and resolve any merge conflicts. Below we’ll walk through VS Code Source Control (Any Git tool works like GitKraken, GitHub Desktop, JetBrains, etc.)

+ Update your local `development`:

```bash
git checkout development
git pull origin development   # update your local copy of development
```

+ Merge your feature branch into `development`:

```bash
git merge feature/<your-feature>   # merge your feature branch into development
```

When Git detects overlapping changes, it inserts `conflict markers` into the affected files (see #ref(<merge_conflict>)).

#figure(
  image("merge_conflict.png", width: 80%),
  caption: [
    Example of Git conflict markers showing differences between branches. #cite(<vscode-sourcecontrol>)
  ],
) <merge_conflict>

These markers indicate where the two branches made conflicting changes. The head section shows the `development` version since are checked to it. The bottom section shows your feature branch's changes. You must edit the file to consolidate these changes by deciding how to replace or combine code.

+ Resolve the conflicts
TODO

== Reviewing and merging PRs into `dev`

Each student opens a PR with `base = dev` and `compare = feat/your-role`. Use brief descriptions and ask at least one teammate to review and approve. After approval and passing CI, merge into `dev` per your repo rules.

Code reviews are important because they ensure that another person looks over your work, providing an opportunity to catch errors or inconsistencies before any changes are merged into the main branch.

== Final integration into `main` and submission

// When all four feature PRs are merged into `dev` and CI is green, merge `dev` into `main` (fast-forward or via merge commit depending on your protection rules). Tag a release if desired (e.g., `v1.0-team-<name>`).

// Submission checklist (copy into `SUBMISSION.md`):

// 1. Team fork URL.
// 2. Four PR links (one per feature) targeting `dev`.
// 3. One commit link per student showing conflict resolution and a 2–3 sentence explanation of what was kept/changed and why.
// 4. CI results (links or screenshots) showing green checks for each PR and for the final merge.
// 5. Test transcript from `ctest --output-on-failure` (or CI logs) showing passing tests.
// 6. Final commit SHA on `main`.

== Helpful tips

== Closing notes

Good luck and push often.

- NEED a few questions for reflection at the end?

#bibliography("works.bib", style: "ieee")