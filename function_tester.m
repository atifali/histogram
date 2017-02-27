close all;
clc;
sampleTest = randn(1,500);
nodes = linspace(-2,2,21);
counts = hyst(sampleTest, nodes)