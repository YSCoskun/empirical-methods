import Pkg

# Pkg.add("Optim")

# Pkg.add("CSV")

# Pkg.add("DataFrames")

# Pkg.add("DelimitedFiles")

using DataFrames

using CSV

using DelimitedFiles

X = readdlm("C:/Users/cosku/Desktop/Xfiles2.csv", ';', Float64);

y = readdlm("C:/Users/cosku/Desktop/Yfiles2.csv", ';', Float64);

b0 = 0; b1 = 0; b2 = 0; b3 = 0; b4 = 0; b5 = 0;

Betha = [b0 b1 b2 b3 b4 b5];

