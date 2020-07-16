function [x1,x2,flag] = Quad(a,b,c)
       if (a==0 && b==0 && c~=0)
           flag=('No Solution !');
           x1=('None');
           x2=('None');
       elseif (a==0 && b~=0)
           flag=('One Real Root !');
           x1=-c/b;
           x2=-c/b;
       elseif(a~=0)
           flag=('Two Real or Complex Roots !');
           x1=(-b+sqrt((b^2)-4*a*c))/2*a;
           x2=(-b-sqrt((b^2)-4*a*c))/2*a;
       else 
           flag=('Any Solution !');
           x1=('NaN');
           x2=('NaN');
       end
end
