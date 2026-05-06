# sonar-lang-ir-probe

`sonar-lang-ir-probe` is a Julia project for Compilers. It turns create a Julia reference implementation for ir workflows, centered on visual model generation, layout fixtures, and stable geometry snapshots into a small local model with readable fixtures and a direct verification command.

## Reading Sonar Lang IR Probe

Start with the README, then open `metadata/project.json` to check the constants behind the examples. After that, `fixtures/cases.csv` shows the compact path and `examples/extended_cases.csv` gives a wider look at the same rule.

## Purpose

This is not a wrapper around a service. It is a self-contained project that shows how the model behaves when demand, capacity, latency, risk, and weight move in different directions.

## What It Does

- Models source form with deterministic scoring and explicit review decisions.
- Uses fixture data to keep intermediate state changes visible in code review.
- Includes extended examples for bytecode output, including `surge` and `degraded`.
- Documents evaluation checks tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.

## Design Sketch

The design is intentionally direct: parse or construct a signal, score it, classify it, and verify the expected branch. This makes the repository useful for studying compilers behavior without needing a service or database unless the language project itself is SQL. The Julia project keeps the model in a small module with assertions in a local test script.

## Files Worth Reading

- `src`: primary implementation
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Setup

Clone the repository, enter the directory, and run the verifier. No database server, cloud account, or token is required.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Verification

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Fixture Notes

The examples are meant to be readable before they are exhaustive. They cover enough variation to show how latency and risk can pull a decision below the threshold.

## Limits

The fixture set is deliberately small. That keeps the review surface clear, but it also means the model should not be treated as a complete domain simulator.

## Next Directions

- Split the scoring constants into a typed configuration object and validate it before use.
- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add one more compilers fixture that focuses on a malformed or borderline input.
