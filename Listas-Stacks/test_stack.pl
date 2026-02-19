% Prueba de implementación de Stack en Prolog

:- protocol(stack_protocol).
    :- public(new/1).
    :- mode(new(--stack), one).
    :- info(new/1, [
        comment is 'new(-Stack) - Crea un nuevo stack vacío.',
        argnames is ['Stack']
    ]).

    :- public(empty/1).
    :- mode(empty(@stack), one).
    :- info(empty/1, [
        comment is 'empty(+Stack) - Verifica si el stack está vacío.',
        argnames is ['Stack']
    ]).

    :- public(top/2).
    :- mode(top(?stack, ?Element), zero_or_one).
    :- info(top/2, [
        comment is 'top(+Stack, -Top) - Obtiene el elemento superior del stack.',
        argnames is ['Stack', 'Top']
    ]).

    :- public(push/3).
    :- mode(push(?stack, ?element, ?stack), zero_or_one).
    :- info(push/3, [
        comment is 'push(+Stack0, +Element, -Stack) - Agrega un elemento al stack.',
        argnames is ['Stack0', 'Element', 'Stack']
    ]).

    :- public(pop/3).
    :- mode(pop(?stack, ?element, ?stack), zero_or_one).
    :- info(pop/3, [
        comment is 'pop(+Stack0, -Element, -Stack) - Elimina el elemento superior del stack.',
        argnames is ['Stack0', 'Element', 'Stack']
    ]).

:- end_protocol(stack_protocol).

:- object(stack,
    implements(stack_protocol)).

    new([]).

    empty(Stack) :-
        Stack == [].

    top([Top| _], Top).

    push(Stack, Element, [Element| Stack]).

    pop([Element| Stack], Element, Stack).

:- end_object.
