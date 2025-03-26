= Обратные задачи для параболического уравнения

Прямая задача:

$
  (partial u)/(partial t) = (partial)/(partial x)(k (partial u)/(partial x)) + f(x,t)\
  u|_(t=0)=u_0\
  u|_(x=0)=mu_1(t)\
  u|_(x=l)=mu_2(t)
$

*Обратная задача* - определение неизвестных

*Дополнительное условие* $equiv$ переопределение

1) Найти $u_0$ известна $u(x, T) = F(x)$ - *обратная ретроспективная задача*

2) Найти $f(x,t)$ - *задача об источнике*

3) Найти $k(x,t)$ - *обратная коэффициентная задача*

4) Найти $mu_1, mu_2$  

В 2) - 3) известна $u(x_0, t)$.

== 1) Обратная ретроспективная задача

$
  u(x, T) = F(x)quad u|_(x=0)=0,u|_(x=l)=0
$

Найти $u_0(x)$. Пусть $k=a^2="const"$

$
  u(x,t) = sum_(n=1)^(infinity)c_n e^(-lambda_n^2 t)sin((pi n x )/l)
$
$
 c_n = 1/l integral_0^l u_0 sin((pi n x)/l)d x 
$

$
  - (partial u)/(partial t) = a^2 (partial ^2 u)/(partial x^2)quad x in (0, l), t in (0, T)\
  u|_(x=0)=u|_(x=l)=0\
  u(x,T)= F
$

Французские математики Леттес, Лионс предложили следующее решение - *метод квазиобращения* (есть книга от этих французов, которая так же называется).

Суть в том, чтобы вместо изначальной задачи решать следующую:
$
  (partial u_epsilon)/(partial t) = a^2 (partial^2 u_epsilon)/(partial x^2) + epsilon (partial ^4 u_epsilon)/(partial x^4)\
  u_epsilon|_(t=T)=F(x)\
  u_epsilon|_(x=0)=u_epsilon|_(x=l)=0\
  u_(x x)|_(x=0)= u_(x x)|_(x=l) = 0\
  u_(0epsilon) = u_epsilon(x, 0)
$

== 2) Задача об источнике

$
  u_t = a^2 u_(x x) + f(x,t)quad x in (0,l), t in (0, T)\
  u|_(t=0)=u_0(x)\
  u|_(x=0)=u|_(x=l) = 0\
  u(x_0, t) = phi(t)
$

Найти $f(x,t)$.

Предполагаем, что
$
  f(x,t) = h(x)g(t)
$

Решение прямой задачи:
$
  u = sum_(n=1)^(infinity)c_n (t) sin ((pi n x)/l)
$
Подставляем в уравнение:
$
  sum_(n=1)^(infinity)dot(c)_n sin ((pi n x)/ l) = -sum_(n=1)^(infinity) ((pi n)/l)^2 c_n sin ((pi n x)/ l)+ h(x)g(t)
$

Предполагаем $h(x)$ известной, ищем $g(t)=?$

$
  h(x) = sum_(n=1)^(infinity) h_n sin (pi n x)/l ==> h_n "известны"
$

$
dot(c)_n = -((pi n)/l)^2c_n + h_n g(t)
$
Однородное
$
  c_n = T_n (t)e^(-((pi n)/l)^2 t)
$
$
  dot(T)_n = h_n g(t)e^(((pi n)/l)^2 t)
$
$
  T_n = h_n integral_0^t g(tau)e^(((pi n)/l)^2 tau) d tau + C_n
$
$
  u = sum_(n=1)^(infinity) [h_n integral_0^t g(tau)e^(((pi n)/l)^2 (t - tau)) d tau] sin (pi n x)/l
$
$
  phi(t) = sum_(n=1)^(infinity) [h_n integral_0^t g(tau)e^(((pi n)/l)^2 (t - tau)) d tau] sin (pi n x_0)/l"  - уравнение Вольтера"
$

Теперь предполагаем $g(t)$ известной, ищем $h(x) = ?$

== 3) Обратная коэффициентная задача

$
  (partial u)/(partial t) = partial/(partial x)( k(x,t) (partial u)/(partial x))\
  u|_(t= 0)=u_0\
  u|_(x=0,l)=0\
  u(x_0, t) = phi(t)
$

Предположим, что $k(x,t) = k(t)$.
$
  u = X T\
  X dot(T)=k(t) dot X''T\
  dot(T)/(k T) = X''/X=-lambda^2 ==> X_n = sin (pi n x)/l, lambda_n = (pi n)/l
$
$
  dot(T)/T = -k(t) lambda^2
$
$
  ln T = - integral_0^t lambda^2 k d tau
$
$
  T_n = e ^(-integral_0^t lambda_n^2k d tau)
$
$
  u = sum_(n=0)^(infinity)c_n  e ^(-integral_0^t lambda_n^2k d tau) sin (pi n x)/l
$
$
  phi(t) = sum_(n=0)^(infinity)c_n  e ^(-integral_0^t lambda_n^2k d tau) sin (pi n x_0)/l
$

== 4)
$
  (partial u)/(partial t) = a^2 (partial^2 u)/(partial x^2)\
  x|_(t=0)=u_0\
  u|_(x=0)=mu(t)\
  u|_(x=l)=0
$

Воспользуемся функцией Грина.

$
  (partial u)/(partial t) = a^2 (partial^2 u)/(partial x^2) + delta(x- xi) delta(t -tau)\
  x|_(t=0)=0\
  u|_(x=0)=mu(t)\
  u|_(x=l)=0
$
$
  Phi (partial u)/(partial tau) = a^2 (partial^2 u)/(partial xi^2) Phi\
  integral_0^t Phi(x, xi, t, tau) (partial u)/(partial tau) d tau = Phi u|_0^t - integral_0^t u (partial Phi)/(partial tau) d tau =\
  = - Phi(x, xi, t, 0)u_0 -integral_0^t u (partial Phi)/(partial tau) d tau 
$
$
  integral_0^l d xi integral_0^t Phi (partial u)/(partial tau) d tau = - integral_0^l Phi(x, xi, t, 0)u_0 d xi- integral_0^l d xi integral_0^t u (partial Phi)/(partial tau) d tau
$
$
  integral_0^l Phi (partial^2 u)/(partial xi^2)d xi = (Phi (partial u)/(partial xi)- u (partial Phi)/(partial xi))bar_0^l+integral_0^l u (partial ^2 Phi)/(partial xi^2) d xi = mu(tau) (partial Phi)/(partial xi)(x, 0,t,tau)+integral_0^l u (partial ^2 Phi)/(partial xi^2) d xi
$
$
  integral_0^t mu(tau) (partial Phi)/(partial xi)(x, 0,t,tau) d tau +integral_0^l d xi integral_0^t u (partial^2 Phi)/(partial xi^2) d tau =\ = - integral_0^l Phi(x, xi, t, 0)u_0 d xi- integral_0^l d xi integral_0^t u (partial Phi)/(partial tau) d tau
$
