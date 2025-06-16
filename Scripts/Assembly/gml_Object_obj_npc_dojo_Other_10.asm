.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i global.interact
push.d 0.2
pop.v.d self.image_speed
push.s "noone"@5120
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 1107
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
push.v self.image_speed
pop.v.v self.remanimspeed
pushi.e 3
pop.v.i self.myinteract
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[end]