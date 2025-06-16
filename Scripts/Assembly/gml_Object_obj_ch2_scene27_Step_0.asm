.localvar 2 arguments
.localvar 32951 bigqueen 16845
.localvar 6113 small_text 16847
.localvar 33517 shakething 16849
.localvar 33518 dmgsnd 16850
.localvar 18066 screen 16851

:[0]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.actor_count
pushi.e 1
add.i.v
pop.v.v self.su
pushi.e 893
conv.i.v
pushi.e 130
conv.i.v
pushi.e 1670
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 820
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.actor_count
pushi.e 2
add.i.v
pop.v.v self.ra
pushi.e 893
conv.i.v
pushi.e 130
conv.i.v
pushi.e 1670
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ra_actor
push.s "ralsei"@72
conv.s.v
push.v self.ra_actor
push.v self.ra
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 785
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.actor_count
pushi.e 3
add.i.v
pop.v.v self.qu
pushi.e 893
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 80
add.i.v
pushi.e 510
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.qu_actor
push.s "queen"@3525
conv.s.v
push.v self.qu_actor
push.v self.qu
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 768
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.actor_count
pushi.e 4
add.i.v
pop.v.v self.no
pushi.e 893
conv.i.v
pushi.e 210
conv.i.v
pushi.e 400
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.no_actor
push.s "noelle"@74
conv.s.v
push.v self.no_actor
push.v self.no
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 212
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.actor_count
pushi.e 5
add.i.v
pop.v.v self.be
pushi.e 893
conv.i.v
pushi.e 240
conv.i.v
pushi.e -60
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.be_actor
push.s "berdly"@4870
conv.s.v
push.v self.be_actor
push.v self.be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 674
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 324
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 100
add.i.v
pushi.e 78
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.queenfistleft
push.i 1000100
push.v self.queenfistleft
pushi.e -9
pop.v.i [stacktop]self.depth
push.d 0.15
push.v self.queenfistleft
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 232289
setowner.e
push.v self.id
push.v self.cutscene_master
pushi.e -9
pushi.e 0
pop.v.v [array]self.save_object

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [31]

:[3]
pushi.e 10
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
conv.i.v
pushi.e 988
conv.i.v
call.i instance_find(argc=2)
pop.v.v local.bigqueen
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 464
conv.i.v
push.s "head_y_pos"@32953
conv.s.v
pushloc.v local.bigqueen
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 464
conv.i.v
push.s "rem_head_y_pos"@32954
conv.s.v
pushloc.v local.bigqueen
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.blackall
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 120
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "queen_2"@9301
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_fefc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_70_0"@33268
conv.s.v
push.s "\\E1* Noelle/%"@33269
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "climb"@32986
conv.s.v
pushloc.v local.bigqueen
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 41
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_71_0"@33270
conv.s.v
push.s "\\E1* Darling/%"@33271
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "climb"@32986
conv.s.v
pushloc.v local.bigqueen
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 41
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_72_0"@33272
conv.s.v
push.s "\\E1* Honey/%"@33273
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "climb"@32986
conv.s.v
pushloc.v local.bigqueen
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 41
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_73_0"@33274
conv.s.v
push.s "\\E1* Sweetie/%"@33275
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "climb"@32986
conv.s.v
pushloc.v local.bigqueen
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 41
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_74_0"@33276
conv.s.v
push.s "\\E1* Gravy/%"@33277
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "hand_release"@32775
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "wind_highplace.ogg"@19759
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen_2"@9301
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_fefc(argc=2)
popz.v
pushi.e 1
conv.b.v
push.s "set_queen_voice"@32752
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_82_0"@33278
conv.s.v
push.s "\\E6* Take..^1. The Pin..^1. I Gave You/"@33279
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_83_0"@33280
conv.s.v
push.s "\\E6* And..^1. Stab The Earth/"@33281
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_84_0"@33282
conv.s.v
push.s "\\E7* Creating..^1. Our New..^1. Supreme Empire/"@33283
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 12
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_86_0"@33284
conv.s.v
push.s "\\EC* I..^1. I.../"@33285
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "B"@3500
conv.s.v
push.s "queen2"@9320
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_88_0"@33286
conv.s.v
push.s "\\EB* What's..^1. Wrong..^1. Noelle?/"@33287
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_89_0"@33288
conv.s.v
push.s "\\EB* I Know It Would..^1. Make You..^1. Happy/"@33289
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_90_0"@33290
conv.s.v
push.s "\\EB* Or..^1. Should I^1, With The Last 1`% Of My Battery.../%"@33291
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 212
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "shake_hand"@32772
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "shake_hand"@32772
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "shake_hand"@32772
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 50
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen_2"@9301
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_fefc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_103_0"@33292
conv.s.v
push.s "\\E7* Crush Susie Into 8..^1. Bits?/%"@33293
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_112_0"@33294
conv.s.v
push.s "\\EW* Leave.../%"@33295
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 191
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 736
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 349
conv.i.v
push.s "head_sprite"@33230
conv.s.v
pushloc.v local.bigqueen
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_125_0"@33296
conv.s.v
push.s "\\Ef* Leave Susie ALONE!!/"@33297
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_126_0"@33298
conv.s.v
push.s "\\Ef* You think listening to YOU makes me happy!?/"@33299
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_127_0"@33300
conv.s.v
push.s "\\Ef* No!/"@33301
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_128_0"@33302
conv.s.v
push.s "\\Ef* I'll never be happy^1! Not if I'm controlled by you!/"@33303
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_129_0"@33304
conv.s.v
push.s "\\Ef* Why can't you understand that!?/"@33305
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "5"@5306
conv.s.v
push.s "queen2"@9320
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_131_0"@33306
conv.s.v
push.s "\\E5* .../"@2857
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_132_0"@33307
conv.s.v
push.s "\\E5* .../"@2857
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_133_0"@33308
conv.s.v
push.s "\\E5* ..^1. Noelle.../"@33309
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_134_0"@33310
conv.s.v
push.s "\\E5* Perhaps My Computations Were/"@33311
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_135_0"@33312
conv.s.v
push.s "\\E5* Miscalibrated/"@33313
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 12
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_137_0"@33314
conv.s.v
push.s "\\EC* .../"@3407
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "5"@5306
conv.s.v
push.s "queen2"@9320
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_139_0"@33315
conv.s.v
push.s "\\E5* Noelle/"@33316
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_140_0"@33317
conv.s.v
push.s "\\E5* Disregard..^1. Me..^1. And.../"@33318
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_141_0"@33319
conv.s.v
push.s "\\E5* With Your Own Power/"@33320
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_142_0"@33321
conv.s.v
push.s "\\E1* Choose The World..^1. That Makes You Happy/%"@33322
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "queen_sad"@33267
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 14
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "queen_happy"@33266
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_wait_talk(argc=0)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.d 0.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 236
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "damagedfx"@33229
conv.s.v
pushloc.v local.bigqueen
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "static_queen"@33259
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "su_shocked"@32778
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "ra_look"@32788
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "su_look_right"@32780
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_161_0"@33323
conv.s.v
push.s "\\E2* ..^1. Queen?/"@33324
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_162_0"@33325
conv.s.v
push.s "\\EC* Q-Queen!/"@33326
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_163_0"@33327
conv.s.v
push.s "\\ED* Queen^1, are you okay...?/"@33328
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "I"@9483
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_165_0"@33329
conv.s.v
push.s "\\EI* Seems she ran out of battery power./"@33330
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_166_0"@33331
conv.s.v
push.s "\\E2* Guess we can seal the fountain now^1, right everybody?/%"@33332
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 745
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "ra_smile"@32789
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "ra_look"@32788
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_173_0"@33333
conv.s.v
push.s "\\EK* Everybody?/%"@33334
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "noelle_normal.ogg"@31825
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_180_0"@33335
conv.s.v
push.s "\\Ee* Queen..^1. she said.../"@33336
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_181_0"@33337
conv.s.v
push.s "\\Ee* \"Choose the world that makes you happy...\"/"@33338
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_182_0"@33339
conv.s.v
push.s "\\Ee* I..^1. don't want to live in a world ruled by her./"@33340
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_183_0"@33341
conv.s.v
push.s "\\Ed* ..^1. but^1, if that wasn't the case.../"@33342
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_184_0"@33343
conv.s.v
push.s "\\Eb* I wonder if this world..^1. wouldn't be so bad?/"@33344
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 21
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_186_0"@33345
conv.s.v
push.s "\\EL* Huh?/"@33346
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "b"@10271
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_188_0"@33347
conv.s.v
push.s "\\Eb* ..^1. Susie^1, don't you think so too...?/"@33348
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 6
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_190_0"@33349
conv.s.v
push.s "\\E6* I..^1. uh^1,/"@33350
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_191_0"@33351
conv.s.v
push.s "\\ED* Now that you mention it.../"@33352
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_192_0"@33353
conv.s.v
push.s "\\E2* Kris^1, isn't this world just..^1. BETTER?/"@33354
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_193_0"@33355
conv.s.v
push.s "\\EA* We make so many..^1. friends here. Y'know?/"@33356
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_195_0"@33357
conv.s.v
push.s "\\E2* I've never..^1. had an adventure like this before./"@33358
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_197_0"@33359
conv.s.v
push.s "\\E2* With axes..^1. and battles..^1. and magic./"@33360
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "9"@9478
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_199_0"@33361
conv.s.v
push.s "\\E9* Where everything can be healed with a little spell./"@33362
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "Q"@9489
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_201_0"@33363
conv.s.v
push.s "\\EQ* And no matter what happens.../"@33364
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_202_0"@33365
conv.s.v
push.s "\\EY* No one tells us what to do!/"@33366
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 8
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_204_0"@33367
conv.s.v
push.s "\\E8* Gosh^1, yeah!/"@33368
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_205_0"@33369
conv.s.v
push.s "\\E9* S-so^1, even if things were really scary just now.../"@33370
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_206_0"@33371
conv.s.v
push.s "\\Ed* ..^1. I mean.../%"@33372
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 744
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 746
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 744
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 745
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "ra_huh"@32787
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 744
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "su_look_left"@32779
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "su_grin_1"@32781
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 745
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 19
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 744
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 21
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "su_grin_2"@32782
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 22
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "su_grin_1"@32781
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 24
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 745
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 25
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "su_look_right"@32780
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 728
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 26
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 744
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "su_squint_2"@32784
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
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 674
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [6]

:[5]
pushi.e 334
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[6]
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 222
conv.i.v
pushi.e 262
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 41
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "imageindex"@9827
conv.s.v
pushi.e 41
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 743
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 20
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_221_0"@33373
conv.s.v
push.s "\\EI* So is there any reason not to...?/"@33374
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "4"@608
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_223_0"@33375
conv.s.v
push.s "\\E4* Not that I can think of./"@33376
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_225_0"@33377
conv.s.v
push.s "\\E2* Me neither./"@33378
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "5"@5306
conv.s.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_227_0"@33379
conv.s.v
push.s "\\E5* Then^1, Noelle..^1. let THIS be my real apology!/%"@33380
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 742
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "su_squint_1"@32783
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 743
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "su_squint_2"@32784
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
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 949
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [9]

:[8]
pushi.e 331
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[9]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.be_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 140
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "berdly_power_up_start"@33256
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "berdly_power_up"@33257
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "gigaqueen_pre.ogg"@32928
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_244_0"@33381
conv.s.v
push.s "\\E4* Concentrating my will into this blade.../"@33382
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_245_0"@33383
conv.s.v
push.s "\\EI* I will make a new Fountain.../"@33384
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_246_0"@33385
conv.s.v
push.s "\\E4* And unleash a bright future!/"@33386
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_378_0"@33387
conv.s.v
push.s "* A future that shines for US!/"@33388
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_247_0"@33389
conv.s.v
push.s "* A future whose brightness... is born from DARKNESS!/%"@33390
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "berdly_power_up_cancel"@33258
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "pause"@9836
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 3344
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [12]

:[11]
pushi.e 354
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[12]
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 747
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "su_concerned"@32785
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
push.s "pause"@9836
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 217
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "ra_scared"@32790
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_403_0"@33391
conv.s.v
push.s "\\EY* STOP!/%"@33392
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_256_0"@33393
conv.s.v
push.s "\\EY* What.../"@33394
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_257_0"@33395
conv.s.v
push.s "\\EZ* In the world are you all doing?/%"@33396
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "resume"@9837
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 3284
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [15]

:[14]
pushi.e 329
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[15]
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_268_0"@33397
conv.s.v
push.s "\\EI* Well^1, we thought we would just%%"@33398
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "su_look_right"@32780
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 3268
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [18]

:[17]
pushi.e 356
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[18]
push.s "pause"@9836
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 217
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_275_0"@33399
conv.s.v
push.s "\\EY* Stop./%"@33400
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "resume"@9837
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 3284
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [21]

:[20]
pushi.e 329
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[21]
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_277_0"@33401
conv.s.v
push.s "\\E3* I mean -%%"@33402
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
bf [23]

:[22]
pushi.e 2995
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [24]

:[23]
pushi.e 353
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[24]
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 217
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "ra_shake"@32793
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_283_0"@33403
conv.s.v
push.s "\\EY* Stop!/"@33404
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_284_0"@33405
conv.s.v
push.s "\\EZ* Do you realize what will happen if you do that?/"@33406
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 5
conv.i.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_286_0"@33407
conv.s.v
push.s "\\E5* I..^1. we'll..^1. just.../"@33408
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "T"@9492
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_288_0"@33409
conv.s.v
push.s "\\ET* You'll bring the Roaring./%"@33410
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 3339
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [27]

:[26]
pushi.e 355
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[27]
pushi.e 5
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "ra_stern"@32791
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
pushi.e 2995
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [30]

:[29]
pushi.e 353
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[30]
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 0
conv.i.v
push.s "image_blend"@275
conv.s.v
push.v self.blackall
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
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
pushi.e 1
conv.b.v
push.s "hide_border"@30864
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[31]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [33]

:[32]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e 12
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
pop.v.b builtin.room_persistent
pushi.e 235
conv.i.v
call.i room_goto(argc=1)
popz.v

:[36]
push.v self.con
pushi.e 13
cmp.i.v EQ
bt [38]

:[37]
call.i gml_Script_scr_cutscene_loaded(argc=0)
conv.v.b
b [39]

:[38]
push.e 1

:[39]
bf [80]

:[40]
pushi.e 0
pop.v.b builtin.room_persistent
pushi.e 1
pop.v.b self.static_queen_stop
pushi.e 49
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 0
conv.b.v
push.s "hide_border"@30864
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "show_border"@15418
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 222
conv.i.v
pushi.e 220
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 337
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "queen_surprised"@32773
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "su_shocked"@32778
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "image_blend"@275
conv.s.v
push.v self.blackall
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.blackall
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 165
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "ra_look"@32788
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_343_0"@33412
conv.s.v
push.s "\\E8* Oh Damn I Did Not Know That/"@33413
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "L"@9485
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_345_0"@33414
conv.s.v
push.s "\\EL* You..^1. didn't!?/"@33415
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_346_0"@33416
conv.s.v
push.s "\\EC* But your whole plan was to --/%"@33417
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "ra_huh"@32787
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "ra_scared"@32790
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "su_squint_1"@32783
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "ra_mu"@32792
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "queen_laugh_start"@32755
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 676
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [43]

:[42]
pushi.e 336
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[43]
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_361_0"@33418
conv.s.v
push.s "\\EN* I'm Just A Computer LMAO I Don't Know Everything/"@33419
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_362_0"@33420
conv.s.v
push.s "\\ED* I Was Just Guessing Based Off The Knight's Actions/"@33421
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_363_0"@33422
conv.s.v
push.s "\\EB* Why The Heck (Hell) Would I Want To End The World/%"@33423
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "queen_laugh_stop"@32756
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
pushi.e 674
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [46]

:[45]
pushi.e 334
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[46]
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 743
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "noelle_school.ogg"@30114
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_377_0"@33424
conv.s.v
push.s "\\EI* W..^1. well^1, that's a relief!/%"@33425
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
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
pushi.e 675
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [49]

:[48]
pushi.e 335
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[49]
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_388_0"@33426
conv.s.v
push.s "\\E5* Uhh..^1. ummm..^1. I'm sorry. I..^1. I.../"@33427
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_389_0"@33428
conv.s.v
push.s "\\E8* After everything^1, I just caused trouble for you again^1, Noelle./"@33429
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 13
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_656_0"@33430
conv.s.v
push.s "I Thought About It While Charging My Battery"@33431
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.small_text
pushloc.v local.small_text
push.s "bottom"@4636
conv.s.v
push.s "leftmid"@6224
conv.s.v
pushi.e 1
conv.i.v
push.s "queen"@3525
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_391_0"@33432
conv.s.v
push.s "\\ED* That's Okay Berdly I Understand \\f1 /"@33433
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_392_0"@33434
conv.s.v
push.s "\\E1* You Cannot Calculate Other People's Feelings/%"@33435
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
pushi.e 682
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [52]

:[51]
pushi.e 375
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[52]
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
pushi.e 676
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [55]

:[54]
pushi.e 336
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[55]
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_402_0"@33436
conv.s.v
push.s "\\E3* You..^1. you understand how I feel?/%"@33437
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "queen_laugh_start"@32755
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_417_0"@33438
conv.s.v
push.s "\\EN* Not Really LMAO I Just Don't Want Noelle To Be Sad/%"@33439
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "queen_laugh_stop"@32756
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 223
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
pushi.e 674
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [58]

:[57]
pushi.e 334
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[58]
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_437_0"@33440
conv.s.v
push.s "\\E4* Haha^1, well..^1. I'm glad..^1. you two kind of get it now./%"@33441
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
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
pushi.e 680
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [61]

:[60]
pushi.e 339
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[61]
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_446_0"@33442
conv.s.v
push.s "\\EE* Guess we all..^1. made a pretty sweet team in the end./%"@33443
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 288
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 731
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
pushi.e 695
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [64]

:[63]
pushi.e 338
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[64]
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "queen_laugh_start"@32755
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 99
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "queen_laugh_stop"@32756
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_486_0"@33444
conv.s.v
push.s "\\EI* No We Freaking Didn't?/%"@33445
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "su_look_right"@32780
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_494_0"@33446
conv.s.v
push.s "\\EH* CAN YOU LET GO OF US NOW!?/%"@33447
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_498_0"@33448
conv.s.v
push.s "\\ED* Oh Yeah/%"@33449
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
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
pushi.e 674
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [67]

:[66]
pushi.e 334
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[67]
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "hand_leave"@32776
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 284
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 135
conv.i.v
pushi.e 145
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 863
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 118
conv.i.v
pushi.e 65
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1006
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 90
conv.i.v
pushi.e 174
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 780
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 216
conv.i.v
pushi.e 157
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 228
conv.i.v
pushi.e 110
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 211
conv.i.v
pushi.e 54
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "queen_leave"@32774
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "r"@6696
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
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 4
conv.i.v
pushi.e 224
conv.i.v
pushi.e 54
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 36
conv.i.v
pushi.e 224
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 4
conv.i.v
pushi.e 211
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 223
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_567_0"@33450
conv.s.v
push.s "\\E4* S..^1. Susie!!/%"@33451
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 819
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_575_0"@33452
conv.s.v
push.s "\\E2* Hey^1, you stood up to Queen. Not half bad./%"@33453
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
pushi.e 738
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_583_0"@33454
conv.s.v
push.s "\\E3* R..^1. really?/"@33455
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "A"@1192
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_585_0"@33456
conv.s.v
push.s "\\EA* Uh^1, yeah./%"@33457
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_592_0"@33458
conv.s.v
push.s "\\EK* ..^1. just^1, guess you gotta wake up soon^1, huh?/%"@33459
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
pushi.e 717
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_599_0"@33460
conv.s.v
push.s "\\EN* H-huh?/%"@33461
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
pushi.e 215
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_609_0"@33462
conv.s.v
push.s "\\E8* (Everything got so intense^1, I forgot it was a dream...)/%"@33463
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
push.s "d"@6706
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
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_620_0"@33464
conv.s.v
push.s "\\E9* Then..^1. I just hope.../%"@33465
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
pushi.e 223
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_629_0"@33466
conv.s.v
push.s "\\E4* I get to have more dreams like this./%"@33467
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_637_0"@33468
conv.s.v
push.s "\\E0* .../%"@3988
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_644_0"@33469
conv.s.v
push.s "\\EC* Hey^1, Noelle^1, when you wake up..^1. um.../%"@33470
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_651_0"@33471
conv.s.v
push.s "\\EK* Well^1, I just wanted to say..^1. uhh.../%"@33472
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 283
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 342
conv.i.v
pushi.e 518
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 290
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 503
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 45
conv.i.v
pushi.e 178
conv.i.v
pushi.e 452
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 178
conv.i.v
pushi.e 492
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
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
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [69]

:[68]
pushi.e 674
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [70]

:[69]
pushi.e 334
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[70]
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_682_0"@33473
conv.s.v
push.s "\\E1* Well Then I Suppose It Is Time For You All To Exit/"@33474
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_683_0"@33475
conv.s.v
push.s "\\EB* Running Program..^1. Tender Goodbye.EXE/"@33476
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_684_0"@33477
conv.s.v
push.s "\\ED* I Will Miss Each Of You/"@33478
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_685_0"@33479
conv.s.v
push.s "\\E9* Noelle^1, Your Un-needed Honesty/"@33480
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_686_0"@33481
conv.s.v
push.s "\\E1* Susie^1, Your Foolish Bravery/"@33482
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_687_0"@33483
conv.s.v
push.s "\\EB* Kris^1, Your Chill Vibes/"@33484
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_688_0"@33485
conv.s.v
push.s "\\ED* .../"@33486
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_689_0"@33487
conv.s.v
push.s "\\EF* B...Burghley?/%"@33488
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 61
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.4
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 15
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 20
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 1
conv.b.v
push.s "tender_goodbye"@33206
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.no
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
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
pushi.e 676
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [73]

:[72]
pushi.e 336
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[73]
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "noelle_qs"@33262
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "susie_qs"@33263
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "kris_qs"@33264
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 7
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "berdly_qs"@33265
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.no
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
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 813
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
push.v self.ra_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_711_0"@33489
conv.s.v
push.s "\\E2* It doesn't have to be goodbye^1, Queen!/"@33490
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_712_0"@33491
conv.s.v
push.s "\\E2* Kris can take you back to our Castle Town!/"@33492
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_713_0"@33493
conv.s.v
push.s "\\EH* You and all our recruits can live there!/"@33494
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 3
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_715_0"@33495
conv.s.v
push.s "\\E3* Oh/%"@33496
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e -5
conv.i.v
pushi.e 0
conv.i.v
push.v self.ra_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 10
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "tender_cancel"@33209
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "tender_finish"@33261
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_728_0"@33497
conv.s.v
push.s "\\E1* Deleting Tender Goodbye.EXE/%"@33498
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
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 833
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [75]

:[74]
pushi.e 674
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [76]

:[75]
pushi.e 334
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[76]
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_734_0"@33499
conv.s.v
push.s "\\E2* Alright^1! Time to do what we came here for.../%"@33500
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
pushi.e 748
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_742_0"@33501
conv.s.v
push.s "\\E6* .../%"@31727
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
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
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 223
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_750_0"@33502
conv.s.v
push.s "\\E0* Hey^1, Noelle./"@33503
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_751_0"@33504
conv.s.v
push.s "\\EC* ..^1. If you see the real Susie^1, just.../%"@33505
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
call.i gml_Script_c_waittalk(argc=0)
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
push.s "obj_ch2_scene27_slash_Step_0_gml_759_0"@33506
conv.s.v
push.s "\\EK* Just know that maybe^1, she's.../%"@33507
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
pushi.e 45
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_769_0"@33508
conv.s.v
push.s "\\EH* Look^1, she doesn't have a tail^1, OK!?/%"@33509
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
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 731
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_778_0"@33510
conv.s.v
push.s "It's not a secret!!"@33511
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
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_780_0"@33512
conv.s.v
push.s "\\ER* Hahaha^1, okay^1! I got it!!\\f0/%"@33513
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene27_slash_Step_0_gml_788_0"@33514
conv.s.v
push.s "\\EK* (Let's just go^1, Kris!!!)/%"@33515
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 813
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
push.v self.ra_actor
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
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
pushi.e 695
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [79]

:[78]
pushi.e 338
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[79]
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 32
conv.i.v
pushi.e 8
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 80
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 80
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 60
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
pushi.e 0
conv.b.v
push.s "show_border"@15418
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "hide_border"@30864
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 180
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[80]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [82]

:[81]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [83]

:[82]
push.e 0

:[83]
bf [87]

:[84]
pushi.e 99
pop.v.i self.con
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 0
cmp.i.v EQ
bf [86]

:[85]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 388
pop.v.v [array]self.flag

:[86]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 171
pop.v.i global.plot
pushi.e 271
conv.i.v
call.i room_goto(argc=1)
popz.v

:[87]
push.v self.berdly_power_up_start
conv.v.b
bf [89]

:[88]
pushi.e 0
pop.v.b self.berdly_power_up_start
pushi.e 991
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 180
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.berdly_halberd

:[89]
push.v self.berdly_power_up
conv.v.b
bf [93]

:[90]
pushi.e 0
pop.v.b self.berdly_power_up
push.v self.berdly_halberd
pushi.e -9
pushenv [92]

:[91]
pushi.e 4
pop.v.i self.con

:[92]
popenv [91]

:[93]
push.v self.berdly_power_up_cancel
conv.v.b
bf [97]

:[94]
pushi.e 0
pop.v.b self.berdly_power_up_cancel
push.v self.berdly_halberd
pushi.e -9
pushenv [96]

:[95]
pushi.e 5
pop.v.i self.con

:[96]
popenv [95]

:[97]
push.v self.shake_hand
conv.v.b
bf [102]

:[98]
pushi.e 0
pop.v.b self.shake_hand
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [102]

:[99]
pushi.e 990
pushenv [101]

:[100]
call.i gml_Script_scr_shakeobj(argc=0)
pop.v.v local.shakething
pushi.e 20
push.v self.shakeobj
pushi.e -9
pop.v.i [stacktop]self.shakeamt

:[101]
popenv [100]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v local.dmgsnd
push.d 0.8
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
pushloc.v local.dmgsnd
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[102]
push.v self.tender_goodbye
conv.v.b
bf [107]

:[103]
pushi.e 0
pop.v.b self.tender_goodbye
pushi.e 986
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [107]

:[104]
pushi.e 986
pushenv [106]

:[105]
pushi.e 1
pop.v.b self.tender_goodbye

:[106]
popenv [105]

:[107]
push.v self.tender_cancel
conv.v.b
bf [112]

:[108]
pushi.e 0
pop.v.b self.tender_cancel
pushi.e 986
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [112]

:[109]
pushi.e 986
pushenv [111]

:[110]
pushi.e 1
pop.v.b self.tender_cancel

:[111]
popenv [110]

:[112]
push.v self.noelle_qs
conv.v.b
bf [114]

:[113]
pushi.e 0
pop.v.b self.noelle_qs
pushi.e 263
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 160
add.i.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.screen
pushi.e 7
pushloc.v local.screen
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 1
pushloc.v local.screen
pushi.e -9
pop.v.i [stacktop]self.aligned

:[114]
push.v self.susie_qs
conv.v.b
bf [116]

:[115]
pushi.e 0
pop.v.b self.susie_qs
pushi.e 263
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 160
add.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 26
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.screen
pushi.e 39
pushloc.v local.screen
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 1
pushloc.v local.screen
pushi.e -9
pop.v.i [stacktop]self.aligned

:[116]
push.v self.kris_qs
conv.v.b
bf [118]

:[117]
pushi.e 0
pop.v.b self.kris_qs
pushi.e 263
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 160
add.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.screen
pushi.e 38
pushloc.v local.screen
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 1
pushloc.v local.screen
pushi.e -9
pop.v.i [stacktop]self.aligned

:[118]
push.v self.berdly_qs
conv.v.b
bf [120]

:[119]
pushi.e 0
pop.v.b self.berdly_qs
pushi.e 263
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 160
add.i.v
push.v self.be_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 24
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.screen
pushi.e 20
pushloc.v local.screen
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 1
pushloc.v local.screen
pushi.e -9
pop.v.i [stacktop]self.aligned

:[120]
push.v self.tender_finish
conv.v.b
bf [125]

:[121]
pushi.e 0
pop.v.b self.tender_finish
pushi.e 263
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [125]

:[122]
pushi.e 263
pushenv [124]

:[123]
call.i instance_destroy(argc=0)
popz.v

:[124]
popenv [123]

:[125]
push.v self.hand_release
conv.v.b
bf [130]

:[126]
pushi.e 0
pop.v.b self.hand_release
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [130]

:[127]
pushi.e 990
pushenv [129]

:[128]
pushi.e 1
pop.v.b self.release

:[129]
popenv [128]

:[130]
push.v self.hand_leave
conv.v.b
bf [135]

:[131]
pushi.e 0
pop.v.b self.hand_leave
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [135]

:[132]
pushi.e 990
pushenv [134]

:[133]
pushi.e 1
pop.v.b self.leave

:[134]
popenv [133]

:[135]
push.v self.su_struggle
conv.v.b
bf [140]

:[136]
pushi.e 0
pop.v.b self.su_struggle
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [140]

:[137]
pushi.e 990
pushenv [139]

:[138]
pushi.e 1
pop.v.b self.su_struggle

:[139]
popenv [138]

:[140]
push.v self.su_shocked
conv.v.b
bf [145]

:[141]
pushi.e 0
pop.v.b self.su_shocked
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [145]

:[142]
pushi.e 990
pushenv [144]

:[143]
pushi.e 1
pop.v.b self.su_shocked

:[144]
popenv [143]

:[145]
push.v self.su_look_left
conv.v.b
bf [150]

:[146]
pushi.e 0
pop.v.b self.su_look_left
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [150]

:[147]
pushi.e 990
pushenv [149]

:[148]
pushi.e 1
pop.v.b self.su_look_left

:[149]
popenv [148]

:[150]
push.v self.su_look_right
conv.v.b
bf [155]

:[151]
pushi.e 0
pop.v.b self.su_look_right
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [155]

:[152]
pushi.e 990
pushenv [154]

:[153]
pushi.e 1
pop.v.b self.su_look_right

:[154]
popenv [153]

:[155]
push.v self.su_grin_1
conv.v.b
bf [160]

:[156]
pushi.e 0
pop.v.b self.su_grin_1
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [160]

:[157]
pushi.e 990
pushenv [159]

:[158]
pushi.e 1
pop.v.b self.su_grin_1

:[159]
popenv [158]

:[160]
push.v self.su_grin_2
conv.v.b
bf [165]

:[161]
pushi.e 0
pop.v.b self.su_grin_2
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [165]

:[162]
pushi.e 990
pushenv [164]

:[163]
pushi.e 1
pop.v.b self.su_grin_2

:[164]
popenv [163]

:[165]
push.v self.su_squint_1
conv.v.b
bf [170]

:[166]
pushi.e 0
pop.v.b self.su_squint_1
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [170]

:[167]
pushi.e 990
pushenv [169]

:[168]
pushi.e 1
pop.v.b self.su_squint_1

:[169]
popenv [168]

:[170]
push.v self.su_squint_2
conv.v.b
bf [175]

:[171]
pushi.e 0
pop.v.b self.su_squint_2
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [175]

:[172]
pushi.e 990
pushenv [174]

:[173]
pushi.e 1
pop.v.b self.su_squint_2

:[174]
popenv [173]

:[175]
push.v self.su_concerned
conv.v.b
bf [180]

:[176]
pushi.e 0
pop.v.b self.su_concerned
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [180]

:[177]
pushi.e 990
pushenv [179]

:[178]
pushi.e 1
pop.v.b self.su_concerned

:[179]
popenv [178]

:[180]
push.v self.ra_struggle
conv.v.b
bf [185]

:[181]
pushi.e 0
pop.v.b self.ra_struggle
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [185]

:[182]
pushi.e 990
pushenv [184]

:[183]
pushi.e 1
pop.v.b self.ra_struggle

:[184]
popenv [183]

:[185]
push.v self.ra_huh
conv.v.b
bf [190]

:[186]
pushi.e 0
pop.v.b self.ra_huh
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [190]

:[187]
pushi.e 990
pushenv [189]

:[188]
pushi.e 1
pop.v.b self.ra_huh

:[189]
popenv [188]

:[190]
push.v self.ra_look
conv.v.b
bf [195]

:[191]
pushi.e 0
pop.v.b self.ra_look
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [195]

:[192]
pushi.e 990
pushenv [194]

:[193]
pushi.e 1
pop.v.b self.ra_look

:[194]
popenv [193]

:[195]
push.v self.ra_smile
conv.v.b
bf [200]

:[196]
pushi.e 0
pop.v.b self.ra_smile
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [200]

:[197]
pushi.e 990
pushenv [199]

:[198]
pushi.e 1
pop.v.b self.ra_smile

:[199]
popenv [198]

:[200]
push.v self.ra_scared
conv.v.b
bf [205]

:[201]
pushi.e 0
pop.v.b self.ra_scared
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [205]

:[202]
pushi.e 990
pushenv [204]

:[203]
pushi.e 1
pop.v.b self.ra_scared

:[204]
popenv [203]

:[205]
push.v self.ra_stern
conv.v.b
bf [210]

:[206]
pushi.e 0
pop.v.b self.ra_stern
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [210]

:[207]
pushi.e 990
pushenv [209]

:[208]
pushi.e 1
pop.v.b self.ra_stern

:[209]
popenv [208]

:[210]
push.v self.ra_mu
conv.v.b
bf [215]

:[211]
pushi.e 0
pop.v.b self.ra_mu
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [215]

:[212]
pushi.e 990
pushenv [214]

:[213]
pushi.e 1
pop.v.b self.ra_mu

:[214]
popenv [213]

:[215]
push.v self.ra_shake
conv.v.b
bf [220]

:[216]
pushi.e 0
pop.v.b self.ra_shake
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [220]

:[217]
pushi.e 990
pushenv [219]

:[218]
pushi.e 1
pop.v.b self.ra_shake

:[219]
popenv [218]

:[220]
push.v self.set_queen_voice
conv.v.b
bf [222]

:[221]
pushi.e 0
pop.v.b self.set_queen_voice
pushi.e 62
pop.v.i global.typer

:[222]
push.v self.queen_laugh_start
conv.v.b
bf [227]

:[223]
pushi.e 0
pop.v.b self.queen_laugh_start
pushi.e 0
pop.v.b self.queen_laugh_start
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [227]

:[224]
pushi.e 988
pushenv [226]

:[225]
pushi.e 1
pop.v.b self.laugh

:[226]
popenv [225]

:[227]
push.v self.queen_laugh_stop
conv.v.b
bf [232]

:[228]
pushi.e 0
pop.v.b self.queen_laugh_stop
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [232]

:[229]
pushi.e 988
pushenv [231]

:[230]
pushi.e 0
pop.v.b self.laugh

:[231]
popenv [230]

:[232]
push.v self.queen_surprised
conv.v.b
bf [237]

:[233]
pushi.e 0
pop.v.b self.queen_surprised
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [237]

:[234]
pushi.e 988
pushenv [236]

:[235]
pushi.e 1
pop.v.b self.surprised

:[236]
popenv [235]

:[237]
push.v self.static_queen
conv.v.b
bf [242]

:[238]
pushi.e 0
pop.v.b self.static_queen
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [242]

:[239]
pushi.e 988
pushenv [241]

:[240]
pushi.e 1
pop.v.b self.static_start

:[241]
popenv [240]

:[242]
push.v self.static_queen_stop
conv.v.b
bf [247]

:[243]
pushi.e 0
pop.v.b self.static_queen_stop
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [247]

:[244]
pushi.e 988
pushenv [246]

:[245]
pushi.e 1
pop.v.b self.static_stop

:[246]
popenv [245]

:[247]
push.v self.queen_leave
conv.v.b
bf [252]

:[248]
pushi.e 0
pop.v.b self.queen_leave
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [252]

:[249]
pushi.e 988
pushenv [251]

:[250]
pushi.e 1
pop.v.b self.leave

:[251]
popenv [250]

:[252]
push.v self.queen_sad
conv.v.b
bf [257]

:[253]
pushi.e 0
pop.v.b self.queen_sad
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [257]

:[254]
pushi.e 988
pushenv [256]

:[255]
pushi.e 346
pop.v.i self.head_sprite
pushi.e 274
pop.v.i self.pilot_sprite

:[256]
popenv [255]

:[257]
push.v self.queen_happy
conv.v.b
bf [end]

:[258]
pushi.e 0
pop.v.b self.queen_happy
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[259]
pushi.e 988
pushenv [261]

:[260]
pushi.e 348
pop.v.i self.head_sprite
pushi.e 275
pop.v.i self.pilot_sprite

:[261]
popenv [260]

:[end]