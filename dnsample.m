function [y, m] = dnsample (x, n, M)
  idx0 = find (n == 0);
  if isempty (idx0)
    error ('O vetor de tempo n deve conter o valor 0.');
  endif
  indices_dz = mod ((n - n (idx0)), M) == 0;
  y = x (indices_dz);
  m = n (indices_dz);
endfunction

