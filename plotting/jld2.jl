using JLD2

x_data = [0:1.0e-3:1...]
y_data = sin.(x_data)

@save "dummy_data.jld2" x_data y_data
