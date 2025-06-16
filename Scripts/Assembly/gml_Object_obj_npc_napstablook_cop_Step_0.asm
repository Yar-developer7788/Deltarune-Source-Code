.localvar 2 arguments

:[0]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
call.i event_inherited(argc=0)
popz.v

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushi.e 50
pop.v.i self.con
pushi.e 100
pushenv [8]

:[7]
pushi.e 10
pop.v.i self.napstacon

:[8]
popenv [7]

:[end]