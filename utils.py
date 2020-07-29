
def delete_substr(in_str, substrList):
    for in_substr in substrList:
        while(in_str.find(in_substr)!=-1):
            start_loc = in_str.find(in_substr)
            len_substr = len(in_substr)
            in_str = in_str[:start_loc] + in_str[start_loc + len_substr:]
    return in_str
