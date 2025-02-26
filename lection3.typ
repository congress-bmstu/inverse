#import "notes.typ": *

= Лекция 3.

#example[
  $
    A=mat(1,2;2,13),quad arrow(x)=vec(1,-1),quad arrow(b)=vec(-1,-11),quad arrow(c)=vec(0,-10),quad A arrow(x)=arrow(c)
  $
  $
    mat(
      1,2,0;
      2,13,-10;
      augment: #(-1)
    ) ~
    mat(
      1,2,0;
      0,9,-10;
      augment: #(-1)
    )
    quad x=-10 / 9, space y=20 / 9
  $

  #todo[_фотография от 26 февраля 2025, 10:39_]
]

#example[
  $
    A=mat(1,2;3,4;),quad arrow(x)=vec(1,-1),quad arrow(b)=A arrow(x)=vec(-1,-1)
  $
  Вносим погрешность в правую часть: $arrow(b)_delta=vec(-0.9,-0.9)$. Тогда система примет вид:
  $
    mat(1,2;3,4;)vec(x,y)=vec(-0.9,-0.9), quad delta=||vec(0.1,0.1)||=0.1sqrt(2)
  $
  Решаем методом Тихонова, так как $A$ несимметричная:
  $
    A^T dot A = mat(1,3;2,4)mat(1,2;3,4)=mat(10,14;14,20)
  $
  Обозначим $A^T A = B$. Рассмотрим $B+alpha E=mat(10+alpha,14;14,20+alpha)$
  $
    (B+alpha E)vec(x,y)=A^T arrow(b)_delta=mat(1,2;3,4)vec(-0.9,-0.9)=vec(-3.6,-5.4)
  $
  Получили систему $mat(10+alpha,14;14,20+alpha)vec(x_alpha,y_alpha)=vec(-3.6,-5.4)$, решим по Крамеру:
  $
    Delta =alpha^2+30alpha+4,quad Delta_1=-3.6alpha+3.6,quad Delta_2=-5.4alpha-3.6,\
    x_alpha=Delta_1 / Delta=(-3.6alpha+3.6) / (alpha^2+30alpha+4),\
    y_alpha=Delta_2 / Delta=(-5.4alpha-3.6) / (alpha^2+30alpha+4),\
  $
  Считаем невязку:
  $
    mat(1,2;3,4;)vec(x_alpha,y_alpha)=
    1 / (alpha^2+30alpha+4)vec(-14.4alpha-3.6,-32.4alpha-3.6)equiv vec(-0.9,-0.9)
  $
  $
    1 / (alpha^2+30alpha+4) vec(
      -14.4alpha-3.6+0.9(alpha^2+30alpha+4),
      -32.4alpha-3.6+0.9(alpha^2+30alpha+4)
    ) = 1 / (alpha^2+30alpha+4)vec(
      0.9alpha^2+12.6alpha,
      0.9alpha^2-5.4alpha
    )
  $
  Нужно вычислить норму и приравнять к погрешности:
  $
    (0.9alpha) / (alpha^2+30alpha+4) sqrt((alpha+14)^2+(alpha-6)^2)=(0.9alpha) / (alpha^2+30alpha+4)sqrt(2alpha^2+16alpha+232)equiv 0.1sqrt(2)
  $
  $
    alpha_1=0.059, quad alpha_2=-3.69 - 9.63 dot i, quad alpha_3=-3.69 + 9.63 dot i
  $
  Выбираем положительное действительное $alpha_1$, тогда:
  $
    x_alpha=(-3.6alpha+3.6) / (alpha^2+30alpha+4)approx 0.587,\
    y_alpha=(-5.4alpha-3.6) / (alpha^2+30alpha+4)approx -0.679,
  $
  Заметим, что исходное точное решение было: $arrow(x)=vec(1,-1)$
]

#example[
  Решим _методом квадратного корня_
  $
    A=mat(1+alpha,2;2,13+alpha)vec(x,y)=vec(0,-10), quad alpha=1.37
  $
  $
    A=mat(2.37,2;2,14.37),quad B=mat(b_(11),b_(12);0,b_(22))
  $
  #set enum(numbering: "Этап 1.")
  + $B^T B = mat(b_(11)^2, b_(11)b_(12); b_(11)b_(12), b_(22)^2)$
  $ B^T B vec(x,y) = vec(0,-10) $
  $ B^T vec(ъ, ь) = vec(0,-10) $
  $
    cases(b_(11)ъ=0, b_(12)ъ+b_(22)ь=-10), quad b_(11)^2=2.37,quad b_(11)b_(12)=2,quad b_(12)^2+b_(22)^2=14.37 => \
    => b_(11)=1.54, quad b_(12)=1.3, quad b_(22)=3.56 =>\
    cases(1.54ъ=0, 1.3ъ+3.56ь=-10) => cases(ъ=0, ь=-2.8)
  $

  _у доски_
]
