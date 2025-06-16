.localvar 2 arguments
.localvar 107 i 19069

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [15]

:[1]
pushi.e 1160
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 1158
pushenv [5]

:[4]
push.i 167653
setowner.e
pushi.e -180
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.targetYRelative
push.i 174609
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.lerpTime
push.i 174608
setowner.e
pushi.e 32
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.panSpeedInit
push.i 174612
setowner.e
pushi.e 36
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.panSpeedMax

:[5]
popenv [4]
pushi.e 260
pushenv [10]

:[6]
push.v self.collider
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [10]

:[7]
push.v self.collider
pushi.e -9
pushenv [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
popenv [8]

:[10]
popenv [6]
pushi.e 276
pushenv [12]

:[11]
pushi.e 0
pop.v.b self.visible

:[12]
popenv [11]
pushi.e 82
pushenv [14]

:[13]
pushi.e 0
pop.v.b self.visible

:[14]
popenv [13]
pushi.e 1198
conv.i.v
pushi.e 3080
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dogtable
pushi.e -16
push.v self.dogtable
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[15]
push.v self.tablespawn
pushi.e 1
cmp.b.v EQ
bf [17]

:[16]
pushi.e 269
conv.i.v
pushi.e 320
conv.i.v
pushi.e 166
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 269
conv.i.v
pushi.e 320
conv.i.v
pushi.e 270
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 269
conv.i.v
pushi.e 320
conv.i.v
pushi.e 374
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
pop.v.b self.tablespawn

:[17]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [28]

:[18]
pushi.e 0
pop.v.i local.i

:[19]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [21]

:[20]
pushi.e 129
conv.i.v
pushi.e 364
conv.i.v
pushi.e 166
pushloc.v local.i
pushi.e 104
mul.i.v
add.v.i
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shade
pushi.e 2317
push.v self.shade
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.shade
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 2
push.v self.shade
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.shade
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 890000
push.v self.shade
pushi.e -9
pop.v.i [stacktop]self.depth
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [19]

:[21]
pushi.e 276
pushenv [23]

:[22]
pushi.e 0
pop.v.b self.visible

:[23]
popenv [22]
pushi.e 82
pushenv [25]

:[24]
pushi.e 0
pop.v.b self.visible

:[25]
popenv [24]
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 1198
pushenv [27]

:[26]
pushi.e 1
pop.v.i self.drawtype

:[27]
popenv [26]
push.v self.remdog
pop.v.v self.dog
push.v self.dog
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.memx
push.v self.dog
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.memy
push.i 232289
setowner.e
push.v self.dog
push.v self.cutscene_master
pushi.e -9
pushi.e 0
pop.v.v [array]self.save_object
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[28]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [30]

:[29]
pushi.e -999
pop.v.i self.con
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.memx
push.s "x"@50
conv.s.v
push.v self.dog
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.memy
push.s "y"@52
conv.s.v
push.v self.dog
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
push.i 890000
conv.i.v
push.s "depth"@277
conv.s.v
push.v self.dog
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.dog
pushi.e -9
push.v [stacktop]self.y
pushi.e 60
sub.i.v
push.v self.dog
pushi.e -9
push.v [stacktop]self.x
pushi.e 21
sub.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.dog
pushi.e -9
push.v [stacktop]self.y
pushi.e 76
sub.i.v
push.v self.dog
pushi.e -9
push.v [stacktop]self.x
pushi.e 60
sub.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.dog
pushi.e -9
push.v [stacktop]self.y
pushi.e 82
sub.i.v
push.v self.dog
pushi.e -9
push.v [stacktop]self.x
pushi.e 12
add.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 545
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 20
conv.i.v
pushi.e 230
conv.i.v
pushi.e 300
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 783
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 20
conv.i.v
pushi.e 190
conv.i.v
pushi.e 254
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 543
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 20
conv.i.v
pushi.e 186
conv.i.v
pushi.e 338
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 540
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 2562
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 548
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 16
conv.i.v
pushi.e 704
conv.i.v
push.v self.memx
push.s "x"@50
conv.s.v
push.v self.dog
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "tablespawn"@37710
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 833
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_controller_dininghall_slash_Step_0_gml_146_0"@37711
conv.s.v
push.s "\\E9* Hahah^1, was that awesome or what?!/"@37712
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "K"@4777
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_controller_dininghall_slash_Step_0_gml_149_0"@37713
conv.s.v
push.s "\\EK* Umm^1, maybe minus the blatant destruction.../%"@37714
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_controller_dininghall_slash_Step_0_gml_160_0"@37715
conv.s.v
push.s "\\E2* Let's go^1, Kris^1! We're almost at the third floor!/%"@37716
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
pushi.e 4
conv.i.v
push.s "con"@829
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[30]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [end]

:[31]
pushi.e 1198
pushenv [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
popenv [32]
pushi.e 82
pushenv [35]

:[34]
pushi.e 1
pop.v.b self.visible

:[35]
popenv [34]
pushi.e 276
pushenv [37]

:[36]
pushi.e 1
pop.v.b self.visible

:[37]
popenv [36]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.interact
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 382
pop.v.v [array]self.flag
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[end]