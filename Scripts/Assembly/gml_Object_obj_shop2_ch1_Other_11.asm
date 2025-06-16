.localvar 2 arguments

:[0]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume_ch1(argc=3)
popz.v
pushi.e 1464
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm
pushi.e 38
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
pushi.e 24
pop.v.i global.entrance
pushi.e 3
pop.v.i global.interact

:[end]