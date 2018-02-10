function  ProbClassOutput(a,strFname)
flag = 0;
afields = fieldnames(a);
for idx = 1:length(afields)
    aField = a.(afields{idx});
    strFname1 = strcat(strFname,'.',afields{idx});
    if isstruct(aField)
        ProbClassOutput(aField,strFname1);
    else
        if aField==1
            disp(strFname1);
        end
    end
  
end