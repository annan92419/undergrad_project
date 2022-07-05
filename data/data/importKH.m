function knusthostels = importKH(filename, dataLines)
%IMPORTFILE Import data from a text file
%  KNUSTHOSTELS = IMPORTFILE(FILENAME) reads data from text file
%  FILENAME for the default selection.  Returns the data as a table.
%
%  KNUSTHOSTELS = IMPORTFILE(FILE, DATALINES) reads data for the
%  specified row interval(s) of text file FILENAME. Specify DATALINES as
%  a positive scalar integer or a N-by-2 array of positive scalar
%  integers for dis-contiguous row intervals.
%
%  Example:
%  knusthostels = importfile("/home/annanjesse/Documents/THESIS/Project_Main/data/knust_hostels.csv", [2, Inf]);
%
%  See also READTABLE.
%
% Auto-generated by MATLAB on 05-Jul-2021 23:53:59

%% Input handling

% If dataLines is not specified, define defaults
if nargin < 2
    dataLines = [2, Inf];
end

%% Set up the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 18);

% Specify range and delimiter
opts.DataLines = dataLines;
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["hostel", "location", "grade", "rank", "beds", "study_room", "tv_room", "security", "food_joint", "ext_power", "ac", "proximity", "post_code", "latitude", "longitude", "price2018", "price2019", "price2020"];
opts.VariableTypes = ["categorical", "categorical", "double", "categorical", "double", "categorical", "categorical", "categorical", "categorical", "categorical", "categorical", "double", "categorical", "double", "double", "double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, ["hostel", "location", "rank", "study_room", "tv_room", "security", "food_joint", "ext_power", "ac", "post_code"], "EmptyFieldRule", "auto");

% Import the data
knusthostels = readtable(filename, opts);

end