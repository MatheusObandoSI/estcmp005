content_database('cinema', ['A chuva que aparece no clássico Singing in the rain era uma mistura de água com leite, isso foi utilizado para melhor destacar o contraste da agua nas imagens das câmeras da época',
'Os irmaos Lumiere sao considerados como os criadores da setima arte, apesar da invencao original do cinematografo ser atribuida a Leon Bouly, os irmao Lumiere possuiam a patente e foram responsaveis pela divulgacao da invencao',
'Vingadores: Ultimato o filme detentor do atual recorde de maior bilheteria, antes pertencente ao filme Avatar, de James Cameron',
'James Bond, famosa franquia de filmes do agente britânico criado pelo escritor Ian Flemming eh uma das mais importantes referencias do genero de espionagem']).

content_database('esportes', ['Os jogos olímpicos possuem esse nome em referencia a uma cidade da antiga Grécia chamada de Olímpia, na qual era praticados jogos esportivos nos momentos de trégua entre guerras. Os primeiros jogos olímpicos modernos foram realizados em Antenas, na Grécia, entre os dias 06 e 15 de 1896.',
'Após 21 edições da copa do mundo de futebol da FIFA, a selecao brasileira ainda detem o recorde de títulos, com 5 títulos.',
'O Golden State Warriors é o detentor do maior numero de vitorias em uma temporada da NBA, com 73 vitorias em 82 jogos',
'Usain Bolt eh o maior velocista de todos os tempos, alcancando 44,72Km/h na prova de 100 metros rasos onde estabeleceu seu recorde mundial atingindo 9,58s']).

content_database('games', ['Maze War foi o primeiro jogo estilo FPS da historia, esse genero se popularizou com Doom e Wolfenstein 3D, ambos produzidos pela id software.',
'O mercado de games e atualmente o mais rentavel dentro da industria do entretenimento.',
'O playstation 2 foi o console mais vendido de todos os tempos, com um numero de vendas de mais de 155 milhões de unidades',
'O super nintendo foi o primeiro console a utilizar gráficos 3D em seus games, com o uso do chip gráfico Super FX']).

content_database('musica', ['Les Paul, guitarrista americano de Jazz, é creditado por diversas invencoes no mundo da musica, sendo a mais importante a tecnica de gravacao multitrack',
'Metallica foi a primeira banda a tocar em todos os continentes, incluindo o Alasca.',
'O album Thriller de 1982 do cantor Michael Jackson foi o mais vendido de todos os tempos, com mais de 47,3 milhoes de copias certificadas vendidas em todo o mundo']).

content_database('fim', ['Espero ter sido util, ate uma proxima vez', 'Espero ter ajudado, tenha um bom dia']).

get_random_content(List, Content) :- 
    length(List, Length),
    random(0, Length, Index), 
    nth0(Index, List, Content).

find_pattern([], List) :- X = ['Sinto muito não consegui encontrar nenhum conteudo',
    'Nao encontrei nenhuma informacao a respeito deste tema',
    'Ainda nao possuo conteudo sobre este tema'],
    List = X.

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