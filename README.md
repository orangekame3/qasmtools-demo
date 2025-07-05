# qasmtools-demo

A demonstration repository showcasing [qasmtools](https://github.com/orangekame3/qasmtools) integrated with ReviewDog for automated QASM code quality checking in CI/CD pipelines.

## Overview

This repository demonstrates how to use qasmtools with ReviewDog in GitHub Actions to:
- Automatically lint OpenQASM 3.0 files
- **Detect out of bounds array access** - a common source of quantum circuit errors
- Check code formatting consistency
- Provide inline PR comments for code quality issues
- Generate comprehensive analysis reports

## CI Features

### QASMTools Lint with ReviewDog
- Automatically runs on pushes and pull requests
- Provides inline comments on PR diffs
- Fails CI if linting issues are found
- Integrates with GitHub's check system

### Dedicated QASM Lint Check
- Comprehensive lint analysis with detailed reporting
- **Out of bounds detection** - catches array index violations (qubit[n] accessed with index >= n)
- Syntax error detection and reporting
- Generates markdown reports as CI artifacts
- Displays visual pass/fail summary in CI logs
- Integrates with ReviewDog for PR comments

### Format Checking
- Validates QASM code formatting
- Shows formatting differences in PR comments
- Enforces consistent code style across the project

### Analysis Reports
- Generates detailed analysis reports for all QASM files
- Uploads reports as CI artifacts
- Includes syntax highlighting and lint results

## Sample Files

The `examples/` directory contains sample QASM files demonstrating:
- `bell_state.qasm` - Bell state preparation (clean code)
- `grover_search.qasm` - Grover's search algorithm (clean code)
- `quantum_teleportation.qasm` - Quantum teleportation protocol (clean code)
- `bad_format.qasm` - Poorly formatted file to demonstrate formatting issues
- `syntax_errors.qasm` - File with intentional syntax errors for lint testing
- `style_issues.qasm` - File with style violations for lint testing
- `out_of_bounds_errors.qasm` - Array index out of bounds errors (common QASM issue)
- `array_bounds_demo.qasm` - Various array bounds violations for comprehensive testing

## Getting Started

1. Fork this repository
2. Make changes to QASM files in the `examples/` directory
3. Create a pull request to see ReviewDog in action
4. Check the CI results and inline comments

## Workflow Configuration

The CI workflow is defined in `.github/workflows/qasmtools-reviewdog.yml` and includes:
- Installing qasmtools from the official repository
- Setting up ReviewDog for automated code review
- Running comprehensive lint checks with detailed reporting
- Format validation with diff reporting
- Analysis report generation

### Workflow Jobs

1. **qasmtools-lint** - Basic lint with ReviewDog integration
2. **qasmtools-dedicated-lint** - Comprehensive lint analysis with detailed reports
3. **qasmtools-analysis** - Full analysis report generation

## Configuration

### Lint Configuration
The `.qasmtools.yaml` file contains lint rules and formatting options:
- Syntax error detection
- Style enforcement
- Formatting rules
- File inclusion/exclusion patterns
- Severity levels

## Requirements

- GitHub repository with Actions enabled
- QASM files with `.qasm` extension
- No additional setup required (qasmtools is installed during CI)
- Optional: `.qasmtools.yaml` for custom lint configuration