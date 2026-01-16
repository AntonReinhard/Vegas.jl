# == Example hist plotting ==
using CairoMakie

# acquire data some way
data = [(rand() - 0.5)^2 for _ in 1:10000]

# create a figure
f = Figure()

# create an axis in the figure to later plot into
ax = Axis(
    f[1, 1];
    title = "My Title",
    xlabel = "label for x data",
    ylabel = "label for y data",
    yminorgridvisible = true,
    yminorticksvisible = true,
    #yminorticks = IntervalsBetween(10),
    yscale = log10,
)

hist!(ax, data; bins = 20)

save("test_histplot.pdf", f)
