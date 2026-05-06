# Sonar Lang IR Probe Walkthrough

I use this file as a small checklist before changing the Julia implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | IR pressure | 115 | watch |
| stress | lowering drift | 181 | ship |
| edge | stack depth | 121 | watch |
| recovery | diagnostic reach | 189 | ship |
| stale | IR pressure | 197 | ship |

Start with `stale` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `baseline` becomes less cautious without a clear reason, I would inspect the drag input first.
