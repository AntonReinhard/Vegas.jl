# == Example hist plotting ==

# acquire data some way
x_data = [0:1.0e-3:1...]
y_data = sin.(x_data)

# create a figure
f = Figure()

# create an axis in the figure to later plot into
ax = Axis(
    f[1, 1];
    title = "My Title",
    xlabel = "label for x data",
    ylabel = "label for y data",
)

pl1 = plot!(ax, x_data, y_data)

more_y_data = cos.(x_data)
pl2 = plot!(ax, x_data, more_y_data)

Legend(
    f[1, 1],
    [pl1, pl2],
    ["sin", "cos"];
    tellheight = false,
    tellwidth = false,
    margin = (10, 10, 10, 10),
    halign = :left,
    valign = :top,
    orientation = :vertical,
)

save("test_histplot.pdf", f)
