
function hostels_new = enCode(hostels_old)
% enCode - converts binary data to an array of dummy variables
% using one-hot-encoding technique to convert all binary
% columns from the table to dummy variables while avoiding
% the dummy variable trap

    cat_table = hostels_old(:,1:5);
    hostels_old = hostels_old(:,6:end);
    
    newtable = table();
    for i = 1:size(cat_table,2)
        ec = categorical(table2array(cat_table(:,i)));
        ec = table(ec);
        ec = onehotencode(ec);
        newtable = [newtable ec(:,2)];
        for j = 1:size(newtable,2) % 1
            names = ["study_room" "tv_room" "security" "ext_power" "ac"];
            newtable.Properties.VariableNames(j) = names(j);
        end
    end
    
    hostels_new = [newtable hostels_old];

end

