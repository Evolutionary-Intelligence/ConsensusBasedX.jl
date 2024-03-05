using CBX

f(x) = CBX.Ackley(x, shift = 1)

config = (; D = 2, N = 20, initial_variance = 5)
minimise(f, config) # should be close to [1, 1]
