#import "notes.typ": *

= Лекция 2.

... опоздал ...

$
  A^T A arrow(x) - A^T arrow(b)_б + alpha arrow(x)=0
$

#definition(title: "Уравнение Эйлера")[
  $
    (A^T A + alpha E) arrow(x) = A^T arrow(b)_б
  $
]

Рассмотрим такую шутку:
$ arrow(x)_(alpha б) = (A^T A + alpha E)^(-1)A^T arrow(b)_б $
необходимо найти отклонение, подставим в исходное уравнение и получим невязку:
$
  ||A(A^T A + alpha E)^(-1) A^T arrow(b)_б - arrow(b)_б||^2 = delta^2
$

#example[
  $ A arrow(x) = arrow(b), quad arrow(b)=vec(1,2), quad arrow(b)_б^T = vec(0.9,2.1) $
  $ A=mat(1,2;3,4),quad A^T = mat(1,3;2,4), A^(-1)=-1 / 2 dot mat(4,-2;-3,1) $
  #place(right)[#rotate(90deg, reflow: true)[_*я ничего не понимаю*_]]
  $ A^T A = mat(10,14;14,20) $
  $ A^T A + alpha E = mat(10+alpha, 14; 14, 20+alpha) $
  $ A^T A arrow(x) + alpha arrow(x) = A^T arrow(b)_б $
  $ mat(10+alpha,14;14,20+alpha)arrow(x)_alpha = vec(7.2,10.2) $
  $ delta^2 = 0.02 $
  $ Delta = alpha^2 + 30alpha + 200 - 196 = alpha^2+30alpha+4 $
  $
    (A^T A + alpha)^(-1) = 1 / (alpha^2 + 30alpha+4)mat(20+alpha,-14;-14,10+alpha)mat(10+alpha,14;14,20+alpha)arrow(x)_alpha = vec(7.2, 10.2)
  $
  $
    arrow(x)_alpha = 1 / (alpha^2+30alpha+4)mat(20+alpha,-14;-14,10+alpha)vec(7.2,10.2)=1 / (alpha^2+30alpha+4)vec(1.2+7.2alpha,1.2+10.2alpha)
  $
  $ arrow(x)_alpha stretch(=)_(alpha->0) vec(0.3,0.3) $
  $
    A arrow(x)_alpha = mat(1,2;3,4)1 / (alpha^2+30alpha+4)vec(1.2+7.2alpha,1.2+10.2alpha)= dots.c
  $
  Берем функционал Тихонова:
  $
    M_(alpha)(arrow(x)) = ||A arrow(x) - arrow(b)_б||^2 + alpha ||arrow(x)||^2 -> min
  $
]

== Уравнение Фредгольма I рода
$ A arrow(x) = arrow(b), space "где" A = limits(integral)_a^b K(x,s)x(s) d s $
$ limits(integral)_a^b K(x,s)x(s) d s = f(x), space x in (a,b) $
#todo[картинки]
$ limits(integral)_a^b K(x,s)x(s) d s = f(x), space x in [a,b], space K(x,s)in C [a,b]times[a,b] $
$ x_i = a+ (i-1) / h (b-a) $
$ s_j = a+(j-1) / h (b-a) $
$ sum^(n-1)_(j=0) h K_(i j) y_j = f(x_i) $
$ y in L_2(a,b) $

#definition(title: "Пространство Соболева")[
  Пространство функций. Интегрируются как-то сочно. Норма:
  $
    W_2^1 = limits(integral)_a^b [(y')^2 + p(x)y^2] d x, space p in C^1[a,b]
  $
  $
    limits(integral)_a^b [limits(integral)_a^b K(x,s)y(s) d s - f(x)]^2 d x, space x in [a,b]
  $
  Функционал Тихонова выглядит так:
  $
    M_alpha (y) = limits(integral)_a^b [limits(integral)_a^b K(x,s)y(s) d s - f(x)]^2 d x + alpha limits(integral)_a^b [(y')^2+p y^2] d x -> min
  $
]
