function [posCoincidencias,coincidencias] = encontrarMejor(v1,v2)
  l1 = length(v1);
  l2 = length(v2) ; 
  i = 0;
  posCoincidencias = 0;
  coincidencias = 0;
  %para v1 y v2 diferentes de un vector vacio, y v2 menor o igual a v1
  if l1!=0 && l2!=0 && ((l1-l2)>=0);
    for i = 1:l1;
      %si encuentra que el primer numero del v2 coincida con uno de v1 bajo 
      %la condicion de que aun quede espacio de al menos del tamaño de v2 
      %entonces encuentra esa posicion, y solo la primera coincidencia
      if (l2<=length(v1(i:l1)))
      coin_en_esta_pos = coinCant((v1(i:(i+l2-1))),v2);
        if coin_en_esta_pos>coincidencias %si ya encontro un vector con una cioncidencia no se mete porque ya hay una pos de coincidencia, posCoincidencias==0;%el primer elemeto no tenia pos que coincidir, v2(1)==(v1(i))
          posCoincidencias = i;
          coincidencias = coinCant((v1(i:(i+l2-1))),v2);
          %encuentra la cantidad de coincidencias dentro de v1 con tamaño v2
          %a partir de la posicion de la primera coincidencia
        endif
      endif
    endfor
    %si algun vector es vacio, o v2 es mas grande que v1
  elseif l1==0 || l2==0 || (l1-l2)<0;
    coincidencias = -1;
    posCoincidencias = -1;
  endif  
endfunction