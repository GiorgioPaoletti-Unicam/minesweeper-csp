int: square_size ;
set of int: square_range = 1..square_size ;
set of int: mine_range = -1..8 ; % The negative value has been used to represent the Mine
set of int: input_range = -1..0 ;

array [1..square_size, 1..square_size] of input_range: in_mine_pos ;
array [1..square_size, 1..square_size] of var mine_range: minesweeper ;

%include "data.dzn" ;

constraint forall(i, j in square_range )(
  if in_mine_pos [i,j] != -1 then 
    minesweeper[i,j] = count(k, w in -1..1)(i+k in square_range /\ j+w in square_range /\ in_mine_pos[i+k,j+w] == -1)
  else
    minesweeper[i,j] = -1
  endif
) ;

solve satisfy ;

output [
if show(minesweeper[i,j]) == "-1" then "M" else show(minesweeper[i,j]) endif ++ " " ++
if j == square_size then "\n" else " " endif |
i, j in square_range
] ;