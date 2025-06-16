.localvar 2 arguments

:[0]
push.v self.canttalk
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [end]

:[2]
push.v self.mydialoguer
call.i gml_Script_i_ex(argc=1)
pushi.e 0
cmp.b.v EQ
bf [end]

:[3]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract

:[end]