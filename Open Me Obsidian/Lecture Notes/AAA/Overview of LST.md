|                              | adv                                               | dis                           |
| ---------------------------- | ------------------------------------------------- | ----------------------------- |
| [[Φ#Parametric Adjustment]]  | [[#GM Model]]   suited to computer, ez to formula | large euqtion systems         |
| [[Φ#Conditional adjustment]] | [[#GH Model]] small equation                      | time consuming, hard to formu |

[[Normal Distribution]]
[[LST]]

# Basic

|                      | Eq                    | Lr                      | NonLinear GM            | GM with L1              |
| -------------------- | --------------------- | ----------------------- | ----------------------- | ----------------------- |
| Observation Equation | [[L,l]]               | [[L,l]]                 | [[L,l]]  , [[X,x]]      | [[L,l]]  , [[X,x]]      |
| Function Model       | [[Φ#GM]]              | [[Φ#GM]]                | [[Φ#GM]]                | [[Φ#GM]]                |
| Constraint Model     |                       |                         |                         |                         |
| Design Matrix        |                       | [[Design Matrix#A \|A]] | [[Design Matrix#A \|A]] | [[Design Matrix#A \|A]] |
| Stochastic Model     | [[Σ, P]]              | [[Σ, P]]                | [[Σ, P]]                | [[Σ, P]]                |
| Redundancy           | [[r#Any]]             | [[r#Any]]               | [[r#Any]]               | [[r#Any]]               |
| While                |                       |                         | [[Iter Check#GM]]       | [[Iter Check#GM]]       |
| Observation Equation | [[Observation Eq#Eq]] | [[Observation Eq#GM]]   | [[Observation Eq#GM]]   | [[Observation Eq#GM]]   |
| Object Function      | [[Ω#Eq]]              | [[Ω#GM]]                | [[Ω#GM]]                | [[Ω#L1]]                |
| Normal Euqation      | [[Normal Eq#Eq]]      | [[Normal Eq#Lr]]        | [[Normal Eq#GM]]        | [[Normal Eq#GM]]        |
| Update X,L,v         |                       | [[Update#Lr]]           | [[Update#GM]]           | [[Update#GM]] [[Update#L1]]          |
| Final Check          |                       | [[Final Check#Lr]]      | [[Final Check#NL]]      | [[Final Check#NL]]      |
| end                  |                       |                         |                         |                         |
| Propagation          |                       | [[Propogation LST#Lr]]  | [[Propogation LST#GM]]  | [[Propogation LST#GM]]  |
|                      |                       |                         |                         |                         |

# GM Model with Constraint

|                      | NonLinear               | full Constraint                                         | Partial Trace                                           | G full                                            | g-inverse                                                 | Pseudo                                             |
| -------------------- | ----------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------- | --------------------------------------------------------- | -------------------------------------------------- |
| Observation Equation | [[L,l]]  , [[X,x]]      | [[L,l]]  , [[X,x]]                                      | [[L,l]] , [[X,x]]                                       | [[L,l]] , [[X,x]]                                 | [[L,l]] , [[X,x]]                                         | [[L,l]] , [[X,x]]                                  |
| Function Model       | [[Φ#GM]]                | [[Φ#GM]]                                                | [[Φ#GM]]                                                | [[Φ#GM]]                                          | [[Φ#GM]]                                                  | [[Φ#GM]]                                           |
| Constraint Model     |                         | [[Condition#GM]]                                        | [[Condition#GM]]                                        | [[Condition#GM]]                                  | [[Condition#GM]]                                          | [[Condition#GM]]                                   |
| Design Matrix        | [[Design Matrix#A \|A]] | [[Design Matrix#A \|A]];  [[Design Matrix#Full \|Full]] | [[Design Matrix#A \|A]];  [[Design Matrix#Partial \|B]] | [[Design Matrix#A \|A]];  [[Design Matrix#G \|G]] | [[Design Matrix#A \|A]];  [[Design Matrix#g-inverse \|g]] | [[Design Matrix#A \|A]];  [[Design Matrix#Pseudo]] |
| Stochastic Model     | [[Σ, P]]                | [[Σ, P]]                                                | [[Σ, P]]                                                | [[Σ, P]]                                          | [[Σ, P]]                                                  | [[Σ, P]]                                           |
| Redundancy           | [[r#Any]]               | [[r#Con]]                                               | [[r#Con]]                                               | [[r#Con]]                                         | [[r#Con]]                                                 | [[r#Con]]                                          |
| While                | [[Iter Check#GM]]       | [[Iter Check#GM]]                                       | [[Iter Check#GM]]                                       | [[Iter Check#GM]]                                 | [[Iter Check#GM]]                                         | [[Iter Check#GM]]                                  |
| Observation Equation | [[Observation Eq#GM]]   | [[Observation Eq#GM]]                                   | [[Observation Eq#GM]]                                   | [[Observation Eq#GM]]                             | [[Observation Eq#GM]]                                     | [[Observation Eq#GM]]                              |
| Object Function      | [[Ω#GM]]                | [[Ω#GM]]                                                | [[Ω#GM]]                                                | [[Ω#GM]]                                          | [[Ω#GM]]                                                  | [[Ω#GM]]                                           |
| Normal Euqation      | [[Normal Eq#GM]]        | [[Normal Eq#full]]                                      | [[Normal Eq#Def]]                                       | [[Normal Eq#Def]]                                 | [[Normal Eq#Def]]                                         | [[Normal Eq#Def]]                                  |
| Update X,L,v         | [[Update#GM]]           | [[Update#GM]]                                           | [[Update#GM]]                                           | [[Update#GM]]                                     | [[Update#GM]]                                             | [[Update#GM]]                                      |
| Final Check          | [[Final Check#NL]]      | [[Final Check#NL]]                                      | [[Final Check#NL]]                                      | [[Final Check#NL]]                                | [[Final Check#NL]]                                        | [[Final Check#NL]]                                 |
| end                  |                         |                                                         |                                                         |                                                   |                                                           |                                                    |
| Propagation          | [[Propogation LST#GM]]  | [[Propogation LST#GM]]                                  | [[Propogation LST#GM]]                                  | [[Propogation LST#GM]]                            | [[Propogation LST#GM]]                                    | [[Propogation LST#GM]]                             |
|                      |                         |                                                         |                                                         |                                                   |                                                           |                                                    |


# GH Model
|                      | GH                            | Constraint                                             |
| -------------------- | ----------------------------- | ------------------------------------------------------ |
| Observation Equation | [[L,l]]  , [[X,x]]            | [[L,l]]  , [[X,x]]                                     |
| Function Model       | [[Φ#GH]]                      | [[Φ#GH]]                                               |
| Constraint Model     |                               |                                                        |
| Design Matrix        | [[Design Matrix#GH \| A, J2]] | [[Design Matrix#GH \| A, J2]], [[Design Matrix#G \|G]] |
| Stochastic Model     | [[Σ, P]]                      | [[Σ, P]]                                               |
| Redundancy           | [[r#Any]]                     | [[r#Con]]                                              |
| While                |                               |                                                        |
| Observation Equation | [[Observation Eq#GH]]         | [[Observation Eq#GH]]                                  |
| Object Function      | [[Ω#GH]]                      | [[Ω#GH]]                                               |
| Normal Euqation      | [[Normal Eq#GH]]              | [[Normal Eq#GH-Con]]                                   |
| Update X,L,v         | [[Update#GH]]                 | [[Update#GH]]                                          |
| Final Check          | [[Final Check#GH]]            | [[Final Check#GH]]                                     |
| end                  |                               |                                                        |
| Propagation          | [[Propogation LST#GH]]    | [[Propogation LST#GH-con]]                                 |
|                      |                               |                                                        |




[[S transformation]]
[[Quality Assessment]]









