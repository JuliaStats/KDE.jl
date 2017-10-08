__precompile__()

module KernelDensity

using Compat
using StatsBase
using Distributions
using Optim
using Interpolations

import Base: conv
import StatsBase: RealVector, RealMatrix
import Distributions: twoπ, pdf

export kde, kde_lscv, UnivariateKDE, BivariateKDE, InterpKDE, pdf

abstract type AbstractKDE end

include("univariate.jl")
include("bivariate.jl")
include("interp.jl")

end # module

