function [ examples, binary_targets ] = FILTER( examples_i, best_attribute, u, binary_targets_i )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    examples = []; binary_targets = [];
    for i = 1:size(examples_i, 1)
        if examples_i(i, best_attribute) == u
            examples = [examples; examples_i(i, :)];
            binary_targets = [binary_targets, binary_targets_i(i)];
        end
    end
end

