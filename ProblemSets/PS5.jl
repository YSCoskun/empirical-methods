using Base: Float64
import Pkg

# Pkg.add("Optim")

# Pkg.add("DelimitedFiles")

using Optim

using DelimitedFiles

X = readdlm("C:/Users/cosku/Desktop/Xfiles2.csv", ';', Float64);

y = readdlm("C:/Users/cosku/Desktop/Yfiles2.csv", ';', Float64);

# Before reading the files as matrices in julia, I converted x.mat and y.mat files to csv.

Bethas = zeros(6,1);

function LnL(bethas::Vector{Float64})
    sum = 0
    for i=1:length(Y)
        sum += -exp(X[i,:]'*bethas) + Y[i] * X[i,:]' * bethas - log(factorial(Y[i]))
    end
    return -sum; # minus sign is added because the this is a max. problem but our tools are designed for min. problems.
end


result = optimize(LnL, zeros(6), NelderMead())

max_val_loglikelihood_nm = result.minimum

betha_nm = result.minimizer

result = optimize(LnL, zeros(6), BFGS())

max_val_loglikelihood_bfgs = result.minimum

betha_bfgs = result.minimizer

result = optimize(LnL, zeros(6), LBFGS())

max_val_loglikelihood_lbfgs = result.minimum

betha_lbfgs = result.minimizer