.localvar 2 arguments

:[0]
push.v 82.x
push.v self.x
cmp.v.v LT
bf [2]

:[1]
pushi.e -5
pushi.e 301
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 301
pop.v.v [array]self.flag
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i self.con

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[6]
pushi.e 3
pop.v.i self.con
pushi.e 1
pop.v.i global.facing
pushi.e 276
pushenv [8]

:[7]
pushi.e 1
pop.v.i self.fun
push.v self.sprite_index
pop.v.v self._remsprite
push.v self.rsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index

:[8]
popenv [7]
push.s "obj_ch2_room_dungeon_2f_slash_Step_0_gml_24_0"@35851
conv.s.v
push.s "Aww, cute!"@35852
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "mid"@5602
conv.s.v
pushi.e 1
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_ch2_room_dungeon_2f_slash_Step_0_gml_25_0"@35853
conv.s.v
push.s "WE'RE DONE#TALKING TO YOU!"@35854
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "right"@4637
conv.s.v
pushi.e 17
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
pushi.e 5
pop.v.i global.fe
push.s "king"@3479
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_slash_Step_0_gml_28_0"@35855
conv.s.v
push.s "\\E5* .../"@2857
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_dungeon_2f_slash_Step_0_gml_29_0"@35856
conv.s.v
push.s "\\M1* By the way.../"@35857
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_slash_Step_0_gml_30_0"@35858
conv.s.v
push.s "\\E6\\E3* Is my son..^1. happy...?/"@35859
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_slash_Step_0_gml_32_0"@35860
conv.s.v
push.s "\\ER* Like you CARE!/"@35861
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_slash_Step_0_gml_33_0"@35862
conv.s.v
push.s "\\ER* You were gonna throw him off a CLIFF!/"@35863
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 5
conv.i.v
push.s "king"@3479
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_slash_Step_0_gml_35_0"@35864
conv.s.v
push.s "\\E5* Ah. Your prejudice made my bluff too effective^1, I see./"@35865
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_slash_Step_0_gml_36_0"@35866
conv.s.v
push.s "\\E5* ..^1. besides^1, even IF I threw him^1, he would just.../"@35867
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_slash_Step_0_gml_37_0"@35868
conv.s.v
push.s "\\E0* Bounce./"@35869
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_slash_Step_0_gml_38_0"@35870
conv.s.v
push.s "* My son..^1. is.../"@35871
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_slash_Step_0_gml_39_0"@35872
conv.s.v
push.s "\\E8\\M0* A bouncy little pumpkin.\\f0\\f1 /%"@35873
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[9]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[10]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [end]

:[11]
pushi.e 276
pushenv [13]

:[12]
pushi.e 0
pop.v.i self.fun

:[13]
popenv [12]
pushi.e 0
pop.v.i global.interact
pushi.e -1
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]