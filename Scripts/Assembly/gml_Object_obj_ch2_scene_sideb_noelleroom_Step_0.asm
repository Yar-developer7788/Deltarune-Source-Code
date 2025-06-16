.localvar 2 arguments
.localvar 6113 small_text 17050

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v 82.x
push.v self.x
pushi.e 6
sub.i.v
cmp.v.v GT
bf [3]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [13]

:[7]
pushi.e 2
pop.v.i self.con
pushi.e 82
pushenv [9]

:[8]
pushi.e 0
pop.v.i self.visible

:[9]
popenv [8]
pushi.e 276
pushenv [11]

:[10]
pushi.e 0
pop.v.i self.visible

:[11]
popenv [10]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 779
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.niseralsei
pushi.e 817
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.niseralsei
pushi.e 0
push.v self.niseralsei
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.d 0.1
push.v self.niseralsei
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 20
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushi.e 779
push.v self.niseralsei
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[13]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [17]

:[14]
pushi.e 3
pop.v.i self.con
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.kr_y
push.v self.kr_y
pushi.e 270
cmp.i.v LT
bf [16]

:[15]
pushi.e 270
pop.v.i self.kr_y

:[16]
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
push.v self.kr_y
pushi.e 630
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 555
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 495
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_58_0"@34321
conv.s.v
push.s "\\E6* H..^1. huh?/%"@34322
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
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 205
conv.i.v
pushi.e 555
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 45
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_80_0"@34323
conv.s.v
push.s "\\E7* Hey^1, it says this is Noelle's room!/"@34324
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_81_0"@34325
conv.s.v
push.s "\\E9* Kris^1, let's go in and save her!/"@34326
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_82_0"@34327
conv.s.v
push.s "\\EA* And uh^1, y'know^1, teach her not to get in our way./%"@34328
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "..."@2873
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_93_0"@34329
conv.s.v
push.s "\\E6* ..^1. Kris?/%"@34330
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_100_0"@34331
conv.s.v
push.s "\\E5* Fine^1, I'll do it myself!/%"@34332
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.door
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 64
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 185
conv.i.v
pushi.e 555
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 63
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.door
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.su_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
pushi.e 120
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
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_122_0"@34333
conv.s.v
push.s "\\E0* Kris.../"@34334
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_123_0"@34335
conv.s.v
push.s "\\E2* Don't you wonder..^1. how they're doing in there?/%"@34336
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_133_0"@34337
conv.s.v
push.s "\\EQ* Umm^1, I said^1, don't you wonder.../"@34338
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_134_0"@34339
conv.s.v
push.s "\\EI* ..^1. how Noelle and Susie are doing?/%"@34340
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_144_0"@34341
conv.s.v
push.s "\\EQ* Y-you're right^1, Kris^1, it has only been 30 seconds.../"@34342
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_145_0"@34343
conv.s.v
push.s "\\EQ* (I'll wait a minute first...)/%"@34344
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.ra_actor
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 495
conv.i.v
push.s "x"@50
conv.s.v
push.v self.niseralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
push.v self.niseralsei
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
push.v self.niseralsei
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 150
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.niseralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.ra_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1521
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.door
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.su_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 64
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 10
conv.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 555
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 63
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.door
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
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
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_194_0"@34345
conv.s.v
push.s "\\E7* Alright let's go!/%"@34346
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
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_202_0"@34347
conv.s.v
push.s "\\EU* H-huh? What!? W-wait -- wait!?/"@34348
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_203_0"@34349
conv.s.v
push.s "\\EU* Wait^1, we were supposed to --/"@34350
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 7
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_205_0"@34351
conv.s.v
push.s "\\E7* Hey^1, let's go!/"@34352
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 21
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_207_0"@34353
conv.s.v
push.s "\\EL* W-wait^1! Wait^1, Susie!/"@34354
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_208_0"@34355
conv.s.v
push.s "\\EK* What^1, um^1, happened in there?/"@34356
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 25
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_210_0"@34357
conv.s.v
push.s "\\EP* What do you mean what happened?/"@34358
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 19
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_212_0"@34359
conv.s.v
push.s "\\EJ* U-umm..^1. in there^1, with Noelle!/"@34360
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 21
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_214_0"@34361
conv.s.v
push.s "\\EL* Nothin./"@34362
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 20
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_216_0"@34363
conv.s.v
push.s "\\EK* N..^1. Nothing? Nothing at all?/"@34364
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 10
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_218_0"@34365
conv.s.v
push.s "\\EA* Just told her everything is a dream./"@34366
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_219_0"@34367
conv.s.v
push.s "\\E2* Now she's feeling better./"@34368
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 20
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_221_0"@34369
conv.s.v
push.s "\\EK* ..^1. anything else?/"@34370
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 7
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_223_0"@34371
conv.s.v
push.s "\\E7* No and let's go./%"@34372
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
call.i gml_Script_c_wait_talk(argc=0)
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
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_247_0"@34373
conv.s.v
push.s "HEY!"@34374
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.small_text
pushloc.v local.small_text
push.s "bottom"@4636
conv.s.v
push.s "rightmid"@6225
conv.s.v
pushi.e 32
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_248_0"@34375
conv.s.v
push.s "\\E2* Psst..^1. I'll tell you later^1, Kris. \\f0 /"@34376
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 26
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_251_0_b"@34377
conv.s.v
push.s "\\EQ* (Oh well^1, as long as Susie's happy..^1. right?)/%"@34378
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
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

:[17]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [20]

:[19]
push.e 0

:[20]
bf [end]

:[21]
pushi.e 0
pop.v.i global.interact
push.i 231204
setowner.e
pushi.e 9
conv.i.v
pushi.e -5
pushi.e 915
pop.v.v [array]self.flag
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i global.facing
call.i instance_destroy(argc=0)
popz.v

:[end]