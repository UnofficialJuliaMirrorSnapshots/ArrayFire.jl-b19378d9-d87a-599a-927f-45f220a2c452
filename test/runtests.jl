using ArrayFire
using Test
using Libdl,Random,SparseArrays,LinearAlgebra,Statistics
using FFTW

@testset "Main" begin
    @testset "Bugs" begin
        include("bugs.jl")
    end

    allowslow(AFArray, false)

    @testset "FFT" begin
        include("fft.jl")
    end

    allowslow(AFArray) do
        include("indexing.jl")
    end
    include("sparse.jl")
    include("math.jl")
    include("blackscholes.jl")
    include("array.jl")
end
