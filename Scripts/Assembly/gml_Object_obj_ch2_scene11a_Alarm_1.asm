.localvar 2 arguments

:[0]
push.v self.auto_con
push.e 1
add.i.v
pop.v.v self.auto_con
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 64
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.forcebutton1

:[3]
popenv [2]

:[end]