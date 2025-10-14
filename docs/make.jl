using Documenter

# DocMeta.setdocmeta!(
#     DelaySSAToolkit, :DocTestSetup, :(using DelaySSAToolkit); recursive=true
# )

makedocs(;
    sitename="test_documents.jl",
    format=Documenter.HTML(;
        mathengine=Documenter.Writers.HTMLWriter.MathJax2(),
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://github.com/X-Y-Zhou/test_documents",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Tutorials" => [
            "tutorials/tutorials.md",
            "tutorials/bursty.md",
            "tutorials/delay_degradation.md",
            "tutorials/heterogeneous_delay.md",
            "tutorials/delay_oscillator.md",
            "tutorials/stochastic_delay.md",
        ],
        "Algorithm" => [
            "algorithms/notations.md",
            "algorithms/delayrejection.md",
            "algorithms/delaydirect.md",
            "algorithms/delaymnrm.md",
        ],
        "Theory" => "theory.md",
        "API" => "api.md",
    ],
    warnonly=true,
)

deploydocs(; repo="https://github.com/X-Y-Zhou/test_documents", devbranch="main")
