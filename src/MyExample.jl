"""
**MyExample** was created to follow along with the guide on [Documenter.jl](https://documenter.juliadocs.org/stable/man/guide/).  

The plotting functionality comes from a short tutorial available on the *Makie* website:[https://docs.makie.org/v0.21/tutorials/getting-started](https://docs.makie.org/v0.21/tutorials/getting-started)
"""
module MyExample

export
    get_data,
    plot_figure

using CairoMakie


"""
    function get_data()

Returns an array `[seconds, measurements]` for plotting.
"""
function get_data()::Vector{AbstractVector{Float64}}
    seconds = collect(0:0.1:2)
    measurements = [8.2, 8.4, 6.3, 9.5, 9.1, 10.5, 8.6, 8.2, 10.5, 8.5, 7.2, 8.8, 9.7, 10.8, 12.5, 11.6, 12.1, 12.1, 15.1, 14.7, 13.1]
    return [seconds, measurements]
end


"""
    function plot_figure(seconds::Vector{Float64}, measurements::Vector{Float64})

Uses CairoMakie to plot a combined line and scatter chart  
based on input x data `seconds` and y data `measurements`
"""
function plot_figure(seconds::Vector{Float64}, measurements::Vector{Float64})
    f = Figure()
    ax = Axis(f[1, 1],
        title="Experimental data and exponential fit",
        xlabel="Time (seconds)",
        ylabel="Value",
    )
    scatter!(ax, seconds, measurements)
    lines!(ax, seconds, exp.(seconds) .+ 7)
    f
end

end
