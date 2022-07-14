using ThermodynamicalRigorous
using Documenter

DocMeta.setdocmeta!(ThermodynamicalRigorous, :DocTestSetup, :(using ThermodynamicalRigorous); recursive=true)

makedocs(;
    modules=[ThermodynamicalRigorous],
    authors="Isaia Nisoli nisoli@im.ufrj.br and contributors",
    repo="https://github.com/orkolorko/ThermodynamicalRigorous.jl/blob/{commit}{path}#{line}",
    sitename="ThermodynamicalRigorous.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://orkolorko.github.io/ThermodynamicalRigorous.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/orkolorko/ThermodynamicalRigorous.jl",
    devbranch="main",
)
