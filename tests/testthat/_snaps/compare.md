# compare_names prints differences

    Code
      compare_names(s, t)
    Message
      2 names different.
      * b <-> d
      * d <-> c

# compare_names errors on length mismatch

    Code
      compare_names(s, t)
    Condition
      Error in `compare_names()`:
      ! `x` and `y` must have the same number of names, not 2 and 3.

