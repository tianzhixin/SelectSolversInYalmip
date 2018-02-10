function flag = choosesolvers(a,sl)
flag = 0;
afields = fieldnames(a);
for idx = 1:length(afields)
    aField = a.(afields{idx});
    
    if isstruct(aField)
        slField = sl.(afields{idx});
        flag = choosesolvers(aField,slField);
    else
        if strcmp(afields{idx},'semicont') == 1
            slField = sl.semivar;
        else
            slField = sl.(afields{idx});
        end
        
        if aField==1
            if slField == 0
                flag = 1;
                break;
            end
        end
    end
    
    if flag == 1
        break;
    end
    



end