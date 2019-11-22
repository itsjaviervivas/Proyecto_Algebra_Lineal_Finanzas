clean = load('clean_07.txt');
noise = load('noise_07.txt');

s = 5;
for c = 1 :s 
    r = 0.1*c; % Constante 0<r<1
    p = 1000; % p de Ax = y
    n = 5000; % n
    y = clean(1:p);
    
    senal_ruidosa = clean+noise*r;% esta es la se?al ruidosa
    columna = senal_ruidosa(1:p);
    fila = senal_ruidosa(p+1:length(senal_ruidosa));
    A = hankel(columna,fila); %Matriz de Hankel
    x = (A\y); % resuelve el sistemas de ecuaciones linelaes
    y3 = A*x; % se filtra la senal_ruidosa
   
    

%
    subplot(2,1,1); 
    plot(clean); % grafica del sonido limpio
    title('grafica de clean');
    subplot(2,1,2);
    plot(y3); % grafica de la matriz resultante de A*x
    title('grafica de A*x');
  
    clean_gph = plot(y);  % grafica del sonido limpio
    hold on; % sobre puesta a la
    x_gph = plot(x); % grafica del filtro
    legend('clean', 'x'); % titulos
    hold off;
%

  
    fprintf('hio');
end