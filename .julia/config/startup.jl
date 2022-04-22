using REPL

atreplinit() do repl
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

    Base.active_repl.options.auto_indent = false
end

using MKL
using OhMyREPL

colorscheme!("GruvboxDark")

enable_autocomplete_brackets(false)
OhMyREPL.enable_pass!("RainbowBrackets", false)
# isdefined(@__MODULE__, :OhMyREPL) && enable_autocomplete_brackets(false)

prompt!(name) = OhMyREPL.input_prompt!("$(name)❯ ", :green)
prompt!() = prompt!(rand(("giulia", "giuliana", "gianna", "giovanna")))
prompt!()
# OhMyREPL.input_prompt!("❯ ", :green)

# Make sure to pirate those floats (they have probably never seen the sea)
using Printf
Base.show(io::IO, f::Float64) = @printf(io, "%.4g", f)
Base.show(io::IO, f::Float32) = @printf(io, "%.4g₃₂", f)
Base.show(io::IO, f::Float16) = @printf(io, "%.4g₁₆", f)
