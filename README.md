 
# Kindly Notice to friends

This is a public GIthub owned by zhehao Liang(Tom) in TUB, based on lecture taught by [Professor Neitzel](https://www.researchgate.net/profile/Frank-Neitzel)


I work on this only out of my interest and further scientific use. 

It is not allowed to take exams yet.



# What these code can do?

3 mins for solving any problem in Adjustment. Especially the problem in adjustment (TUB) courses.

not only (Linear, non-linear, Total LST, constraint, condition, combined, dash,unknown as measurement, datum,..... anything)..


# How it work

This code make use of [SYMS](https://de.mathworks.com/help/symbolic/syms.html) function in MATLAB to realize automatically calculation.

For any adjustment problem. We always have to following procedure: 

1 Input data including 

- Write Measurement right and its value               (L_: Measurement symbol L_data : Measurement data)
- Write Handwriting Error free point and its value    (Free_: Free error symbol Free_data: Free error data)
- Write Unkown and its value                          (X_: Unknown symbol X_data : Unknown data)

2 Form Function Model                                 (F_: Function Model)

3 Form Stochastic Model.                              (S_LL: Stochastic Model)

4 Define Datum and Constraint Model If needed.        (FB_: Constraint Model)

After that, We have many choices to adjust that. Like GM Model(L1, L2, Linear), GH model, VCE etc,.

And you will have to use a bunch of tools to assess the quality.

But, thanks to this program, you only have to translate your handwriting procedure 1-4 into code, and tell it what question it is.

and even you dont have to construct function model for networks, there are many predefined API and templates for that!

and it will automatically complete all other things for you.


# Where is the Tutorial?
https://px39n.gitbook.io/workspace/




 
