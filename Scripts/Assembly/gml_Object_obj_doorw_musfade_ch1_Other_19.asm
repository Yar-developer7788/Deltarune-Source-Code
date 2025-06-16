.localvar 2 arguments

:[0]
pushi.e 3
pop.v.i global.interact
pushi.e 14
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
push.v self.touched
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
pushi.e 14
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i self.touched

:[end]