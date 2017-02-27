function counts = hyst(data,nodes)

% Name: Atif Shoukat Ali 
% Student# 45538139
% MECH 2 Section D

% input checking: detects whether the input vector nodes has 2 or more elements or not
if length(nodes) < 2    
    display('WARNING: nodes has less than 2 elements.');
    counts = [];
    
        
% input checking: detects whether the input vector nodes has an ascending order or not
elseif norm(nodes - sort(nodes)) ~= 0
    display('WARNING: elements in nodes not in ascending order.');
    counts = [];
    
        
% counting: counts the number of data values for each bin & no. of outliers
else
    counts = zeros(1, length(nodes)-1);
    outliers = 0; 
    for i = 1:length(data)
        x = data(i);
        if x < nodes(1) || x >= nodes(end)
            outliers = outliers + 1;
        else
            for j = 1:length(counts)
                if x >= nodes(j) && x < nodes(j+1)
                counts(j) = counts(j) + 1;
                end
            end
        end
    end
    % outlier warning: warns the user about the no. of outlier values if there are any    
    if outliers > 0
        display(sprintf('%d outlier values in %s data.', outliers, inputname(1)));
    end
    % plotting: creates a histogram plot for the appropriate bin size and counts    
    figure('Name', 'Histogram Plot');
    for k = 1:length(counts)
        fill([nodes(k) nodes(k) nodes(k+1) nodes(k+1)], [0 counts(k) counts(k) 0], 'k');
        hold on;
    end
    title(sprintf('Histogram for %s values [ALI]', inputname(1)));
    xlabel('Data Value');
    ylabel('Count');
    hold off;
        
end