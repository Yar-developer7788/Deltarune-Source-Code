.localvar 2 arguments

:[0]
push.v self.desk_marker
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.desk_marker
pushi.e -9
push.v [stacktop]self.visible
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [31]

:[4]
push.v self.standing
pushi.e 0
cmp.i.v EQ
bf [9]

:[5]
pushi.e 893
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[6]
pushi.e 893
pushenv [8]

:[7]
pushi.e 110
pop.v.i self.depth

:[8]
popenv [7]

:[9]
push.v self.standing
pushi.e 1
cmp.i.v EQ
bf [22]

:[10]
pushi.e 893
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [22]

:[11]
pushi.e 893
pushenv [21]

:[12]
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [19]

:[13]
push.v self.name
push.s "noelle"@74
cmp.s.v NEQ
bf [15]

:[14]
push.v self.name
push.s "berdly"@4870
cmp.s.v NEQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 0
pop.v.i self.depth

:[18]
b [21]

:[19]
push.v self.name
push.s "noelle"@74
cmp.s.v NEQ
bf [21]

:[20]
pushi.e 0
pop.v.i self.depth

:[21]
popenv [12]

:[22]
push.v self.standing
pushi.e 2
cmp.i.v EQ
bf [31]

:[23]
pushi.e 893
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [31]

:[24]
pushi.e 893
pushenv [30]

:[25]
push.v self.name
push.s "noelle"@74
cmp.s.v NEQ
bf [27]

:[26]
push.v self.name
push.s "berdly"@4870
cmp.s.v NEQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e 0
pop.v.i self.depth

:[30]
popenv [25]

:[31]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [35]

:[32]
pushi.e 2
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 82
pushenv [34]

:[33]
pushi.e 187
pop.v.i self.x
pushi.e 121
pop.v.i self.y
pushi.e 0
pop.v.i self.visible

:[34]
popenv [33]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
pushi.e 0
pop.v.i self.kr
pushi.e 893
conv.i.v
pushi.e 121
conv.i.v
pushi.e 187
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kr_actor
push.s "kris"@68
conv.s.v
push.v self.kr_actor
push.v self.kr
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 663
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
pop.v.i self.su
pushi.e 893
conv.i.v
pushi.e 114
conv.i.v
pushi.e 157
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 854
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 232203
setowner.e
pushi.e 14
conv.i.v
push.v self.su_actor
pushi.e -9
pushi.e 0
pop.v.v [array]self.specialsprite
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 2
pop.v.i self.no
pushi.e 893
conv.i.v
pushi.e 67
conv.i.v
pushi.e 201
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.no_actor
push.s "noelle"@74
conv.s.v
push.v self.no_actor
push.v self.no
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 387
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 3
pop.v.i self.be
pushi.e 893
conv.i.v
pushi.e 68
conv.i.v
pushi.e 166
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.be_actor
push.s "berdly"@4870
conv.s.v
push.v self.be_actor
push.v self.be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 381
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 4
pop.v.i self.bo_no
pushi.e 893
conv.i.v
pushi.e 100
conv.i.v
pushi.e 177
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bo_no_actor
push.s "books"@33544
conv.s.v
push.v self.bo_no_actor
push.v self.bo_no
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 385
push.v self.bo_no_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.bo_no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 5
pop.v.i self.bo_be
pushi.e 893
conv.i.v
pushi.e 100
conv.i.v
pushi.e 177
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bo_be_actor
push.s "books"@33544
conv.s.v
push.v self.bo_be_actor
push.v self.bo_be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 3328
push.v self.bo_be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.bo_be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v

:[35]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [48]

:[36]
pushi.e 3
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.whiteall
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "show_border"@15418
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GTE
bf [38]

:[37]
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
pushi.e 54
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 388
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
pushi.e 54
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 12
pop.v.i global.typer
pushi.e 0
pop.v.i global.darkzone
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_120_0"@33547
conv.s.v
push.s "\\EF* H-huh..^1. Berdly's..^1. alarm?/"@33548
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_121_0"@33549
conv.s.v
push.s "\\E4* A dream...? It was really just a.../%"@33550
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 386
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_131_0"@33551
conv.s.v
push.s "\\EE* Susie!?/"@33552
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_132_0"@33553
conv.s.v
push.s "\\ES* Susie^1! What are you doing here?/"@33554
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 3
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_134_0"@33555
conv.s.v
push.s "\\E3* Uhh.../"@33556
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_135_0"@33557
conv.s.v
push.s "\\E2* You invited us to study. Remember?/%"@33558
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 391
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_142_0"@33559
conv.s.v
push.s "\\E4* Oh^1, right^1! I did^1, didn't I^1! Haha!/"@33560
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_144_0"@33561
conv.s.v
push.s "\\E3* ..^1. uhh^1, you're in a good mood./"@33562
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_145_0"@33563
conv.s.v
push.s "\\EL* Did you^1, uh^1, have a good dream?/"@33564
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 4
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_147_0"@33565
conv.s.v
push.s "\\E4* It was a nightmare./"@33566
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 6
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_149_0"@33567
conv.s.v
push.s "\\E6* Oh./"@33568
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "b"@10271
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_151_0_b"@33569
conv.s.v
push.s "\\Eb* I'm..^1. just happy I woke up./"@33570
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 12
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_153_0"@33571
conv.s.v
push.s "\\EC* .../"@3407
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 6
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_155_0"@33572
conv.s.v
push.s "\\E6* The..^1. end was nice^1, though./"@33573
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 7
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_157_0"@33574
conv.s.v
push.s "\\E7* What happened?/%"@33575
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 386
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_168_0"@33576
conv.s.v
push.s "\\EM* HAHA^1, w-well^1, umm ---/%"@33577
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 389
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_175_0"@33578
conv.s.v
push.s "\\EO* HAHA HEY^1, Berdly time to get up and go!/%"@33579
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 390
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_184_0"@33580
conv.s.v
push.s "\\E5* ..^1. Berdly?/%"@33581
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 391
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 395
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "standing"@33538
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.bo_no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.bo_be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 396
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_208_0"@33582
conv.s.v
push.s "\\E4* Gosh^1, you've been studying too much^1, Berdly./"@33583
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_209_0"@33584
conv.s.v
push.s "\\E0* Honestly^1, you deserve a little rest^1, y'know?/"@33585
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_210_0"@33586
conv.s.v
push.s "\\E4* Sweet dreams!/%"@33587
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 397
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 22
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 23
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
pushi.e 24
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
pushi.e 34
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
pushi.e 51
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
pushi.e 23
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 395
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 23
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.desk_marker
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 396
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 34
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 398
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.kr
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
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 392
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 24
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_271_0"@33588
conv.s.v
push.s "\\EK* Wh..^1. what are you doing?/"@33589
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_273_0_b"@33590
conv.s.v
push.s "\\E0* You don't have a tail^1, do you^1, Susie?/"@33591
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 17
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_275_0"@33592
conv.s.v
push.s "\\EH* H-huh!? N-no way^1, of course not!/"@33593
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 4
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_277_0"@33594
conv.s.v
push.s "\\E4* Really? That's great!/%"@33595
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 395
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.2
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 100
conv.i.v
pushi.e 3
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_289_0"@33596
conv.s.v
push.s "\\E0* ...That was weird^1, Kris./"@33597
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_290_0"@33598
conv.s.v
push.s "\\EC* Somehow^1, it doesn't feel like we just saved the world.../%"@33599
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
b [47]

:[38]
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 382
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_113_0"@33600
conv.s.v
push.s "\\E3* H..^1. huh...?/"@33601
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_114_0"@33602
conv.s.v
push.s "* What..^1. what happened?/%"@33603
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 388
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_122_0"@33604
conv.s.v
push.s "\\E9* Oh..^1. it WAS a dream^1, wasn't it.../"@33605
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_124_0"@33606
conv.s.v
push.s "\\E3* Huh..^1. A dream? That was all..^1. A DREAM?/"@33607
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_125_0"@33608
conv.s.v
push.s "\\E0* .../"@2604
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_126_0"@33609
conv.s.v
push.s "\\E5* ..^1. Of..^1. of course!^1! That MUST have been a dream!!/"@33610
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_127_0"@33611
conv.s.v
push.s "\\E6* Such feelings..^1. such thoughts..^1. Oh^1, sweet lady of justice!!/"@33612
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_128_0"@33613
conv.s.v
push.s "\\E7* To think^1, I would ever think Susie would be.../%"@33614
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 386
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 380
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_141_0"@33615
conv.s.v
push.s "\\E3* SUSIE!?/"@33616
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "B"@3500
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_143_0"@33617
conv.s.v
push.s "\\EB* S..^1. Susie!? Wh..^1. What are you doing here!?/%"@33618
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_151_0"@33619
conv.s.v
push.s "* Uhhhh^1,/"@33620
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_152_0"@33621
conv.s.v
push.s "\\E3* ..^1. you invited us to study. Remember?/%"@33622
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 391
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 384
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_163_0"@33623
conv.s.v
push.s "\\EJ* O-oh^1, right^1, I^1, err-- I--/%"@33624
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 383
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 389
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_173_0"@33625
conv.s.v
push.s "\\E3* What!? Studying with THEM??/"@33626
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_174_0"@33627
conv.s.v
push.s "\\EI* Noelle!^1! Heavens to yikes!^1! They're..^1. they're.../%"@33628
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 384
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_182_0"@33629
conv.s.v
push.s "\\E9* .../%"@21934
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 383
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_189_0"@33630
conv.s.v
push.s "\\E5* ..^1. Well^1, I guess we could..^1. TRY it./%"@33631
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
pushi.e 54
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 380
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_202_0"@33632
conv.s.v
push.s "\\E3* H..^1. Huh?? My..^1. my alarm??/%"@33633
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_206_0"@33634
conv.s.v
push.s "\\E3* Ahh^1, I'm going to be late for my shift with Ms. Boom!!/%"@33635
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 386
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_214_0"@33636
conv.s.v
push.s "\\EE* Oh no^1, how is it that late already!?/%"@33637
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 384
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushi.e 2
conv.i.v
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v

:[40]
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 389
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_226_0"@33638
conv.s.v
push.s "\\E1* Well^1, adieu^1, everyone. I must gather my booklongings./%"@33639
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.bo_be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "standing"@33538
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 3286
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_469_0"@33640
conv.s.v
push.s "\\E1* Ahh^1, how I love the texture of freshly-picked-up books!/%"@33641
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 391
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 395
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.bo_no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 396
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 9
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
push.s "standing"@33538
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_493_0"@33642
conv.s.v
push.s "* Now^1, let us hasten^1, my dear Noelle!/%"@33643
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
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 3286
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 9
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 37
conv.i.v
pushi.e 55
conv.i.v
pushi.e 264
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.d 0.25
conv.d.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 38
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 3286
conv.i.v
push.s "sprite"@9580
conv.s.v
pushi.e 38
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 30
conv.i.v
pushi.e 3
conv.i.v
push.s "d"@6706
conv.s.v
pushi.e 38
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
push.d 0.25
conv.d.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 69
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 3330
conv.i.v
push.s "sprite"@9580
conv.s.v
pushi.e 69
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 20
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
pushi.e 69
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
pushi.e 3329
conv.i.v
push.s "sprite"@9580
conv.s.v
pushi.e 90
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 90
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
b [43]

:[42]
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 378
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "?"@4913
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 379
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_237_0"@33644
conv.s.v
push.s "\\E5* H..^1. huh? That's funny^1, my right arm..^1. won't move./"@33645
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "C"@9479
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_239_0"@33646
conv.s.v
push.s "\\EC* O-oh...? It must have fallen asleep./%"@33647
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 391
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 395
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "standing"@33538
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.bo_no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.bo_be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 396
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_264_0"@33648
conv.s.v
push.s "\\E4* Here. I'll carry your books for you^1, Berdly./%"@33649
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 410
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
push.s "standing"@33538
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_273_0"@33650
conv.s.v
push.s "\\E5* Ah^1, Noelle..^1. You're..^1. always helping me. Thank you./%"@33651
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
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 3299
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 3299
conv.i.v
pushi.e 410
conv.i.v
pushi.e 0
conv.i.v
push.v self.be_actor
call.i gml_Script_c_actorsetsprites(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 37
conv.i.v
pushi.e 3
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 30
conv.i.v
pushi.e 3
conv.i.v
push.s "d"@6706
conv.s.v
pushi.e 38
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
pushi.e 20
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
pushi.e 69
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
push.s "u"@6708
conv.s.v
pushi.e 90
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v

:[43]
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 397
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 22
conv.i.v
pushi.e 50
conv.i.v
pushi.e 263
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 23
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
pushi.e 24
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
pushi.e 34
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
pushi.e 51
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
pushi.e 23
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 395
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 23
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.desk_marker
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 396
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 34
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 398
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.kr
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
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_325_0"@33652
conv.s.v
push.s "* ..^1. Good day^1, Kris. ..^1. Susie./%"@33653
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
b [46]

:[45]
pushi.e 3286
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v

:[46]
pushi.e 14
conv.i.v
pushi.e 181
conv.i.v
pushi.e 148
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_334_0"@33654
conv.s.v
push.s "\\E0* Bye Kris!/"@33655
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_335_0"@33656
conv.s.v
push.s "\\EO* And..^1. umm..^1. bye^1, Susie!/%"@33657
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_346_0"@33658
conv.s.v
push.s "\\EB* Umm..^1. see ya./%"@33659
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
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 395
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 398
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 392
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 24
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 402
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -15
conv.i.v
push.v self.su_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 215
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 400
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 67
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 3
conv.i.v
pushi.e 139
conv.i.v
pushi.e 142
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "susie_mad"@33540
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_402_0"@33660
conv.s.v
push.s "\\EH* WHAT!? WHAT!? Are you looking for something!?/%"@33661
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 219
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 395
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 5
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 63
conv.i.v
push.s "soundplay"@4
conv.s.v
pushi.e 20
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 0
conv.b.v
push.s "susie_mad"@33540
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 139
conv.i.v
pushi.e 142
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_418_0"@33662
conv.s.v
push.s "\\EE* N-nothing!^1! B-bye!!/%"@33663
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 15
conv.i.v
push.v self.su_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 23
conv.i.v
pushi.e 1
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_434_0"@33664
conv.s.v
push.s "* The heck is her problem^1, anyway?/"@33665
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_435_0"@33666
conv.s.v
push.s "* Way to treat someone who just saved the WORLD./%"@33667
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[47]
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 21
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 14
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 18
conv.i.v
push.v self.su_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_460_0"@33668
conv.s.v
push.s "\\EE* KRIS!^1! Hey^1, wait a sec^1, Kris!!/"@33669
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_461_0"@33670
conv.s.v
push.s "\\EP* We..^1. we just actually saved the world^1, didn't we!?/"@33671
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_462_0"@33672
conv.s.v
push.s "\\EP* Damn^1, we really are heroes^1!/"@33673
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_463_0"@33674
conv.s.v
push.s "\\EN* And no one even knows!/%"@33675
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 848
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -2
conv.i.v
pushi.e 0
conv.i.v
push.v self.su_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_478_0"@33676
conv.s.v
push.s "\\EO* ..^1. guess it's better that way though^1, right?/%"@33677
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_485_0"@33678
conv.s.v
push.s "\\EP* People'd freak out if they knew the world's in danger./%"@33679
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 858
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -2
conv.i.v
pushi.e -5
conv.i.v
push.v self.su_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_495_0"@33680
conv.s.v
push.s "\\EB* ..^1. though^1, kinda sucks Noelle has to forget^1, too.../"@33681
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_496_0"@33682
conv.s.v
push.s "\\E0* .../%"@3988
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
push.v self.su_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_506_0"@33683
conv.s.v
push.s "\\E1* Whatever. Let's get out of here./%"@33684
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
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 162
conv.i.v
pushi.e 146
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 63
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[48]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [50]

:[49]
pushi.e 50
pop.v.i self.con
pushi.e 0
pop.v.i global.facing
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[50]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [52]

:[51]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 51
pop.v.i self.con
pushi.e 200
pop.v.i global.plot
pushi.e 1
conv.b.v
push.s "GIVE_DEPTH"@33536
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1157
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.desk_marker
call.i instance_destroy(argc=1)
popz.v

:[55]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [57]

:[56]
push.v 82.y
pushi.e 186
cmp.i.v GTE
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.b self.kris_leave
pushi.e 52
pop.v.i self.con

:[60]
push.v self.kris_leave
conv.v.b
bf [62]

:[61]
push.v self.con
pushi.e 52
cmp.i.v EQ
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
pushi.e 53
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.blackall
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "no_one"@23186
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene28b_slash_Step_0_gml_561_0"@33685
conv.s.v
push.s "* (Before you left, you gathered up everything in the room...)/%"@33686
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[65]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [67]

:[66]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e 55
pop.v.i self.con
pushi.e 3
pop.v.i global.interact
pushi.e 23
pop.v.i global.entrance
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 52
conv.i.v
call.i room_goto(argc=1)
popz.v

:[70]
push.v self.susie_mad
conv.v.b
bf [end]

:[71]
push.v self.susie_mad_timer
push.e 1
add.i.v
pop.v.v self.susie_mad_timer
push.v self.susie_mad_timer
pushi.e 2
cmp.i.v GTE
bf [end]

:[72]
pushi.e 0
pop.v.i self.susie_mad_timer
push.v self.su_actor
pushi.e -9
pushenv [74]

:[73]
pushi.e 142
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=4)
add.v.i
pop.v.v self.x
pushi.e 139
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=4)
add.v.i
pop.v.v self.y

:[74]
popenv [73]

:[end]