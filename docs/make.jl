using Chaos
using Documenter

DocMeta.setdocmeta!(Chaos, :DocTestSetup, :(using Chaos); recursive=true)

makedocs(;
    modules=[Chaos],
    authors="ErikQQY",
    repo="https://github.com/ErikQQY/Chaos/blob/{commit}{path}#{line}",
    sitename="Chaos.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://ErikQQY.github.io/Chaos",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/ErikQQY/Chaos",
    devbranch="master",
)
