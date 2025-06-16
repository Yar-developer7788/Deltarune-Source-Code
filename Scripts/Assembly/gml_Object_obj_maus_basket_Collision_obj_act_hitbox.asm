.localvar 2 arguments

:[0]
pushi.e -1
push.v other.which
conv.v.i
push.v [array]self.caught
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.i 170462
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v other.which
conv.v.i
pop.v.v [array]self.caught
push.v other.parentid
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 465
cmp.i.v EQ
bf [3]

:[2]
pushi.e 57
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 57
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 57
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
b [4]

:[3]
pushi.e 65
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
pushi.e 65
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v

:[4]
push.i 170473
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v other.which
conv.v.i
pop.v.v [array]self.monsterhit
push.i 235998
setowner.e
pushi.e 1
conv.i.v
push.v self.maker
pushi.e -9
push.v other.which
conv.v.i
pop.v.v [array]self.caught
pushi.e 761
pushenv [6]

:[5]
pushi.e 0
pop.v.i self.actfailure

:[6]
popenv [5]

:[end]