.localvar 2 arguments

:[0]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 11
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 3
pop.v.i global.interact
pushi.e 14
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 190
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[5]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_free(argc=1)
popz.v
pushi.e 239
conv.i.v
call.i room_goto(argc=1)
popz.v

:[7]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [9]

:[8]
pushi.e 49
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i global.interact
push.s "obj_ch2_room_spamton_shop_exterior_slash_Step_0_gml_32_0"@36050
conv.s.v
push.s "Kris?"@36051
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "right"@4637
conv.s.v
pushi.e 7
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_room_spamton_shop_exterior_slash_Step_0_gml_35_0"@36052
conv.s.v
push.s "\\E0* ..^1. what kinda creepy stuff were you buying anyway?/"@36053
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_spamton_shop_exterior_slash_Step_0_gml_36_0"@36054
conv.s.v
push.s "\\EA* Nah..^1. like I even wanna know. Yikes./"@36055
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "G"@9482
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_room_spamton_shop_exterior_slash_Step_0_gml_38_0"@36056
conv.s.v
push.s "\\EG* She said she hoped if it was candy^1, you'd share with her.../"@36057
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "H"@5303
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_room_spamton_shop_exterior_slash_Step_0_gml_40_0"@36058
conv.s.v
push.s "\\EH* SHUT UP!!!\\f0/%"@36059
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[9]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [11]

:[10]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 59
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[14]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [16]

:[15]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [17]

:[16]
push.e 0

:[17]
bf [end]

:[18]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 386
pop.v.v [array]self.flag
call.i instance_destroy(argc=0)
popz.v

:[end]