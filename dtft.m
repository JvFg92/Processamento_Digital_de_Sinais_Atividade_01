function [X] = dtft(x, n, w)

  E = exp(-1j * w(:) * n(:).');  % tamanho [length(w), length(n)]
  X = E * x(:);  % resultado é vetor coluna [length(w), 1]
endfunction
