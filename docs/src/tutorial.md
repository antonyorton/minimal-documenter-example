```@meta
EditURL = "tutorial.jl"
```

# [Tutorial](@id tutorial)

[MyExample](@ref MyExample) is a minimal working example using [Documenter.jl](https://documenter.juliadocs.org/stable/) and [Literate.jl](https://fredrikekre.github.io/Literate.jl/v2/). The charts were prepared using [CairoMakie](https://makie.org/website/).

The package has no functionality, it is solely for the purposes of testing the documentation generation workflow.

````@example tutorial
push!(LOAD_PATH, "../../src/")
using MyExample
````

Obtain data for plotting

````@example tutorial
seconds, measurements = get_data()
````

Plot figure

````@example tutorial
plot_figure(seconds, measurements)
````

Some text below the figure.

---

*This page was generated using [Literate.jl](https://github.com/fredrikekre/Literate.jl).*

