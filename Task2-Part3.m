clc, clear, close all
rng default
global initial_flag
%% Genetic Algotithm Optimization 15 iterations
initial_flag = 0;
options = optimoptions('ga','PlotFcn',{@gaplotbestf,@gaplotdistance});
for i=1:15
 initial_flag = 0;
 %Func6, Dim2
 [Func6_Dim2_Minima, Func6_Dim2_Fitness] = ga(@(x)benchmark_func(x,6),2,options);

 %Func6, Dim10
 [Func6_Dim10_Minima,Func6_Dim10_Fitness] =ga(@(x)benchmark_func(x,6),10,options);
 
 %Func9, Dim2
 [Func9_Dim2_Minima, Func9_Dim2_Fitness] = ga(@(x)benchmark_func(x,9),2,options);
 
 %Func9, Dim10
 [Func9_Dim10_Minima, Func9_Dim10_Fitness] =ga(@(x)benchmark_func(x,9),10,options);
 
 
 Func6_Dim2_Fitness_Collection(i) = Func6_Dim2_Fitness
 Func6_Dim10_Fitness_Collection(i) = Func6_Dim10_Fitness
 Func9_Dim2_Fitness_Collection(i) = Func9_Dim2_Fitness
 Func9_Dim10_Fitness_Collection(i) = Func9_Dim10_Fitness
end
%% GA 15 iteration measures
%Func 6, Dim2
F6D2_max = max(Func6_Dim2_Fitness_Collection)
F6D2_min = min(Func6_Dim2_Fitness_Collection)
F6D2_mean = mean(Func6_Dim2_Fitness_Collection)
F6D2_std = std(Func6_Dim2_Fitness_Collection)

%Func 6, Dim10
F6D10_max = max(Func6_Dim10_Fitness)
F6D10_min = min(Func6_Dim10_Fitness)
F6D10_mean = mean(Func6_Dim10_Fitness)
F6D10_std = std(Func6_Dim10_Fitness)

%Func 9, Dim2
F9D2_max = max(Func9_Dim2_Fitness)
F9D2_min = min(Func9_Dim2_Fitness)
F9D2_mean = mean(Func9_Dim2_Fitness)
F9D2_std = std(Func9_Dim2_Fitness)

%Func 9, Dim10
F9D10_max = max(Func9_Dim10_Fitness)
F9D10_min = min(Func9_Dim10_Fitness)
F9D10_mean = mean(Func9_Dim10_Fitness)
F9D10_std = std(Func9_Dim10_Fitness)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Particle Swarm Optimization 15 Iterations
initial_flag = 0;
options = optimoptions('particleswarm','PlotFcn',{@pswplotbestf});
for i=1:15
 initial_flag = 0;
 %Func6, Dim2
 [Func6_Dim2_Minima, Func6_Dim2_Fitness] = particleswarm(@(x)benchmark_func(x,6),2,options);

 %Func6, Dim10
 [Func6_Dim10_Minima,Func6_Dim10_Fitness] =particleswarm(@(x)benchmark_func(x,6),10,options);
 
 %Func9, Dim2
 [Func9_Dim2_Minima, Func9_Dim2_Fitness] = particleswarm(@(x)benchmark_func(x,9),2,options);
 
 %Func9, Dim10
 [Func9_Dim10_Minima, Func9_Dim10_Fitness] =particleswarm(@(x)benchmark_func(x,9),10,options);
 
 
 Func6_Dim2_Fitness_Collection(i) = Func6_Dim2_Fitness
 Func6_Dim10_Fitness_Collection(i) = Func6_Dim10_Fitness
 Func9_Dim2_Fitness_Collection(i) = Func9_Dim2_Fitness
 Func9_Dim10_Fitness_Collection(i) = Func9_Dim10_Fitness
end
%% PS 15 iteration measures
%Func 6, Dim2
F6D2_max = max(Func6_Dim2_Fitness_Collection)
F6D2_min = min(Func6_Dim2_Fitness_Collection)
F6D2_mean = mean(Func6_Dim2_Fitness_Collection)
F6D2_std = std(Func6_Dim2_Fitness_Collection)

%Func 6, Dim10
F6D10_max = max(Func6_Dim10_Fitness)
F6D10_min = min(Func6_Dim10_Fitness)
F6D10_mean = mean(Func6_Dim10_Fitness)
F6D10_std = std(Func6_Dim10_Fitness)

%Func 9, Dim2
F9D2_max = max(Func9_Dim2_Fitness)
F9D2_min = min(Func9_Dim2_Fitness)
F9D2_mean = mean(Func9_Dim2_Fitness)
F9D2_std = std(Func9_Dim2_Fitness)

%Func 9, Dim10
F9D10_max = max(Func9_Dim10_Fitness)
F9D10_min = min(Func9_Dim10_Fitness)
F9D10_mean = mean(Func9_Dim10_Fitness)
F9D10_std = std(Func9_Dim10_Fitness)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%