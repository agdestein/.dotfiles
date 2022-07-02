using REPL

atreplinit() do repl
    ENV["LD_PRELOAD"] = "/usr/lib64/libstdc++.so.6"
    try
        @eval using Revise
    catch e
        @warn "Error while importing Revise" e
    end

    # try
    #     @eval using OhMyREPL
    # catch e
    #     @warn "Error while importing OhMyREPL" e
    # end

    # Base.active_repl.options.auto_indent = false
end

using MKL
using OhMyREPL


OhMyREPL.Passes.SyntaxHighlighter.add!("Nord", let
    P = OhMyREPL.Passes.SyntaxHighlighter
    cs = P.ColorScheme()
    P.symbol!(cs, OhMyREPL.Crayon(; foreground = 0x83a598))
    P.comment!(cs, OhMyREPL.Crayon(; foreground = 0x616E88))
    P.string!(cs, OhMyREPL.Crayon(; foreground = 0xA3BE8C))
    P.call!(cs, OhMyREPL.Crayon(; foreground = 0x88C0D0))
    P.op!(cs, OhMyREPL.Crayon(; foreground = 0x81A1C1))
    P.keyword!(cs, OhMyREPL.Crayon(; foreground = 0x81A1C1))
    P.text!(cs, OhMyREPL.Crayon(; foreground = 0xE5E9F0))
    P.macro!(cs, OhMyREPL.Crayon(; foreground = 0x88C0D0))
    P.function_def!(cs, OhMyREPL.Crayon(; foreground = 0x8FBCBB))
    P.error!(cs, OhMyREPL.Crayon(; foreground = 0xBF616A))
    P.argdef!(cs, OhMyREPL.Crayon(; foreground = 0x5E81AC))
    P.number!(cs, OhMyREPL.Crayon(; foreground = 0xB48EAD))
    cs
end)

OhMyREPL.Passes.SyntaxHighlighter.add!("Dracula", let
    P = OhMyREPL.Passes.SyntaxHighlighter
    cs = P.ColorScheme()
    P.symbol!(cs, OhMyREPL.Crayon(; foreground = 0xbd93f9))
    P.comment!(cs, OhMyREPL.Crayon(; foreground = 0x6272a4))
    P.string!(cs, OhMyREPL.Crayon(; foreground = 0xf1fa8c))
    P.call!(cs, OhMyREPL.Crayon(; foreground = 0x8be9fd))
    P.op!(cs, OhMyREPL.Crayon(; foreground = 0xff79c6))
    P.keyword!(cs, OhMyREPL.Crayon(; foreground = 0xff79c6))
    P.text!(cs, OhMyREPL.Crayon(; foreground = 0xE5E9F0))
    P.macro!(cs, OhMyREPL.Crayon(; foreground = 0x8be9fd))
    P.function_def!(cs, OhMyREPL.Crayon(; foreground = 0x50fa7b))
    P.error!(cs, OhMyREPL.Crayon(; foreground = 0xff5555))
    P.argdef!(cs, OhMyREPL.Crayon(; foreground = 0xffb86c))
    P.number!(cs, OhMyREPL.Crayon(; foreground = 0xbd93f9))
    cs
end)

colorscheme!("GruvboxDark")

enable_autocomplete_brackets(false)
OhMyREPL.enable_pass!("RainbowBrackets", false)
# isdefined(@__MODULE__, :OhMyREPL) && enable_autocomplete_brackets(false)

prompt!(name) = OhMyREPL.input_prompt!("$(name)❯ ", :green)
prompt!() = prompt!(rand(("giulia", "giuliana", "gianna", "giovanna")))
# prompt!()
prompt!("giulia")
# OhMyREPL.input_prompt!("❯ ", :green)

# # Make sure to pirate those floats (they have probably never seen the sea)
# using Printf
# Base.show(io::IO, f::Float64) = @printf io "%.4g" f
# Base.show(io::IO, f::Float32) = @printf io "%.4g₃₂" f
# Base.show(io::IO, f::Float16) = @printf io "%.4g₁₆" f
