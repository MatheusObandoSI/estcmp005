padawan(anakin).
jedi_knight(obiwan).
jedi_master(quigon).
jedi_grand_master(yoda).

master(X, Y) :- (jedi_grand_master(X), jedi_master(Y));
                (jedi_master(X), jedi_knight(Y));
                (jedi_knight(X), padawan(Y)).