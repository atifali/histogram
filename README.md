# A simple MATLAB hyst function!

Function hyst has 2 input arguments, data and nodes, in this order. It has a single return value, counts.

data: is a row or column vector containing real numbers. The number of elements in data is limited only by the capacity of the host computer.

nodes: will be a row or column vector with 2 or more elements, presented in increasing order.

Function hyst will print an error message and return the empty matrix if the given input does not satisfy these two assumptions.

counts: will be a row vector with N − 1 elements, evaluated and returned by hyst. The vector entry counts(k) will be the number of given data values lying in the interval I_k defined above.

Numbers in the vector data that lie outside the long interval [x1, xN) are called outliers. If there are any outliers, function hyst will print a warning message that includes the number of outliers detected.

Function hyst will also produce a plot. The plot itself will show N − 1 rectangles aligned with the coordinate axes: for each k, rectangle number k will capture the (x, y) points satisfying, x values for the kth bin are upto but not including the next bins start value.


