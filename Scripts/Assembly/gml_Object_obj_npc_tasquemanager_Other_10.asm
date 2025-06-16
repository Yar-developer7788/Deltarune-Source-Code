.localvar 2 arguments

:[0]
push.s "noone"@5120
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 1140
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.myinteract
push.v self.talked
push.e 1
add.i.v
pop.v.v self.talked

:[end]