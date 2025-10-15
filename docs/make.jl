using Documenter
# using DelaySSAToolkit

# DocMeta.setdocmeta!(
#     test_documents, :DocTestSetup, :(); recursive=true
# )

makedocs(;
    sitename="test_documents.jl",
    format=Documenter.HTML(;
        # mathengine=Documenter.Writers.HTMLWriter.MathJax2(),
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://github.com/X-Y-Zhou/test_documents",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
    warnonly=true,
)

deploydocs(; repo="https://github.com/X-Y-Zhou/test_documents.git", devbranch="main")
