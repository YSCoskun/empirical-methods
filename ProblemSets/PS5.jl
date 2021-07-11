using Base: Float64
import Pkg

# Pkg.add("Optim")

# Pkg.add("CSV")

# Pkg.add("DataFrames")

# Pkg.add("DelimitedFiles")

using Optim

using DataFrames

using CSV

using DelimitedFiles

X = readdlm("C:/Users/cosku/Desktop/Xfiles2.csv", ';', Float64);

y = readdlm("C:/Users/cosku/Desktop/Yfiles2.csv", ';', Float64);

Bethas = zeros(6,1);

function LnL( bethas :: Float64 )

    sum = 0; 

    for i in n

    sum += - exp( X[i,:]'*bethas) + y[i] * X[i,:]' * bethas - log(factorial(Int(y[i])));

    end

    LnL =  -sum;

end

LnL

result = optimize(LnL, ones(6,1), NelderMead())

