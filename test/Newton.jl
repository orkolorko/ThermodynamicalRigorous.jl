@testset "testing Newton Method" begin 

# we define the doubling map
T(x) = 0<=x<0.5 ? 2*x : 2*x-1

@test all(ThermodynamicalRigorous.difference(T, [0, 0, 0]) .== [0, 0, 0])
@test all(ThermodynamicalRigorous.difference(T, [1, 1, 1]) .== [0, 0, 0])

import LinearAlgebra: norm
@test norm(ThermodynamicalRigorous.difference(T, [0.2, 0.4, 0.8, 0.6]), Inf) < 1e-15 

end