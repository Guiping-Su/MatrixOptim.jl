
# Metsa-Oy Forest Production and Supply Chain

## 1, Introduction

## 2, Definition of Mathematical Expressions

$$
\begin{array}{c c c}
	  \hline
	  \text{Symbol} & \text{Definition} & \text{Expression} \\
	  \hline
	  T^1 & \text{type of timber 1} & \{\text{MAT}, \text{KUT}, \text{KOT} \} \\
	  T^2 & \text{type of timber 2} & \{\text{MAK}, \text{KUK}, \text{KOK} \} \\
		T & \text{type of timber} & T^1 \cup T^2 \\
		I^{T1}_{t = \text{MAT}} & \text{outputs of wood processing corresponding to input MAT} & \{\text{MAS} \} \\
		I^{T1}_{t = \text{KUT}} & \text{outputs of wood processing corresponding to input KUT} & \{\text{KUS}, \text{KUV} \} \\
		I^{T1}_{t = \text{KOT}} & \text{outputs of wood processing corresponding to input KOT} & \{\text{KOS}, \text{KOV} \} \\
		I^{T2}_{t = \text{MAK}} & \text{outputs of wood processing corresponding to output MAK} & \{\text{MAS} \} \\
		I^{T2}_{t = \text{KUK}} & \text{outputs of wood processing corresponding to output KUK} & \{\text{KUS}, \text{KUV} \} \\
		I^{T2}_{t = \text{KOK}} & \text{outputs of wood processing corresponding to output KOK} & \{\text{KOS}, \text{KOV} \} \\
	  I^{\text{saw}} & \text{outputs of wood processing in saw mill} & \{\text{MAS}, \text{KUS}, \text{KOS} \} \\
	  I^{\text{plywood}} & \text{outputs of wood processing in plywood mill} & \{\text{KUV}, \text{KOV} \} \\
		I & \text{outputs of wood processing} & I^{\text{saw}} \cup I^{\text{plywood}} \\
		J & \text{pulp production} & \{\text{HSEL}, \text{LSEL} \} \\
		J^{T2}_{t = \text{MAK}} & \text{outputs of pulp production corresponding to input MAK} & \{\text{HSEL} \} \\
		J^{T2}_{t = \text{KUK}} & \text{outputs of pulp production corresponding to input KUK} & \varnothing \\
		J^{T2}_{t = \text{KOK}} & \text{outputs of pulp production corresponding to input KOK} & \{\text{LSEL} \} \\
		K & \text{region} & \{\text{EU}, \text{IE}, \text{PA}, \text{KI} \} \\
	  \hline
\end{array}
$$

_Table 1, summary of sets_

$$
\begin{array}{c l c c c}
		\hline
		\text{Symbol} & \text{Definition} & \text{Type} & \text{Unit} & \text{Set} \\
		\hline
		h_t & \text{purchasing amount of timber} & \text{integer} & 1000 m^3 & T_1 \cup T_2 \\
		y^I_{i} & \text{production amount of wood} & \text{linear} & 1000 m^3 & I^1 \cup I^2 \\
		y^J_{j} & \text{production amount of pulp} & \text{linear} & 1000 m^3 & J \\
		y^{\text{paper}} & \text{production amount of paper} & \text{linear} & 1000 m^3 & - \\
		z^I_{i, k} & \text{selling amount of wood in different regions} & \text{linear} & 1000 m^3 & I, K \\
		z^J_{j, k} & \text{selling amount of pulp in different regions} & \text{linear} & 1000 m^3 & J, K \\
		z^{\text{paper}}_{k} & \text{selling amount of paper in different regions} & \text{linear} & 1000 m^3 & K \\
		\hline
\end{array}
$$

_Table 2, summary of decision variables_

$$
\begin{array}{c l c c}
		\hline
		\text{Symbol} & \text{Definition} & \text{Unit} & \text{Set} \\
		\hline
		\alpha_t & \text{fixed cost factor of purchasing wood} & \circ / 1000 m^3 & T \\
		\beta_t & \text{unit cost factor of purchasing wood} & \circ / 1000 m^6 & T \\
		a^I_i & \text{relation of timber input and output in wood production} & - & I\\
		b^I_i & \text{relation of timber output and output in wood production} & - & I \\
		e^I_i & \text{relation of fuel output and output in wood production} & - & I \\
		c^I_i & \text{cost of wood production} & \circ & I \\
		r^{\text{saw}} & \text{capacity of saw mill in wood production} & 1000 m^3 / \text{year} & - \\
		r^{\text{plywood}} & \text{capacity of plywood mill in wood production} & 1000 m^3 / \text{year} & - \\
		a^J_j & \text{input and output relation of pulp production} & - & J \\
		c^J_j & \text{cost of pulp production} & \circ & J \\
		r^J_j & \text{capacity of pulp production} & 1000 \text{ton} / \text{year} & J \\
		a^{\text{paper}}_{t} & \text{relation of timber inputs in paper production} & - & T \\
		b^{\text{paper}}_{j} & \text{relation of pulp outputs in paper production} & - & J \\
		c^{\text{paper}} & \text{cost of paper production} & \circ & - \\
		r^{\text{paper}} & \text{capacity of paper production} & 1000 \text{ton} / \text{year} & - \\
		\gamma^{I}_{i, k} & \text{fixed price factor of wood products in different regions} & \circ / (1000 m^3) & I, K \\
		\delta^{I}_{i, k} & \text{unit price factor of wood products in different regions} & \circ / (10^6 m^6) & I, K \\
		\gamma^{J}_{j, k} & \text{fixed price factor of pulp in different regions} & \circ / (1000 m^3) & J, K \\
		\delta^{J}_{j, k} & \text{unit price factor of pulp in different regions} & \circ / (10^6 m^6) m^6 & J, K \\
		\gamma^{\text{paper}}_{k} & \text{fixed price factor of paper in different regions} & \circ / (1000 m^3) & K \\
		\delta^{\text{paper}}_{k} & \text{unit price factor of paper in different regions} & \circ / (10^6 m^6) m^6 & K \\
		p^{\text{fuel}} & \text{price of fuel} & \circ / (1000 m^3) & - \\
		\hline
\end{array}
$$

_Table 3, summary of constants_

## 3, Objective Function

The Objective function composes of seven parts:

$$
f^{timber} + f^{wood} + f^{pp} + g^{\text{timber}} + g^{\text{fuel}} + g^{\text{wood}} + g^{\text{pulp}} + g^{\text{paper}}
$$

1. cost of timber procurement: $ f^{timber} = - \sum_{t \in T} h_{\text{t}} (\alpha_t + \beta_t h_{\text{t}}) $
2. cost of wood production: $ f^{wood} = - \sum_{i \in I} y^I_i c^I_i $
3. cost of pulp and paper production: $ f^{pp} = - \sum_{j \in J} y^J_j c^J_j - y^{\text{paper}} c^{\text{paper}} $
4. profit of left timbers: $ g^{\text{timber}} = \sum_{t \in T^1} \alpha_{\text{t}} \left(h_{\text{t}} - \sum_{i \in I^{T1}_t} a^I_i y^I_i \right) $
5. profit of fuel wood selling: $ g^{\text{fuel}} = \sum_{i \in I} p^{\text{fuel}} e^I_i y^I_i $
6. profit of wood selling: $ g^{\text{wood}} = \sum_{i \in I} \sum_{k \in K} z^I_{i, k} (\gamma^{I}_{i, k} - \delta^{I}_{i, k} z^I_{i, k}) $
7. profit of pulp selling: $ g^{\text{pulp}} = \sum_{j \in J} \sum_{k \in K} z^J_{j, k} (\gamma^{J}_{j, k} - \delta^{J}_{j, k} z^J_{j, k}) $
8. profit of paper selling: $ g^{\text{paper}} = \sum_{k \in K} z^{\text{paper}}_k (\gamma^{\text{paper}}_k - \delta^{\text{paper}}_k z^{\text{paper}}_k) $

## 4, Constraints

Besides the constraints that all variables are non-negative, there are nine sets of constraints:

1. limits of wood processing due to timber amount:

$$
h_t \geq \sum_{i \in I^{T1}_t} a^I_i y^I_i \quad \forall t \in T^1
$$

2. limit of pulp production due to timber amount:

$$
\left(h_t + \sum_{i \in I^{T2}_t} b^I_i y^I_i \right) \geq \sum_{j \in J^{T2}_t} a^J_j y^J_j + a^{\text{paper}}_t y^{\text{paper}} \quad \forall t \in T^2
$$

3. limit of wood selling due to production amount:

$$
y^I_i \geq \sum_{k \in K} z^I_i \quad \forall i \in I
$$

4. limit of pulp selling due to production amount:

$$
y^J_j + b^{\text{paper}}_j y^{\text{paper}} \geq \sum_{k \in K} z^J_{j, k} \quad \forall j \in J
$$

5. limit of paper selling due to production amount:

$$
y^{\text{paper}} \geq \sum_{k \in K} z^{\text{paper}}_k
$$

6. limit of production capacity in saw mill:

$$
\sum_{i \in I^{\text{saw}}} y^I_i \leq r^{\text{saw}}
$$

7. limit of production capacity in plywood:

$$
\sum_{i \in I^{\text{plywood}}} y^I_i \leq r^{\text{plywood}}
$$

8. limit of production capacity in pulp production:

$$
y^J_j \leq r^J_j \quad \forall j \in J
$$

9. limit of production capacity in paper production:

$$
y^{\text{paper}} \leq r^{\text{paper}}
$$
