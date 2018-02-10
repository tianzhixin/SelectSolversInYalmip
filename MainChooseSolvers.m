% SelectSolversInYalmip version 1.0 10/02/2018
% 
% This program aims to show applicable solvers for your problem

%% Problem setup

clear
clc

load ProbClass.mat
run definesolvers.m
AllSolvers = ans;
ApSolvers = cell(length(AllSolvers),1);
t = 1;

%% Choose solvers

for i = 1:length(AllSolvers)
    flag = choosesolvers(ProblemClass,AllSolvers(i));
    if flag == 0
        ApSolvers{t} = AllSolvers(i).tag;
        t = t+1;
    end
end

%% Display solvers in command window

Index = find(~cellfun(@isempty,ApSolvers));
DispSolvers = ApSolvers(Index);
disp('Applicable solvers:')
for i = 1:length(DispSolvers)
    if i==1
        disp(DispSolvers(i))
    else
        if ~strcmp(DispSolvers(i),DispSolvers(i-1))
            disp(DispSolvers(i))
        end
    end
end
            