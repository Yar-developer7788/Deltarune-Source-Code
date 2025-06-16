.localvar 2 arguments

:[0]
push.v self.suppress
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
pushi.e 270
pushenv [4]

:[2]
push.v self.flag
push.s "exitblocker"@20325
cmp.s.v NEQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.active

:[4]
popenv [2]

:[5]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
call.i gml_Script_charaX(argc=0)
pushi.e 460
cmp.i.v GTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i global.interact
pushi.e 1
push.v self.queen_monitor
pushi.e -9
pop.v.i [stacktop]self.turnon
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[12]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.d 2.1
pop.v.d self.con

:[14]
push.v self.con
push.d 2.1
cmp.d.v EQ
bf [16]

:[15]
pushi.e 3
pop.v.i self.con
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_29_0"@37877
conv.s.v
push.s "\\E1* I See You Have: Escaped From Your Room Units/%"@37878
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 230
conv.i.v
pushi.e 464
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 234
conv.i.v
pushi.e 492
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 240
conv.i.v
pushi.e 428
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 4
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_50_0_b"@37879
conv.s.v
push.s "\\EC* Who Can Blame You For Wanting To See My Glorious Mansion/"@37880
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_51_0"@37881
conv.s.v
push.s "\\ED* You Won't Want To Take Your Eyes Off This Beautiful Art/"@37882
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 5
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_53_0"@37883
conv.s.v
push.s "\\E5* We're not here to look at your stupid pictures!/"@37884
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 13
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_55_0"@37885
conv.s.v
push.s "\\ED* Oh It Was Not A Recommendation/"@37886
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_56_0"@37887
conv.s.v
push.s "\\EN* I Was Just Warning You LMAO/%"@37888
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 43
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.15
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
call.i gml_Script_c_wait_talk(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[16]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 1
push.v self.queen_monitor
pushi.e -9
pop.v.i [stacktop]self.turnoff
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[21]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [24]

:[22]
push.v self.queen_monitor
pushi.e -9
push.v [stacktop]self.turnoff
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.v self.queen_monitor
pushi.e -9
push.v [stacktop]self.con
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [31]

:[26]
push.v self.queen_monitor
pushi.e -9
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
push.v self.queen_monitor_frame
pushi.e -9
pushenv [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
popenv [29]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con
pushi.e 158
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[31]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [38]

:[32]
push.v self.queen_wall
pushi.e -9
pushenv [36]

:[33]
push.v self.image_xscale
push.d 0.1
cmp.d.v GT
bf [35]

:[34]
push.v self.image_xscale
push.d 0.8
mul.d.v
pop.v.v self.image_xscale
b [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [33]
push.v self.queen_wall
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [38]

:[37]
push.d 5.5
pop.v.d self.con

:[38]
push.v self.con
push.d 5.5
cmp.d.v EQ
bf [40]

:[39]
pushi.e 129
conv.i.v
pushi.e 80
conv.i.v
pushi.e 480
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.queen_wall
pushi.e 2884
push.v self.queen_wall
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.1
push.v self.queen_wall
pushi.e -9
pop.v.d [stacktop]self.image_xscale
pushi.e 2
push.v self.queen_wall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v 82.depth
pushi.e 80
add.i.v
push.v self.queen_wall
pushi.e -9
pop.v.v [stacktop]self.depth
push.d 5.6
pop.v.d self.con
pushi.e 0
pop.v.i self.timer

:[40]
push.v self.con
push.d 5.6
cmp.d.v EQ
bf [48]

:[41]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [43]

:[42]
pushi.e 155
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[43]
push.v self.queen_wall
pushi.e -9
pushenv [47]

:[44]
push.v self.image_xscale
pushi.e 2
cmp.i.v LT
bf [46]

:[45]
push.v self.image_xscale
push.d 1.25
mul.d.v
pop.v.v self.image_xscale
b [47]

:[46]
push.d 5.7
pop.v.d other.con
pushi.e 0
pop.v.i other.timer
pushi.e 2
pop.v.i self.image_xscale

:[47]
popenv [44]

:[48]
push.v self.con
push.d 5.7
cmp.d.v EQ
bf [51]

:[49]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [51]

:[50]
pushi.e 6
pop.v.i self.con

:[51]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [57]

:[52]
pushi.e 7
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.suppress
push.v self.knockout
pushi.e -9
pushenv [54]

:[53]
call.i instance_destroy(argc=0)
popz.v

:[54]
popenv [53]
push.v self.queen_wall
pushi.e -9
pushenv [56]

:[55]
call.i instance_destroy(argc=0)
popz.v

:[56]
popenv [55]
pushi.e 268
conv.i.v
pushi.e 280
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bularea
pushi.e 18
push.v self.bularea
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.bularea
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 397
pop.v.v [array]self.flag

:[57]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [end]

:[58]
pushi.e 99
pop.v.i self.con
pushi.e 270
pushenv [60]

:[59]
pushi.e 1
pop.v.i self.active

:[60]
popenv [59]

:[end]