module CBX

import Distributions, LinearAlgebra, LogExpFunctions
using DefaultKeywordArguments

include("./types/abstract.jl")
include("./types/modes.jl")
include("./types/parallelisation.jl")

include("./utils/arrays.jl")
include("./utils/logging.jl")
include("./utils/macros.jl")
include("./utils/objectives.jl")
include("./utils/settings.jl")
include("./utils/tuples.jl")
include("./utils/types.jl")

include("./interface/config.jl")
include("./interface/initialise_particles.jl")
include("./interface/maximise.jl")
include("./interface/minimise.jl")
include("./interface/optimise.jl")
include("./interface/parse_config.jl")

include("./dynamics/ParticleDynamics.jl")
include("./dynamics/benchmark_dynamic.jl")
include("./dynamics/is_dynamic_pending.jl")
include("./dynamics/run_dynamic.jl")

include("./CBO/ConsensusBasedOptimisation.jl")
include("./CBO/CBO_method.jl")
include("./CBO/corrections.jl")
include("./CBO/is_method_pending.jl")

include("./CBXLowLevel.jl")
export CBXLowLevel
include("./CBXPlots.jl")
export CBXPlots

end
