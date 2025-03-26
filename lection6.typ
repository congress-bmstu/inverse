= Какие-то задачки

Тут много пропущено в начале


$
cases(
  (partial v)/(partial tau) = (partial^2 v)/(partial xi^2) + delta(xi) delta(tau) - q [phi + V], \
  v|_(t = 0) = - phi(x, 0), \
  v_x |_(x=0) = f(t), \
  v|_(x=0) = psi(t) - phi(0, t)
)
$
Чтобы свести эту задачу к интегральному уравнению, домножим на фундаментальное решение
и проинтегрируем:
- Сначала проинтегрируем левую часть:
  $
  integral_0^t (partial v)/(partial tau) phi(x, xi, t, tau) d tau = v phi(x, xi, t, tau) |_0^t - integral_0^t v (partial phi)/(partial tau) d tau = - v(xi, 0) phi(x, xi, t) - integral_0^t v (partial phi)/(partial tau) d tau.
  $
  $
  integral_0^oo d xi integral_0^t (partial phi)/(partial xi) phi d tau = - integral_0^oo v(xi, 0) phi(x, xi, t) d xi- integral_0^oo d xi integral_0^t
  $
  Получается, что интеграл от левой части:
  $
  integral_0^oo phi(xi, 0) phi(x, xi, t) d xi - integral_0^oo d xi integral_0^t v (partial phi)/(partial tau) d tau
  $

- Правая часть:
  $
  integral_0^oo (partial^2 v)/(partial xi^2) phi d xi = ((partial v)/(partial xi) phi - (partial phi)/(partial xi) v)|_0^t + integral_0^oo v (partial^2 phi)/(partial xi^2) d xi = - (partial v)/(partial xi) (0, tau) phi(x, 0, t-tau) + integral_0^oo v (partial^2 phi)/(partial xi^2) d xi 
  $
  $
    integral_0^t d tau integral_0^oo (partial^2 v)/(partial xi^2) phi d xi = - integral_0^t (partial v)/(partial xi)(0, tau) phi(x, 0, t-tau) d tau + integral_0^t d tau integral_0^oo v (partial^2 phi)/(partial xi^2) d xi = - integral_0^t f(tau) phi(x, 0, t-tau) + integral_0^t d tau integral_0^oo v (partial^2 phi)/(partial xi^2) d xi   
  $

- Второе слагаемое правой части $delta(xi) delta(tau)$ даёт нам $phi(x, t)$.
- Третье слагаемое (источник):
  $
    - integral_0^t d tau integral_0^oo q(xi) phi(x, xi, t-tau) d xi
  $

Итоговое уравение:
$
integral_0^oo phi(xi, 0) phi(x, xi, t) d xi - integral_0^oo d xi integral_0^t v (partial phi)/(partial tau) d tau = \ - integral_0^t f(tau) phi(x, 0, t-tau) + integral_0^t d tau integral_0^oo v (partial^2 phi)/(partial xi^2) d xi + phi(x, t) - \ - integral_0^t d tau integral_0^oo q(xi) phi(x, xi, t-tau) d xi
$
Тогда, т.к. $integral_0^oo d xi integral_0^t v (partial phi)/(partial tau) d tau + integral_0^t d tau integral_0^oo v (partial^2 phi)/(partial xi^2) d xi = v(x, t) $, то:
$
v(x, t) = - integral_0^oo phi(xi, 0) phi(x, xi, t) d xi - \
- integral_0^t f(tau) phi(x, 0, t-tau) d tau + phi(x, t) - integral_0^t d tau integral_0^oo q(xi) phi(x, xi, t-tau) d xi
$

Попробуем найти что-то:
$
v(0, t) = psi(t) - phi(0, t) = -integral_0^oo phi(xi, 0) phi(0, xi, t) d xi - \
- integral_0^t f(tau) phi(0, 0, t-tau) d tau + phi(0, t) - integral_0^t d tau integral_0^oo q(xi) phi(0, xi, t-tau) d xi 
$
Вот такое симпатичное уравение у нас получилось, оно является уравнением Вольтерра первого рода,
а дальше теория Тихонова. Выделяем подпространство
в $L_2$, такое что: $norm(u) <= C$ -- компакт (пространство Соболева).

Это описано в книжке Лаврентьев-Резницкая.
