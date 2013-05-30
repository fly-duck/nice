%Please change the include paths to suit your system (if necessary)

eigen_include_path = '/usr/local/include';
otl_include_path = '../../libOTL/';
otl_library_path = '../../../build/libOTL.a';

file_list = {'createSTORKGP.cpp', ...
    'destroySTORKGP.cpp', ...
    'updateSTORKGP.cpp', ...
    'trainSTORKGP.cpp', ...
    'predictSTORKGP.cpp', ...
    'resetSTORKGP.cpp', ...
    'saveSTORKGP.cpp', ...
    'loadSTORKGP.cpp'};

mex_cmd = {'mex '};

for i=1:length(file_list)
    cmd_string = strcat(mex_cmd, file_list{i}, {' '}, otl_library_path, ...
        ' -I', otl_include_path, ...
        ' -I', eigen_include_path);
    disp(cmd_string{1});
    eval(cmd_string{1});
    %mex(cmd_string)
end

