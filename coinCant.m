function cc = coinCant(v1,v2)
  largo1 = length(v1)
  largo2 = length(v2)
  cc = 0
  if (largo1 != largo2) || (largo1 == 0) || (largo2 == 0)
    cc = -1
  else
    for i = 1:largo1
      if v1(i) == v2(i)
        cc += 1
      endif
    endfor
  endif
endfunction