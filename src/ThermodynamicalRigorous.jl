module ThermodynamicalRigorous

# This makes the function difference visible when you use the module
export difference

"""
    difference(T, x)

Compute the value of the function ``(T(x_n)-x₁, T(x_{n-1})-x_n, ..., T(x_1)-x_2)``
 a zero of this function is a periodic orbit of period ``n`` for the dynamic T.
It is worth observing that `n` is inferred from the array `x``.

# Examples
```jldoctest
julia> using ThermodynamicalRigorous

julia> T(x) = 0<=x<0.5 ? 2*x : 2*x-1
T (generic function with 1 method)

julia> difference(T, 1)
1-element Vector{Int64}:
 0

julia> difference(T, [0, 0, 0])
3-element Vector{Int64}:
 0
 0
 0

julia> difference(T, [0.2 0.4 0.8 0.6])
4-element Vector{Float64}:
  0.0
  0.0
  1.1102230246251565e-16
 -5.551115123125783e-17
```

"""
function difference(T, x)
    n = length(x)
    a = [T(x[n]) - x[1]]
    for i in 1:(n-1)
        a = append!([T(x[n-i]) - x[n-i+1]],a)
    end
    a
end






end
