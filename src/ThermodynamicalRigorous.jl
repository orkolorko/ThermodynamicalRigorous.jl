module ThermodynamicalRigorous

# This makes the function difference visible when you use the module
export difference

"""
    difference(T, x)

Compute the value of the function ``(T(x_n)-x₁, T(x_{n-1})-x_n, ..., T(x_1)-x_2)``
 a zero of this function is a periodic orbit of period `n` for the dynamic T

# Examples
```jldoctest
julia> using ThermodynamicalRigorous

julia> T(x) = 0<=x<0.5 ? 2*x : 2*x-1
T (generic function with 1 method)

julia> ThermodynamicalRigorous.difference(T, [0, 0, 0])
3-element Vector{Int64}:
 0
 0
 0
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
