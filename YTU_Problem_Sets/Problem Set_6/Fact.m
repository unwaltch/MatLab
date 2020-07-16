function fact = Fact(a)
       if (a < 0)
       while a < 0
           fprintf('Error !\n')
           a = input('Enter non-negative intiger: ');
       end
       end
       fact = 1;
       if(a == 0)
           fact = 1;
       else
       for x=1:a
           fact = fact *x;
       
       end
       end

end
