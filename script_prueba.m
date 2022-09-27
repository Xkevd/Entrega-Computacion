casos_de_prueba
Casos=length(mat_casos(:,1))
LargoCoincidencia=length(mat_casos(1,:))
mat_salida=[]
for i=1:Casos
[posCoincidencias,coincidencias]=encontrarMejor(vect_ref, mat_casos(i,:))
  if [posCoincidencias==-1 && coincidencias==-1] || [posCoincidencias==0 && coincidencias==0]
    mat_salida=mat_salida
  else
    vect_parecido=vect_ref(posCoincidencias:LargoCoincidencia+posCoincidencias-1)
    mat_salida=[mat_salida ; vect_parecido]
  endif
endfor

[fila,columna]=size(mat_salida)
fallos=[]
for i=1:fila
  for j=1:columna
    if mat_salida(i,j)!=mat_salida_ref(i,j)
      if j==columna
        fallos=[fallos;i]
      endif
    endif
  endfor
endfor

