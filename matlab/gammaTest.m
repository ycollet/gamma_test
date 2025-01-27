function [A,B]=gammatest(dataF,dataR,P)

%GammaTest
%retourne B estimation de la variance du bruit et A gradient pour un ensemble de d'essais
%par r�ponse et pour un nombre de prototypes fix�
%ecrite par A.Schmied le 29/11/04

%dimension de l'espace
temp0=size(dataF);
temp1=size(dataR);
if(P>=temp0(1,1))
    error('trop de prototypes pour le nombre d essais')
end;
%normalisation des donnees
% DataF = som_normalize(dataF,'var') ;
%DataR= som_normalize(dataR,'var');


%calcule des distances
d=som_eucdist2(dataF, dataF);
for(i=1:temp1(1,2))
    
    clear dy
    dy=som_eucdist2(dataR(:,i), dataR(:,i));
    for(j=1:temp0(1,1))
        [dnntemp,indntemp]=sort(d(j,:));
        dnn(j,1:P)=dnntemp(2:P+1);
        indn(j,1:P)=indntemp(2:P+1);
        dnny(j,1:P)=dy(j,indn(j,1:P));
    end;
    dn=sum(dnn(:,:),1)./temp0(1,1);
    dn=dn';
    dny=sum(dnny(:,:),1)./(2*temp0(1,1));
    dny=dny';
    [p0] = polyfit(dn,dny,1);
%             f = polyval(p0,dn);
%             figure
%             plot(dn,dny,'o',dn,f,'-')
    A(i)=(p0(2));
    B(i)=(p0(1));
    
end;



