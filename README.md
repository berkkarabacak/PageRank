Read Assignment please

We implement a basic version of PageRank algorithm. First, we implement the graph
below by using the sparse matrix representation to show the connections between the
websites.
Then we find the importance matrix by replacing the entries in the connectivity matrix with
division of one with the sum of the corresponding column in the connectivity matrix.
For the first question of the first problem, the
importance matrix is shown at left .
After that, we set the initial vector, and define the tolerance value as 1/1000. We compute
the next vector according to the equation ‘A*x = x’ . Then, the loop starts with the condition
of the difference between the previous vector and the next vector should be bigger than
the tolerance value. At each step, the next vector we have found becomes the previous
vector and computes the next vector. After the condition of the loop is no longer satisfied,
it normalizes the final vector, and displays it. Finally, for the comparison, we have used the
‘eigs()’ function which is a built­in matlab function to find the eigenvectors of the
importance matrix. After normalizing the eigenvector we have seen that the values are
equal. For the first question of the first problem the results are shown below.For the second question of the first problem, we remove the link from Marmara to
Boğaziçi, so the importance matrix is changed.
The new importance matrix is shown at left.
After changing the importance matrix, the whole process is repeated, and the results are
shown below.As an answer to the third question of the first problem, we add a link from Marmara to itself
to make Marmara the most important site, so importance matrix is changed again.
The new importance matrix is shown at left.
After changing the importance matrix, the whole process is repeated again, and the results
are shown below.
Problem 2
We implement a function called ‘mygauss’ which finds the solution x of the system A*x = b
by using Gaussian Elimination Method with Scaled Column Pivoting. Function takes two
inputs as ‘A’ and ‘b’. ‘A’ is an n­by­n matrix and ‘b’ is a vector of size n. The function gives
two outputs ‘singular’ and ‘x’ . ‘singular’ indicates whether A is nonsingular or not and ‘x’ is
the solution of the system.
Firstly, function creates an augmented matrix out of A and b. Then, it finds the scale factor
for each row by comparing each entry at each row, and keeps the scale factors and their
row numbers in matrices. After that, it finds the greatest ratio and changes the rows
according to that ratio, and repeats this process for all rows. Finally, the function does
back substitution and at this part it starts from the bottom and goes to the top of the matrix.
The results of four run are shown below.First Run Second Run
Third Run Fourth RunProblem 3
In this problem we implemented a curve drawing program.To draw smooth curves we used
natural cubic splines.
We start program by taking random points from user with MATLAB® built­in ginput()
function.Then we assign their coordinates to x and y matrices.Next we create an array
called t which acts like time axis in our function.After that we pass these x and y values to
algorithm for finding coefficients.In the end we get 4 coefficients(a2x,b2x...,a2y,b2y...) for
each x and y matrices.With these coefficients,we create our cubic polynomial.
At last stage of program,we plot the curve.We evaluate our polynomials at different time
values between 1 and number of points.We used “10 x number of points” time value in our
program.By increasing “10” one can easily get a smoother curve.Finally,we plot our curve
with the points that we get from evaluating our polynomials.
