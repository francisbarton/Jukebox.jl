# my version of https://dplyr.tidyverse.org/reference/consecutive_id.html
function consecutive_id(v::Vector)
    (a, rest) = IterTools.peel(eachindex(v))
    cumsum(pushfirst!([v[i] == v[i - 1] ? 0 : 1 for i in rest], a))
end;
