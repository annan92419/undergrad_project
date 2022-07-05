
function hostels_new = toDummy(hostels_old)
% toDummy - transforms categorical features to dummy variables
% using each unique data (n-1) as a column to represent a new column
% of dummy(binary) variables.
% ps: (n-1) unique data because we want to avoid the dummy variable trap

    top = hostels_old(:,1:5); bottom = hostels_old(:,8:end);
    b = hostels_old.beds;
    p = hostels_old.post_code;
    
    b = categorical(b);
    b = table(b);
    b = onehotencode(b);
    b = b(:,1:end-1);
    
    p = categorical(p);
    p = table(p);
    p = onehotencode(p);
    p = p(:,1:end-1);
    
    hostels_new = [top b p bottom];

end

