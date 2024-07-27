%loads given files 
load AFM_tip_1.mat
load AFM_tip_2.mat

%runs function edgeDetect on given file
[x,y] = edgeDetect(AFM_tip_1,500);

figure               % create a new figure window 
  
image(AFM_tip_1)     % plot AFM probe tip image 
colormap(gray(1024)) % specify gray colormap with 1024 discriminations 
cb = colorbar;       % add a color bar with label 
ylabel(cb,'Pixel value') 
 
hold on  
plot(y,x,'y.')   % overlay edge indices in yellow 
hold off 


%runs function edgeDetect on given file
[x1,y1] = edgeDetect(AFM_tip_2,500);

figure               % create a new figure window 
  
image(AFM_tip_2)     % plot AFM probe tip image 
colormap(gray(1024)) % specify gray colormap with 1024 discriminations 
cb = colorbar;       % add a color bar with label 
ylabel(cb,'Pixel value') 
 
hold on  
plot(y1,x1,'y.')   % overlay edge indices in yellow 
hold off 
