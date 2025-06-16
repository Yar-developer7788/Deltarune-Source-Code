.localvar 2 arguments

:[0]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [4]

:[1]
push.v 82.x
push.v self.x
cmp.v.v LT
bf [4]

:[2]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [4]

:[3]
pushi.e -5
pushi.e 336
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [11]

:[6]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 336
pop.v.v [array]self.flag
call.i gml_Script_scr_losechar(argc=0)
popz.v
push.v 276.x
pop.v.v self.susxpos
push.v 276.y
pop.v.v self.susypos
pushi.e 850
conv.i.v
push.v self.susypos
push.v self.susxpos
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.nisesusie
push.v self.nisesusie
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 276
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]

:[11]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [16]

:[12]
pushi.e 3
pop.v.i self.con
push.v self.leaveCounter
push.e 1
add.i.v
pop.v.v self.leaveCounter
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.v self.leaveCounter
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.s "obj_ch2_room_town_south_alphys_slash_Step_0_gml_33_0"@35593
conv.s.v
push.s "\\E0* Uh oh. Alphys. Hell if I'm going any further./"@35594
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_town_south_alphys_slash_Step_0_gml_34_0"@35595
conv.s.v
push.s "\\E0* Already close enough to getting banned from school./"@35596
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_south_alphys_slash_Step_0_gml_35_0"@35597
conv.s.v
push.s "\\E0* Don't wanna be banned from outside of school too./"@35598
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_south_alphys_slash_Step_0_gml_36_0"@35599
conv.s.v
push.s "\\E1* (..^1. that's a thing^1, right?)/%"@35600
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [15]

:[14]
push.s "obj_ch2_room_town_south_alphys_slash_Step_0_gml_39_0"@35601
conv.s.v
push.s "\\E0* Alphys? You're on your own./%"@35602
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[15]
call.i gml_Script_d_make(argc=0)
popz.v

:[16]
push.v 82.x
push.v self.x
cmp.v.v GT
bf [19]

:[17]
pushi.e -5
pushi.e 336
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
b [20]

:[19]
push.e 0

:[20]
bf [24]

:[21]
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v 82.y
pushi.e 7
sub.i.v
push.v 82.x
pushi.e 40
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 276
pushenv [23]

:[22]
pushi.e 0
pop.v.i self.visible

:[23]
popenv [22]

:[24]
push.v 82.x
push.v self.x
cmp.v.v LT
bf [27]

:[25]
pushi.e -5
pushi.e 336
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
b [28]

:[27]
push.e 0

:[28]
bf [32]

:[29]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]

:[32]
push.v 82.x
push.v self.x
pushi.e 40
add.i.v
cmp.v.v GT
bf [34]

:[33]
pushi.e -5
pushi.e 336
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 4
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 336
pop.v.v [array]self.flag
push.d 0.25
push.v self.nisesusie
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 850
push.v self.nisesusie
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[37]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [47]

:[38]
push.d 0.15
conv.d.v
push.v 276.y
push.v self.nisesusie
pushi.e -9
push.v [stacktop]self.y
call.i lerp(argc=3)
push.v self.nisesusie
pushi.e -9
pop.v.v [stacktop]self.y
push.d 0.1
conv.d.v
push.v 276.x
push.v self.nisesusie
pushi.e -9
push.v [stacktop]self.x
call.i lerp(argc=3)
push.v self.nisesusie
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.nisesusie
pushi.e -9
push.v [stacktop]self.x
push.v 276.x
sub.v.v
call.i abs(argc=1)
pushi.e 4
cmp.i.v LTE
bf [40]

:[39]
push.v self.nisesusie
pushi.e -9
push.v [stacktop]self.y
push.v 276.y
sub.v.v
call.i abs(argc=1)
pushi.e 4
cmp.i.v LTE
b [41]

:[40]
push.e 0

:[41]
bf [47]

:[42]
push.v 276.x
push.v self.nisesusie
pushi.e -9
pop.v.v [stacktop]self.x
push.v 276.sprite_index
push.v self.nisesusie
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 276
pushenv [44]

:[43]
pushi.e 1
pop.v.i self.visible

:[44]
popenv [43]
push.v self.nisesusie
pushi.e -9
pushenv [46]

:[45]
call.i instance_destroy(argc=0)
popz.v

:[46]
popenv [45]
pushi.e 5
pop.v.i self.con

:[47]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [49]

:[48]
pushi.e 3
pop.v.i self.con
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_south_alphys_slash_Step_0_gml_96_0"@35603
conv.s.v
push.s "\\E2* (Alright^1, let's go.)/%"@35604
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[49]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [51]

:[50]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [52]

:[51]
push.e 0

:[52]
bf [end]

:[53]
pushi.e 0
pop.v.i global.interact
pushi.e -1
pop.v.i self.con

:[end]