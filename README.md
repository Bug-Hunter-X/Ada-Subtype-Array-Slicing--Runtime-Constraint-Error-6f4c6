# Ada Subtype Array Slicing: Runtime Constraint Error

This repository demonstrates a potential runtime error in Ada related to array slicing and subtypes.  Ada's flexibility in array slicing can lead to unexpected behavior if the slice's range isn't carefully handled when assigning to a subtype array. This example shows a scenario where assigning an array slice of a different size to a subtype array compiles, but results in a constraint error at runtime.  The solution focuses on adding runtime checks to prevent this error.

## How to Reproduce

1. Compile and run `bug.ada`.
2. Observe the runtime constraint error.
3. Compile and run `bugSolution.ada` to see the corrected version.

## Bug and Solution

The `bug.ada` file demonstrates the issue. The `bugSolution.ada` file showcases how to avoid this error by implementing range checks before the assignment.
