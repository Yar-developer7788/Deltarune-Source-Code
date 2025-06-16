.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 172
cmp.i.v EQ
bf [end]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.b 1284.victory
pushi.e 287
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[3]
pushi.e 287
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]

:[6]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[end]