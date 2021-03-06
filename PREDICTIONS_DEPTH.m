function [ps] = PREDICTIONS_DEPTH(t, x2)

    ps = zeros(1,size(x2, 1));
    max_depth = zeros(1,size(x2, 1));
    
    for emotion = 1:length(t),
    %for each tree iterate produce a vector of predictions

        for example = 1:size(x2, 1),
            %for each example walk the tree to give prediction
            depth = 0;
            tree = t{emotion};
            while(~isempty(tree.kids)),
                tree = tree.kids{x2(example,tree.op) + 1};
                depth = depth + 1;
            end
            if (tree.class == 1 && depth > max_depth(example)),
                ps(example) = emotion;
                max_depth(example) = depth;
            end
        end
        
    end
    
end