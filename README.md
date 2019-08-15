
# MatrixOptim

[![Build Status](https://travis-ci.org/edxu96/MatrixOptim.svg?branch=master)](https://travis-ci.org/edxu96/MatrixOptim)

![Tangram](/images/tangram_1.png)

MILP, Robust Optim. and Stochastic Optim., and Decomposition Algorithm in Matrix (by Julia)

__矩阵优化__：通过矩阵表示混合整数线性规划，鲁棒（抗差）优化，随机优化和分解算法。

Every optimization problem can be written in matrix form. For some problems, it may seems trivial, but it's coherent and easy to understand. Secondly, when it comes to algorithms to solve them, it's more explicit in matrix form. Thirdly, the abstraction algorithm for problem modeling helps a lot in understanding.

## Introduction

The MILP can always be formulated in the following matrixes:

```
min  vec_c' * vec_x + vec_f' * vec_y
s.t. mat_aCap * vec_x + mat_bCap * vec_y <= vec_b
     vec_x in R
     vec_y in Z
```

There are two directions for matrix optimization to develop: make modeling easier and solving faster.

In this package, there are formulated algorithm for four kinds of optimization problems, and two decomposition algorithms for faster MILP solving.

## How to Install and Test

```
(v1.1) pkg> add https://github.com/edxu96/MatrixOptim.git
```

Besides, remember to update it regularly after installation:

```
(v1.1) pkg> update MatrixOptim
```

You can test the package:

```
(v1.1) pkg> test MatrixOptim
```

## How to Use

For mixed integer linear programming:

```Julia
model = getModel(vec_c, mat_aCap, vec_b)
solveModel!(model)
```

For mixed integer linear programming with Benders decomposition.

```Julia
solveBendersMilp(n_x, n_y, vec_min_y, vec_max_y, vec_c, vec_f, vec_b, mat_a, mat_b)
```

## To Check

There are many new updates on `JuMP`, so the algorithms need to be updated.

- [x] Linear Programming
- [x] Mixed Integer Linear Programming
- [ ] Robust Optimization
- [ ] Stochastic Optimization
- [X] Benders Decomposition for MILP
- [ ] L-Shaped Benders Decomposition
- [ ] Dantzig-Wolfe Decomposition Family

## More Info

- [edxu96/MatrixOptim/wiki](https://github.com/edxu96/MatrixOptim/wiki/1-Home)
- [中文详解](https://github.com/edxu96/MatrixOptim/wiki/9-zh)

## Contributers

Edward J. Xu (<edxu96@outlook.com>) (<https://edxu96.github.io>)
