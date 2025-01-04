cd(@__DIR__) # go into docs folder
import Pkg;
Pkg.activate(@__DIR__);

push!(LOAD_PATH, "../src/")
using Documenter, Literate, MyExample

# convert tutorial to markdown
Literate.markdown("./src/tutorial.jl", "./src")

# Markdown files to compile to HTML
# (sidebar and table of contents for the documentation)
pages = [
    "Introduction" => "index.md",
    "Tutorial" => "tutorial.md",
    "API" => "api.md",
]

makedocs(;
    pages,
    sitename="My documentation",
    remotes=nothing)

deploydocs(
    repo="https://github.com/antonyorton/minimal-documenter-example.git"
)