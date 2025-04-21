function [H] = freqresp(b, a, w)
  % Frequency response function from difference equation
  % [H] = freqresp(b,a,w)
  % H = frequency response array evaluated at w frequencies
  % b = numerator coefficient array
  % a = denominator coefficient array (a(1) = 1)
  % w = frequency location array (array of angular frequencies)

  % Inicialize o vetor de resposta em frequência
  H = zeros(size(w));

  % Calcule a resposta em frequência para cada valor de w
  for k = 1:length(w)
    % Calculando o numerador (somatório dos b_m * e^(-jωm))
    num = 0;
    for m = 0:length(b)-1
      num = num + b(m+1) * exp(-1j * w(k) * m);
    end

    % Calculando o denominador (1 + somatório dos α_l * e^(-jωl))
    denom = 1;
    for l = 1:length(a)-1
      denom = denom + a(l+1) * exp(-1j * w(k) * l);
    end

    % Calculando a função de resposta em frequência
    H(k) = num / denom;
  end
endfunction

