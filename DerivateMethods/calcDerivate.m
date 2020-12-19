function null = calcDerivate(f1,f2,d11,d21,d12,d22)
    h = [0.1,0.01,0.001];
    %Forward derivate F1
    %============================
    yf11 = [];
    yf12 = [];
    yf13 = [];
    y2 = [];
    for x =-5:0.5:5
       dx1ad_f11 = dx1adelante(f1,h(1),x);
       dx1ad_f12 = dx1adelante(f1,h(2),x);
       dx1ad_f13 = dx1adelante(f1,h(3),x);
       yf11 = [yf11;dx1ad_f11];
       yf12 = [yf12;dx1ad_f12];
       yf13 = [yf13;dx1ad_f13];
       y2 = [y2;d11(x)];
    end
    e_h1 = calcError(yf11,y2);
    e_h2 = calcError(yf12,y2);
    e_h3 = calcError(yf12,y2);
    disp("Forward Derivate Errors h1,h2,h3 for F1")
    disp("==================")
    disp(e_h1+","+e_h2+","+e_h3);
    %Backward derivate F1
    %============================
    yf11 = [];
    yf12 = [];
    yf13 = [];
    y2 = [];
    for x =-5:0.5:5
       dx1at_f11 = dx1atras(f1,h(1),x);
       dx1at_f12 = dx1atras(f1,h(2),x);
       dx1at_f13 = dx1atras(f1,h(3),x);
       yf11 = [yf11;dx1at_f11];
       yf12 = [yf12;dx1at_f12];
       yf13 = [yf13;dx1at_f13];
       y2 = [y2;d11(x)];
    end
    e_h1 = calcError(yf11,y2);
    e_h2 = calcError(yf12,y2);
    e_h3 = calcError(yf12,y2);
    disp("Backward Derivate Errors h1,h2,h3 for F1")
    disp("==================")
    disp(e_h1+","+e_h2+","+e_h3);
    %Center Derivate F1
    %============================
    yf11 = [];
    yf12 = [];
    yf13 = [];
    y2 = [];
    for x =-5:0.5:5
       dx1cen_f11 = dx2centro(f1,h(1),x);
       dx1cen_f12 = dx2centro(f1,h(2),x);
       dx1cen_f13 = dx2centro(f1,h(3),x);
       yf11 = [yf11;dx1cen_f11];
       yf12 = [yf12;dx1cen_f12];
       yf13 = [yf13;dx1cen_f13];
       y2 = [y2;d11(x)];
    end
    e_h1 = calcError(yf11,y2);
    e_h2 = calcError(yf12,y2);
    e_h3 = calcError(yf12,y2);
    disp("Middle Derivate Errors h1,h2,h3 for F1")
    disp("==================")
    disp(e_h1+","+e_h2+","+e_h3);
    %Second derivate F1
    %============================
    yf11 = [];
    yf12 = [];
    yf13 = [];
    y2 = [];
    for x =-5:0.5:5
       dx1sec_f11 = dx2second(f1,h(1),x);
       dx1sec_f12 = dx2second(f1,h(2),x);
       dx1sec_f13 = dx2second(f1,h(3),x);
       yf11 = [yf11;dx1sec_f11];
       yf12 = [yf12;dx1sec_f12];
       yf13 = [yf13;dx1sec_f13];
       y2 = [y2;d21(x)];
    end
    e_h1 = calcError(yf11,y2);
    e_h2 = calcError(yf12,y2);
    e_h3 = calcError(yf12,y2);
    disp("Second Derivate Errors h1,h2,h3 for F1")
    disp("==================")
    disp(e_h1+","+e_h2+","+e_h3);
    
    hold on
    x = -5:0.5:5;
    figure(1)
    title("Second Derivate for F2")
    plot(x,yf11,'g--','LineWidth',2);
    plot(x,yf12,'r--','LineWidth',2);
    plot(x,yf13,'k--','LineWidth',2);
    plot(x,y2,'b--','LineWidth',1.5);
    hold off
%===========================================================================
  %Forward derivate f2
    %============================
    yf21 = [];
    yf22 = [];
    yf23 = [];
    y2 = [];
    for x =-5:0.5:5
       dx1ad_f21 = dx1adelante(f2,h(1),x);
       dx1ad_f22 = dx1adelante(f2,h(2),x);
       dx1ad_f23 = dx1adelante(f2,h(3),x);
       yf21 = [yf21;dx1ad_f21];
       yf22 = [yf22;dx1ad_f22];
       yf23 = [yf23;dx1ad_f23];
       y2 = [y2;d12(x)];
    end
    e_h1 = calcError(yf21,y2);
    e_h2 = calcError(yf22,y2);
    e_h3 = calcError(yf22,y2);
    disp("Forward Derivate Errors h1,h2,h3 for F2")
    disp("==================")
    disp(e_h1+","+e_h2+","+e_h3);
    %Backward derivate f2
    %============================
    yf21 = [];
    yf22 = [];
    yf23 = [];
    y2 = [];
    for x =-5:0.5:5
       dx1at_f21 = dx1atras(f2,h(1),x);
       dx1at_f22 = dx1atras(f2,h(2),x);
       dx1at_f23 = dx1atras(f2,h(3),x);
       yf21 = [yf21;dx1at_f21];
       yf22 = [yf22;dx1at_f22];
       yf23 = [yf23;dx1at_f23];
       y2 = [y2;d12(x)];
    end
    e_h1 = calcError(yf21,y2);
    e_h2 = calcError(yf22,y2);
    e_h3 = calcError(yf22,y2);
    disp("Backward Derivate Errors h1,h2,h3 for F2")
    disp("==================")
    disp(e_h1+","+e_h2+","+e_h3);
    %Center Derivate f2
    %============================
    yf21 = [];
    yf22 = [];
    yf23 = [];
    y2 = [];
    for x =-5:0.5:5
       dx1cen_f21 = dx2centro(f2,h(1),x);
       dx1cen_f22 = dx2centro(f2,h(2),x);
       dx1cen_f23 = dx2centro(f2,h(3),x);
       yf21 = [yf21;dx1cen_f21];
       yf22 = [yf22;dx1cen_f22];
       yf23 = [yf23;dx1cen_f23];
       y2 = [y2;d12(x)];
    end
    e_h1 = calcError(yf21,y2);
    e_h2 = calcError(yf22,y2);
    e_h3 = calcError(yf22,y2);
    disp("Middle Derivate Errors h1,h2,h3 for F2")
    disp("==================")
    disp(e_h1+","+e_h2+","+e_h3);
    %Second derivate f2
    %============================
    yf21 = [];
    yf22 = [];
    yf23 = [];
    y2 = [];
    for x =-5:0.5:5
       dx1sec_f21 = dx2second(f2,h(1),x);
       dx1sec_f22 = dx2second(f2,h(2),x);
       dx1sec_f23 = dx2second(f2,h(3),x);
       yf21 = [yf21;dx1sec_f21];
       yf22 = [yf22;dx1sec_f22];
       yf23 = [yf23;dx1sec_f23];
       y2 = [y2;d22(x)];
    end
    e_h1 = calcError(yf21,y2);
    e_h2 = calcError(yf22,y2);
    e_h3 = calcError(yf23,y2);
    disp("Second Derivate Errors h1,h2,h3 for F2")
    disp("==================")
    disp(e_h1+","+e_h2+","+e_h3);
    
    
%==========================================
%hold on
%x = -5:0.5:5
%figure(1)
%title("")
%plot(x,y)
%plot(x,y2)
%hold off
end