# Field Notes

I would read this project from the data inward: cases first, implementation second.

The domain cases cover `IR pressure`, `lowering drift`, `stack depth`, and `diagnostic reach`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

The widest spread is between `IR pressure` and `IR pressure`, so those are the first two cases I would preserve during a refactor.

The language-specific addition keeps the review model in a small module with assertions.
