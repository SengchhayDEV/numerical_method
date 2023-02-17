function ModFalsePos(xl, xu, es, imax, es, iter, ea)
iter = 0
fl = f(xl)
fu = f(xu)
DO 
xrold = xr
xr = xu - fu * (xl - xu) / (fl - fu)
fr = f(xr)
iter = iter + 1
if xr <> 0 THEN
    ea = Abs((xr - xrold)/xr) * 100
end 
test = fl * fr
if test < 0 
    xu = xr
    fu = f(xu)
    iu = 0
    il = il + 1
    if il >= 2 
        fl = fl/2
    else if test > 0 
            xl = xr
            fl = f(xl)
            il = 0
            iu = iu + 1
            if iu >= 2 
                fu = fu/2
            else
                ea = 0
            end 
                if ea < es | iter >= imax
                end DO 
                ModFalsePos = xr
            end
        