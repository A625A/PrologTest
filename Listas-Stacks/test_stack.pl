% Implementacion de pila (stack) en Prolog puro

new([]).

empty([]).

top([Top|_], Top).

push(Stack, Element, [Element|Stack]).

pop([Element|Stack], Element, Stack).
