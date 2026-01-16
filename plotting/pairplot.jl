using CairoMakie
using PairPlots

include("../test/random_utils.jl")

# number of dimensions
D = 4

# number of samples
N = 20000

# data type
T = Float32

# matrix of normally distributed random numbers
uniform_data = randn(T, (N, D))

# plot the matrix
f = pairplot(normal_data)

save("pairplot.pdf", f)
