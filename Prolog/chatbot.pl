content_database('cinema', ['Conteudo sobre cinema 1', 'Conteudo sobre cinema 2']).

content_database('esportes', ['Conteudo sobre carros 1','Conteudo sobre esportes 2']).

content_database('ciencias', ['Conteudo sobre ciencias 1', 'Conteudo sobre ciencias 2']).

content_database('games', ['Conteudo sobre games 1', 'Conteudo sobre games 2']).

content_database('filosofia',['Conteudo sobre filosofia 1','Conteudo sobre filosofia 2']).

content_database('curiosidades', ['Conteudo sobre curiosidades 1', 'Conteudo sobre curiosidades 2']).

content_database('fim', ['Foi um prazer ajudar, tenha um bom dia 1', 'Foi um prazer ajudar, tenha um bom dia 2']).


get_random_content(List, Content) :- 
    length(List, Length),
    random(0, Length, Index), 
    nth0(Index, List, Content).

find_pattern([], _).
find_pattern([X|Y], List) :-

    (content_database(X, List) -> !; find_pattern(Y, List)).

search_database(Input, Output) :-
    atomic_list_concat(AtomList, ' ', Input),
    find_pattern(AtomList, List),
    get_random_content(List, Output).

end_session(Input) :- Input = ('fim').

chatbot :-

    format('Ola! Eu sou um chatbot de pesquisa por conteudos'), nl,
    repeat,
    format('Sobre o que você gostaria de pesquisar?'), nl,

    read(Input), nl,
    search_database(Input, Output),
    format(Output), nl, nl,
    end_session(Input).