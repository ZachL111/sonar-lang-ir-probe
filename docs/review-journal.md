# Review Journal

The repository goal stays the same: create a Julia reference implementation for ir workflows, centered on visual model generation, layout fixtures, and stable geometry snapshots. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its compilers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `IR pressure`, score 115, lane `watch`
- `stress`: `lowering drift`, score 181, lane `ship`
- `edge`: `stack depth`, score 121, lane `watch`
- `recovery`: `diagnostic reach`, score 189, lane `ship`
- `stale`: `IR pressure`, score 197, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
