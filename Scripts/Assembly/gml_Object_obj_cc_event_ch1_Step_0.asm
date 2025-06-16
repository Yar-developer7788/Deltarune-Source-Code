.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 401
cmp.i.v EQ
bf [end]

:[1]
pushi.e -5
pushi.e 245
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
pushi.e 0
pop.v.i self.bluhtotal
pushi.e 1471
pushenv [5]

:[3]
push.v self.bluh
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v 1357.bluhtotal
pushi.e 1
add.i.v
pop.v.v 1357.bluhtotal

:[5]
popenv [3]
push.v self.bluhtotal
pushi.e 3
cmp.i.v GTE
bf [end]

:[6]
pushi.e 359
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1414
conv.i.v
pushi.e 980
conv.i.v
pushi.e 480
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.chest
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 245
pop.v.v [array]self.flag

:[end]