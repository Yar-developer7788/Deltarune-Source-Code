.localvar 2 arguments

:[0]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_mansion_basement_door_slash_Other_10_gml_2_0"@38094
conv.s.v
push.s "* The door rattles but doesn't open./%"@19268
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 3
pop.v.i self.myinteract
pushi.e 1
pop.v.i global.interact
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]