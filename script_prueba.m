casos_de_prueba
Casos=length(mat_casos(:,1))
LargoCoincidencia=length(mat_casos(1,:))
mat_salida=mat_casos
for i=1:Casos
  [posCoincidencias,coincidencias]=encontrarMejor(vect_ref, mat_casos(i,:))
  vect_parecido=vect_ref(posCoincidencias:LargoCoincidencia+posCoincidencias-1)
  mat_salida(i,:)=vect_parecido
endfor

[fila,columna]=size(mat_salida)
fallos=[]
for i=1:fila
  if mat_salida(i,:)!=mat_salida_ref(i,:)
      fallos=[fallos;i]
  endif
endfor

