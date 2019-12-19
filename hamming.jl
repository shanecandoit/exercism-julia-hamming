# distance
function distance(s1::AbstractString, s2::AbstractString)

    if lastindex(s1) != lastindex(s2)
        # return 0
        throw(ArgumentError("Expecting same length strings"))
    end

    diff = 0
    for i = firstindex(s1):lastindex(s1)
        c1 = s1[i]
        c2 = s2[i]
        if c1 != c2 
            diff += 1
        end
    end

    return diff
end
