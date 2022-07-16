# atreplinit() do repl
#     try
#         @eval using Revise
#     catch e
#         @warn "Error while importing Revise" e
#     end
# end

using MKL

# # Make sure to pirate those floats (they have probably never seen the sea)
# using Printf
# Base.show(io::IO, f::Float64) = @printf io "%.4g" f
# Base.show(io::IO, f::Float32) = @printf io "%.4g" f
# Base.show(io::IO, f::Float16) = @printf io "%.4g" f
