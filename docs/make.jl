# using Pkg;
# Pkg.activate(".");

push!(LOAD_PATH, "../src/")

using CBX
using Documenter

DocMeta.setdocmeta!(CBX, :DocTestSetup, :(using CBX); recursive = true)

makedocs(;
  modules = [CBX],
  authors = "Dr Rafael Bailo",
  repo = "https://github.com/PdIPS/CBX.jl/blob/{commit}{path}#{line}",
  sitename = "CBX.jl",
  format = Documenter.HTML(;
    sidebar_sitename = false,
    prettyurls = get(ENV, "CI", "false") == "true",
    canonical = "https://PdIPS.github.io/CBX.jl",
    edit_link = "main",
    assets = String[],
    footer = "Copyright © 2024 [Dr Rafael Bailo](https://rafaelbailo.com/) and [Purpose-Driven Interacting Particle Systems Group](https://github.com/PdIPS). [MIT License](https://github.com/PdIPS/CBX.jl/blob/main/LICENSE).",
  ),
  pages = [
    "Home" => "index.md",
    "Basic usage" => [
      "Function minimisation" => "function_minimisation.md"
      "Method parameters" => "method_parameters.md"
      "Stopping criteria" => "stopping_criteria.md"
      "Particle initialisation" => "particle_initialisation.md"
      "Example objectives" => "example_objectives.md"
    ],
    "Mid-level usage" => [
      "Extended output" => "extended_output.md"
      "Output visualisation" => "output_visualisation.md"
      "Performance and benchmarking" => "performance_benchmarking.md"
      "Parallelisation" => "parallelisation.md"
    ],
    "Advanced usage" => [
      "Low-level interface" => "low_level.md"
      "Low-level interface examples" => "low_level_examples.md"
    ],
    "Summary of options" => "summary_options.md",
  ],
)

deploydocs(; repo = "github.com/PdIPS/CBX.jl", devbranch = "main")
