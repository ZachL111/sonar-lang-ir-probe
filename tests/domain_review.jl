include("../src/DomainReview.jl")
using .DomainReview

item = ReviewItem(54, 32, 30, 65)
@assert score(item) == 115
@assert lane(item) == "watch"
