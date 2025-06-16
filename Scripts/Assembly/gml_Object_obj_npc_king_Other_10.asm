.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 6
pop.v.i global.typer

:[2]
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
push.d 0.2
pop.v.d self.image_speed
push.s "king"@3479
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_king_slash_Other_10_gml_35_0_b"@15584
conv.s.v
push.s "\\E5* We have NOTHING to discuss./%"@15585
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [13]

:[3]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bf [7]

:[4]
pushi.e -5
pushi.e 301
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 301
pop.v.v [array]self.flag
pushi.e 1012
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[6]
b [12]

:[7]
pushi.e -5
pushi.e 320
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [12]

:[8]
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 9
cmp.i.v GTE
bf [11]

:[9]
pushi.e 1025
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked
exit.i

:[10]
b [12]

:[11]
push.s "king"@3479
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_king_slash_Other_10_gml_35_0"@15586
conv.s.v
push.s "\\E0* ..^1. talk to you? Hah./"@15587
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_king_slash_Other_10_gml_36_0"@15588
conv.s.v
push.s "\\E7* You \\cYleft them behind\\cW^1, didn't you?/"@15589
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_king_slash_Other_10_gml_37_0"@15590
conv.s.v
push.s "\\E5* Just as you left us.../%"@15591
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[12]
b [18]

:[13]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [15]

:[14]
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 9
cmp.i.v GTE
not.b
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.s "king"@3479
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_king_slash_Other_10_gml_44_0"@15592
conv.s.v
push.s "\\E5* Begone./%"@15593
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[18]
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