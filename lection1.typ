#import "notes.typ": *

= Лекция 1.

== Решение СЛАУ. Оценка решений

$ A arrow(x) = arrow(b) $
$ tilde(arrow(x)) - "прибл" $

Вектор невязки:
$ A tilde(arrow(x)) - arrow(b) $
Невязка:
$ rho = || A tilde(arrow(x)) - arrow(b) || $

Нормы:
- $||arrow(x)||_2=sqrt(sum x_i^2)$
- $||arrow(x)||_1=limits(sum)^n_i |x_i|$
- $||arrow(x)||_(oo)=max |x_i|$

Нормы матрицы:
- $||A|| = limits(sup)_(||arrow(x)||=1) ||A arrow(x)|| = max |x_i|$ --- подчинена норме вектора

#let argmin = math.op("argmin")
#let cond = math.op("cond")
$ argmin ||A arrow(x) - arrow(b)|| $

#definition(title: [Число обусловленности])[
  $ cond(A) = ||A||dot||A^(-1)|| = lambda_max / lambda_min $
  Свойства:
  + $cond(A)>=1$
  + $cond(alpha A)=cond(A), quad alpha in RR$
  + $cond(A B) <= cond(A)dot cond(B)$
]

$ z=f(x,y), quad phi(x,y)<=C $
$ F(x,y,lambda) = f(x,y) + lambda phi(x,y) $
$
  cases(
  F_x = 0\,,
  F_y = 0\,,
  phi(x,y) = C.
  )
$
#theorem[
  На компакте минимум гарантирован
]
Компакт в пространстве (шар): $||arrow(x)|| <= C$

#example[
  $A = A^T$ -- симметричная. У неё ровно $n$ собственных чисел, $lambda in RR$.
  Лаврентьев Михаил Михайлович\u{1f474} предложил следующее. Как отсеить $lambda <=0$? К диагонали прибавляем маленькое положительное число:
  $ (A + alpha E) arrow(x) = arrow(b_б), quad alpha>0, alpha in RR, quad arrow(b_б): ||arrow(b)-arrow(b_б)||<= delta $
  Отсюда получаем:
  $ arrow(x)_(alpha б) = (A + alpha E)^(-1) arrow(b_б) $
  $ ||A arrow(x)_(alpha б) - arrow(b_б)|| -> limits(min)_alpha $

  Берем геометрическую прогрессию $alpha_n=alpha_0 dot q^n$, $0<q<1$ и чето с ней делаем. Получаем регуляризованное решение.
  $ rho(alpha_n) > rho(alpha_(n+1)) > ... $
]

#definition(title: [Функционал Тихонова])[
  $
    M_alpha(arrow(x)) = ||A arrow(x) - arrow(b)||^2 + alpha ||arrow(x)||^2
  $
]
В конечномерных пространствах: $||A arrow(x) - arrow(b)||=(A arrow(x)-arrow(b), A arrow(x)-arrow(b))+alpha(arrow(x), arrow(x))$, где $(dot, dot)$ -- скалярное произведение.

Возьмем $h$ -- приращение, тогда:
$
  (A (arrow(x)+arrow(h))-arrow(b), A (arrow(x)+arrow(h))-arrow(b))+alpha(arrow(x)+arrow(h), arrow(x)+arrow(h))
$
$
  (A arrow(x) - arrow(b), A arrow(x) - arrow(b)) + 2 (A arrow(h), A arrow(x) - arrow(b)) + (A arrow(h), A arrow(h)) + alpha(arrow(x), arrow(x)) + 2(arrow(x), arrow(h)) + (arrow(h), arrow(h))
$
$M_alpha$ -- сглаживающий функционал, $alpha(arrow(x), arrow(x))$ -- стабилизатор.

Уравнение Эйлера для сглаживающего функционала:
$ arrow(x)_(alpha б) = (A^T A + alpha E)^(-1) A^T arrow(b) $
Решаем так же: $||A arrow(x)_(alpha rho) - arrow(b)_б||=delta$.


