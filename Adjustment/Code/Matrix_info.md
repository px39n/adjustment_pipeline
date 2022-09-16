```
A=[-9 -10 -7 -1 -8;
   -3 5 -5 8 3; 
   8 0 8 -8 0;
   -16 0 -10 16 6;
   3 8 0 5 5;
   -13 2 -7 15 8;
   4 2 10 -2 8;
   15 8 4 -7 -3;
   2 6 0 4 4;
   7 2 -1 -5 -6];
info=matrix_info(A);
[rank,def,N,det,eigvec,eigval,N_minus]=info.Get_All(); 
info.rank
```

[[Matrix_info]]