include("../src/Policy.jl")
using .Policy

signal_case_1 = Signal(89, 80, 24, 6, 5)
@assert score(signal_case_1) == 210
@assert classify(signal_case_1) == "accept"
signal_case_2 = Signal(85, 98, 27, 23, 7)
@assert score(signal_case_2) == 141
@assert classify(signal_case_2) == "review"
signal_case_3 = Signal(72, 74, 11, 15, 4)
@assert score(signal_case_3) == 145
@assert classify(signal_case_3) == "review"
