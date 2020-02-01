
# L-Shaped Benders Decomposition with Integer Variables in Second Stage

The standard form for two stage stochastic programming with integer variables in second stage:

<p align="center"><img src="/docs/tex/83cc847d6d67d621a8f4b5fff5871719.svg?invert_in_darkmode&sanitize=true" align=middle width=272.36360909999996pt height=136.2407739pt/></p>

where the <img src="/docs/tex/1da18d2de6d16a18e780cd6c435a2936.svg?invert_in_darkmode&sanitize=true" align=middle width=10.239687149999991pt height=14.611878600000017pt/> is vector of integer variables.

Master Problem:

<p align="center"><img src="/docs/tex/df1b4159718bd3f62834f22c1d222a1c.svg?invert_in_darkmode&sanitize=true" align=middle width=243.65503305pt height=124.88648534999999pt/></p>

Sub-problem for each scenario:

<p align="center"><img src="/docs/tex/c92a8955a0d636faacebc5bd0155dfed.svg?invert_in_darkmode&sanitize=true" align=middle width=282.77707095pt height=66.43109055pt/></p>

which is a standard MILP problem.

So we use the benders algorithm again. The Sub-Mas problem is:

<p align="center"><img src="/docs/tex/b2d64852acc906226b7a5577a15a7b78.svg?invert_in_darkmode&sanitize=true" align=middle width=386.0857638pt height=103.49025719999999pt/></p>

Sub-Sub-problem for each scenario:

<p align="center"><img src="/docs/tex/e1b4a2ebb68b144393e1e4aa93f7c769.svg?invert_in_darkmode&sanitize=true" align=middle width=296.49474689999994pt height=66.43109055pt/></p>

The dual function of <img src="/docs/tex/932220c3182ac8c6da7e26dc4bc6b5cd.svg?invert_in_darkmode&sanitize=true" align=middle width=38.321967749999985pt height=24.65753399999998pt/> is:

<p align="center"><img src="/docs/tex/181b4109f1cbb7e6c609376b277c3acc.svg?invert_in_darkmode&sanitize=true" align=middle width=275.93665935pt height=70.16408355pt/></p>
