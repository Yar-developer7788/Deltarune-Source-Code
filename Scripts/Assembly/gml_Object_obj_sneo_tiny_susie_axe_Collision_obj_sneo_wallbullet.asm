.localvar 2 arguments

:[0]
push.v other.active
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v other.destroyable
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]

:[end]