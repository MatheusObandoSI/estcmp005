casal(anakin, padme).
casal(luke, mara).
casal(han, leia).
casal(ben, vestara).
casal(jacen, tenel).
casal(nat, droo).
casal(kol, morrigan).

pai(anakin, luke).
pai(anakin, leia).
pai(luke, ben).
pai(han, jaina).
pai(han, anakinSolo).
pai(han, jacen).
pai(ben, nat).
pai(ben, kol).
pai(nat, skeeto).
pai(nat, micah).
pai(nat, ahnah).
pai(jacen, allana).
pai(kol, cade).


mae(padme, luke).
mae(padme, leia).
mae(mara, ben).
mae(leia, jaina).
mae(leia, anakinSolo).
mae(leia, jacen).
mae(vestara, nat).
mae(vestara, kol).
mae(droo, skeeto).
mae(droo, micah).
mae(droo, ahnah).
mae(tenel, allana).
mae(morrigan, cade).

filho(X, Y) :- pai(Y, X); mae(Y,X).

irmao(X, Y) :-  pai(Z, X), pai(Z, Y), X\=Y;
                mae(Z, X), mae(Z, Y), X\=Y.

avo(X,Y) :- pai(Z, Y), pai(X, Z); 
            pai(Z, Y), mae(X, Z);
            mae(Z, Y), pai(X, Z); 
            mae(Z, Y), mae(X, Z).

tio(X,Y) :- pai(Z, Y), irmao(Z, X);
            mae(Z, Y), irmao(Z, X).