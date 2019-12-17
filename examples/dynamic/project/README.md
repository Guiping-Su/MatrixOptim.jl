
# Find the Trajectory using Dynamic Optimization

In the report, it is important to give the results and an interpretation of those, but certainly also to describe the chosen method, its background and assumptions.

## 1, Trajectory of a Suspended Chain

The shape of a suspended chain can be described and solved using dynamic optimization. The equations to describe the dynamics of the chain are simplified to one dimensional unconstrained equation, and the angels are described in the Radian system. That is, For <img src="/examples/dynamic/project/tex/87b1657177022f790cc2ab8fbcc138bb.svg?invert_in_darkmode&sanitize=true" align=middle width=123.85906005pt height=22.465723500000017pt/>, we have:

<p align="center"><img src="/examples/dynamic/project/tex/44878bfbb42d9a7a5e1ae410d52674cf.svg?invert_in_darkmode&sanitize=true" align=middle width=412.2651489pt height=88.493889pt/></p>

where the end points are:

<p align="center"><img src="/examples/dynamic/project/tex/d5e976a1a29efc4411c34a227b2d2a27.svg?invert_in_darkmode&sanitize=true" align=middle width=120.08604629999999pt height=87.1240095pt/></p>

So the constraint <img src="/examples/dynamic/project/tex/f55b7967ddf692791f1bc3c4b6e7a087.svg?invert_in_darkmode&sanitize=true" align=middle width=86.50674779999999pt height=26.76175259999998pt/> is no longer needed. Notice that the angels are not constrained, but they can be estimated to be between <img src="/examples/dynamic/project/tex/d19a001d2d6c915bc12a160ba0b2d72c.svg?invert_in_darkmode&sanitize=true" align=middle width=43.750182299999985pt height=21.18721440000001pt/> and <img src="/examples/dynamic/project/tex/b417bd5ef96f350bc2ed82e53ba48a0f.svg?invert_in_darkmode&sanitize=true" align=middle width=30.96474974999999pt height=21.18721440000001pt/>. With the new one dimensional unconstrained equation, the (steady state) potential energy can be used as the cost function:

<p align="center"><img src="/examples/dynamic/project/tex/a381899fdf98fdfd103db242eba21819.svg?invert_in_darkmode&sanitize=true" align=middle width=233.98111605pt height=105.4751709pt/></p>

where the scalar <img src="/examples/dynamic/project/tex/f50853d41be7d55874e952eb0d80c53e.svg?invert_in_darkmode&sanitize=true" align=middle width=9.794543549999991pt height=22.831056599999986pt/>, <img src="/examples/dynamic/project/tex/ddcb483302ed36a59286424aa5e0be17.svg?invert_in_darkmode&sanitize=true" align=middle width=11.18724254999999pt height=22.465723500000017pt/> can be expressed by the following equations with <img src="/examples/dynamic/project/tex/f9c4988898e7f532b9f826a75014ed3c.svg?invert_in_darkmode&sanitize=true" align=middle width=14.99998994999999pt height=22.465723500000017pt/> fixed:

<p align="center"><img src="/examples/dynamic/project/tex/2b27a0c5827073622e30f34ca0d83eb9.svg?invert_in_darkmode&sanitize=true" align=middle width=277.14659939999996pt height=87.1240095pt/></p>

The Hamiltonian function of the cost function can be expressed as:

<p align="center"><img src="/examples/dynamic/project/tex/7f64e0b1bbf2b68b5a1f370db5955016.svg?invert_in_darkmode&sanitize=true" align=middle width=496.4229995999999pt height=32.990165999999995pt/></p>

Hence the set of Euler-Lagrange equations can be expressed by the following five equations:

<p align="center"><img src="/examples/dynamic/project/tex/8024d48888de36ca74c60341dc22367d.svg?invert_in_darkmode&sanitize=true" align=middle width=307.68864885pt height=138.28108139999998pt/></p>

where the boundary conditions are:

<p align="center"><img src="/examples/dynamic/project/tex/cef1dcb53809470999e3cd014c94521e.svg?invert_in_darkmode&sanitize=true" align=middle width=144.61048799999998pt height=153.69987765pt/></p>

Numerical method can be used to find the optimal values. The calculate procedure for iterations can be expressed by the following five equations:

<p align="center"><img src="/examples/dynamic/project/tex/397c4c47d6336f399de6506b38ba2450.svg?invert_in_darkmode&sanitize=true" align=middle width=273.11313809999996pt height=137.5294668pt/></p>

If the original two-dimensional expressions are to be used, we can write the corresponding Hamiltonian function as:

<p align="center"><img src="/examples/dynamic/project/tex/e80094cd26592b707e07c34ee5eb1c9c.svg?invert_in_darkmode&sanitize=true" align=middle width=375.81054555pt height=32.990165999999995pt/></p>

according to Pontryagins Maximum principle, if we consider :

<p align="center"><img src="/examples/dynamic/project/tex/0123cb69d017e6328ec866dd8ea34393.svg?invert_in_darkmode&sanitize=true" align=middle width=631.3636725pt height=137.80322325pt/></p>

When <img src="/examples/dynamic/project/tex/ed6ccff2a53f69f4c96dce6a9fc774d4.svg?invert_in_darkmode&sanitize=true" align=middle width=212.30146904999998pt height=22.831056599999986pt/>, the value of the costate vector at 0, <img src="/examples/dynamic/project/tex/8d54550f8c3f314c8645aa4db192e631.svg?invert_in_darkmode&sanitize=true" align=middle width=60.62598794999999pt height=33.305929799999994pt/>, is <img src="/examples/dynamic/project/tex/b0a45c0329676a48b17dfdfcdf0bd3aa.svg?invert_in_darkmode&sanitize=true" align=middle width=136.9867257pt height=24.65753399999998pt/>.

When <img src="/examples/dynamic/project/tex/8ab74d51f506ab3d319edfc456af1e16.svg?invert_in_darkmode&sanitize=true" align=middle width=228.73988774999995pt height=22.831056599999986pt/>, the value of the costate vector at 0, <img src="/examples/dynamic/project/tex/8d54550f8c3f314c8645aa4db192e631.svg?invert_in_darkmode&sanitize=true" align=middle width=60.62598794999999pt height=33.305929799999994pt/>, is <img src="/examples/dynamic/project/tex/e024497239b0e3e8f9e7636c776e2910.svg?invert_in_darkmode&sanitize=true" align=middle width=136.9867257pt height=24.65753399999998pt/>.

The two results can be visualized by the figure 1:

![](/images/dynamic_1.png)

### Vertical Force and Costate Vector

Determine the vertical force in the origin (i = 0). Compare this with the costate at the origin. Discuss your observations. Give a qualified guess on the sign of horizontal force in the origin.

### Two Symmetric Half Chains

For <img src="/examples/dynamic/project/tex/87b1657177022f790cc2ab8fbcc138bb.svg?invert_in_darkmode&sanitize=true" align=middle width=123.85906005pt height=22.465723500000017pt/>, we have:

<p align="center"><img src="/examples/dynamic/project/tex/44878bfbb42d9a7a5e1ae410d52674cf.svg?invert_in_darkmode&sanitize=true" align=middle width=412.2651489pt height=88.493889pt/></p>

where the boundary conditions are:

<p align="center"><img src="/examples/dynamic/project/tex/d49fde9de438443f411722033b803ff4.svg?invert_in_darkmode&sanitize=true" align=middle width=113.74056540000001pt height=64.7674335pt/></p>

When <img src="/examples/dynamic/project/tex/4d8fc1d3851286cb7b423eaf172ee903.svg?invert_in_darkmode&sanitize=true" align=middle width=55.00368554999999pt height=22.465723500000017pt/>

## 2, Trajectory of a Suspended Wire

Now, the chain is substituted by a wire and the problem becomes a continuous problem. Let <img src="/examples/dynamic/project/tex/6f9bad7347b91ceebebd3ad7e6f6f2d1.svg?invert_in_darkmode&sanitize=true" align=middle width=7.7054801999999905pt height=14.15524440000002pt/> the distance along the wire. The positions along the wire obey

<p align="center"><img src="/examples/dynamic/project/tex/0992366c43f1ad69bf7ac24eec97428b.svg?invert_in_darkmode&sanitize=true" align=middle width=237.09815415pt height=39.452455349999994pt/></p>

where the boundary conditions are:

<p align="center"><img src="/examples/dynamic/project/tex/6fe55ab3c01b53af069221da5fe99c2e.svg?invert_in_darkmode&sanitize=true" align=middle width=117.4582332pt height=87.1240095pt/></p>

So the potential energy in steady state can be expressed by:

<p align="center"><img src="/examples/dynamic/project/tex/ef421a9d6e7ad7bc5344795837fa8180.svg?invert_in_darkmode&sanitize=true" align=middle width=132.2186844pt height=41.15109735pt/></p>

where

<p align="center"><img src="/examples/dynamic/project/tex/d43a5cd1ea7359573d72e34fda511dd5.svg?invert_in_darkmode&sanitize=true" align=middle width=124.30212629999998pt height=41.09589pt/></p>

The Hamiltonian function is:

<p align="center"><img src="/examples/dynamic/project/tex/6513a3c7887729b7936195665ddcb56d.svg?invert_in_darkmode&sanitize=true" align=middle width=275.07778155pt height=16.438356pt/></p>

Euler-Lagrange equations are:

<p align="center"><img src="/examples/dynamic/project/tex/86b5be090f00b1faa74c4d2337c83325.svg?invert_in_darkmode&sanitize=true" align=middle width=214.7925945pt height=115.06849364999998pt/></p>

or the following equations according to Pontryagins Maximum principle:

<p align="center"><img src="/examples/dynamic/project/tex/cbde22906356a6c052548caceb047a2b.svg?invert_in_darkmode&sanitize=true" align=middle width=402.59250735pt height=126.09769095pt/></p>

Plot the shape of the wire and discuss your observations. Determine the value of the costate vector in origin. Investigate the variation of the Hamiltonian function (i.e. the variation of the Hamiltonian as function of <img src="/examples/dynamic/project/tex/6f9bad7347b91ceebebd3ad7e6f6f2d1.svg?invert_in_darkmode&sanitize=true" align=middle width=7.7054801999999905pt height=14.15524440000002pt/>). Plot the function as function of s and explain what you see - and why.
