uses crt;
var a,b,c,d,h,x,z,S,pogr: real; 
f:Byte;
procedure cont;
var ch : char;
begin
  repeat
    read(ch);
  until ch = #13;
 
end;

procedure pr1; 
begin 
  c:=((b*b*b*b)/2-2*(b*b)+14*b)-((a*a*a*a)/2-2*(a*a)+14*a);
  writeln('Площадь фигуры = ',c);
  cont;
end;

procedure pr2;
var i,n:integer;
begin
  write('Введите кол-во прямоугольников: ');
  readln(n);
  h:=(b-a)/n;
  writeln('Шаг = ',h);
  x:=a;
  S := 1;
  for i:=1 to n do begin
    z:=h*((2*(x*x*x))+((-1)*x)+14);
    S:=S+z;
    x:=x+h;
  end;
  writeln('Площадь криволинейной трапеции: ',S);
  cont;
end;

procedure pr3;
begin
  pogr:=c-s;
  write('Погрешность = ',pogr);
  cont;
end;

procedure pr4;
begin
  writeln('Введите пределы интегрирования: ');
  readln(a,b);
  cont;
end;

begin
  repeat
    ClrScr;
    writeln(a, ' ' , b);
    Writeln('Площадь криволинейной трапеции с помощью интеграла - 1');
    writeln('Площадь криволинейной трапеции с помощью метода левых прямоугольников - 2');
    Writeln('Вычислить погрешность - 3');
    Writeln('Введите значения для пределов - 4');
    Writeln('Для выхода из программы - 0');
    write('Выберите программу(введите цифру): ');
    readln(f);
    case f of 
      1: pr1;
      2: pr2;
      3: pr3;
      4: pr4;
    end;
  until f=1;
end.