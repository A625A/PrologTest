# PrologTest

Aprendiendo sobre Prolog

Load files in SWI-Prolog:

```
?- ['LogicTest'].
?- ['HelloWorld'].
```

Stack test commands:

```prolog
?- ['Listas-Stacks/test_stack.pl'].
?- new(S).                       % S = []
?- new(S), empty(S).             % true
?- new(S0), push(S0, a, S1).     % S1 = [a]
?- new(S0), push(S0, a, S1), top(S1, T).   % T = a
?- new(S0), push(S0, a, S1), pop(S1, E, S2). % E = a, S2 = []
?- pop([], _, _).
```
