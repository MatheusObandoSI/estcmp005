sith_apprentice(galen).
sith_master(vader).
sith_lord(sidious).

master(X, Y) :- (sith_lord(X), sith_master(Y));
                (sith_master(X), sith_apprentice(Y)).