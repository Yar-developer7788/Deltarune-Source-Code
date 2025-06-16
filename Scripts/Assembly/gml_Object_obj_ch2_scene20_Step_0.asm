.localvar 2 arguments

:[0]
push.v self.stonelancer
pushi.e -1
cmp.i.v NEQ
bf [4]

:[1]
push.v self.stonelancer
pushi.e -9
pushenv [3]

:[2]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[3]
popenv [2]

:[4]
push.v 82.x
push.v self.x
cmp.v.v GT
bf [6]

:[5]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [11]

:[8]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
call.i gml_Script_scr_losechar(argc=0)
popz.v
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
pushi.e 240
conv.i.v
pushi.e 1750
conv.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 240
conv.i.v
pushi.e 1750
conv.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 276
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.visible

:[10]
popenv [9]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
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
push.v self.susienpc
pushi.e -9
push.v [stacktop]self.y
push.v self.susienpc
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 174
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 190
conv.i.v
call.i gml_Script_c_sprite(argc=1)
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
pushi.e 180
conv.i.v
pushi.e 340
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.be_actor
push.s "berdly"@4870
conv.s.v
push.v self.be_actor
push.v self.be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 668
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 4
pop.v.i self.fan_a
pushi.e 893
conv.i.v
pushi.e 188
conv.i.v
pushi.e 1788
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fan_a_actor
push.s "fan_a"@31690
conv.s.v
push.v self.fan_a_actor
push.v self.fan_a
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1225
push.v self.fan_a_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.fan_a
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 5
pop.v.i self.fan_b
pushi.e 893
conv.i.v
pushi.e 188
conv.i.v
pushi.e 1880
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fan_b_actor
push.s "fan_b"@31691
conv.s.v
push.v self.fan_b_actor
push.v self.fan_b
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1225
push.v self.fan_b_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.fan_b
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 6
pop.v.i self.fan_c
pushi.e 893
conv.i.v
pushi.e 150
conv.i.v
pushi.e 1733
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fan_c_actor
push.s "fan_c"@31698
conv.s.v
push.v self.fan_c_actor
push.v self.fan_c
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1225
push.v self.fan_c_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.fan_c
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 7
pop.v.i self.fan_d
pushi.e 893
conv.i.v
pushi.e 150
conv.i.v
pushi.e 1812
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fan_d_actor
push.s "fan_c"@31698
conv.s.v
push.v self.fan_d_actor
push.v self.fan_d
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1225
push.v self.fan_d_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.fan_d
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 8
pop.v.i self.fan_e
pushi.e 893
conv.i.v
pushi.e 150
conv.i.v
pushi.e 1890
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fan_e_actor
push.s "fan_c"@31698
conv.s.v
push.v self.fan_e_actor
push.v self.fan_e
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1225
push.v self.fan_e_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.fan_e
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 9
pop.v.i self.la
pushi.e 893
conv.i.v
pushi.e 255
conv.i.v
pushi.e 1605
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.la_actor
push.s "lancer"@4751
conv.s.v
push.v self.la_actor
push.v self.la
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 199
push.v self.la_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.i 98000
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 193
conv.i.v
pushi.e 236
conv.i.v
pushi.e 1606
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.stonelancer
push.i 97000
push.v self.stonelancer
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.stonelancer
pushi.e -9
pop.v.i [stacktop]self.image_alpha

:[11]
push.v self.con
pushi.e 1
cmp.i.v EQ
bt [13]

:[12]
call.i gml_Script_scr_cutscene_loaded(argc=0)
conv.v.b
b [14]

:[13]
push.e 1

:[14]
bf [18]

:[15]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
pushi.e 199
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.susienpc
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_112_0"@31704
conv.s.v
push.s "\\E6* Th..^1. that screaming..^1. Ralsei...!?/%"@31705
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
pushi.e 35
conv.i.v
pushi.e 247
conv.i.v
pushi.e 1440
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 174
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 35
conv.i.v
pushi.e 221
conv.i.v
pushi.e 1490
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 31
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_130_0"@31706
conv.s.v
push.s "\\EQ* U-umm^1, you don't have to scream.../"@31707
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_131_0"@31708
conv.s.v
push.s "\\E1* ..^1. Just because you like my outfit!/%"@31709
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 198
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 18
pop.v.i self.n
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 5000
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
push.v self.fan_a
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1812
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.n
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.fan_b
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1812
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.n
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.fan_c
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1812
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.n
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.fan_d
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1812
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.n
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.fan_e
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1812
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.n
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e -4
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
push.v self.fan_a
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1225
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.n
neg.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.fan_b
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1225
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.n
neg.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.fan_c
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1225
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.n
neg.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.fan_d
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1225
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.n
neg.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.fan_e
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1225
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.n
neg.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 188
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 8
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_204_0"@31710
conv.s.v
push.s "\\EH* O-oh!^1! Kris^1, Susie!^1! Umm^1, how may I serve you...?/"@31711
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "5"@5306
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_206_0"@31712
conv.s.v
push.s "\\E5* The hell are you doing!?/"@31713
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_208_0"@31714
conv.s.v
push.s "\\E2* Umm^1, Queen didn't have a room for me^1, so..^1. err.../%"@31715
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 186
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_215_0"@31716
conv.s.v
push.s "\\E1* She made me into one of her butlers^1, instead.../%"@31717
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
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 12
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 200
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 189
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_234_0"@31718
conv.s.v
push.s "\\EZ* Whatever!^1! Ralsei^1! Can you heal Lancer!?/"@31719
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "C"@9479
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_236_0"@31720
conv.s.v
push.s "\\EC* O-oh!/"@31721
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "A"@1192
conv.s.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_238_0"@31722
conv.s.v
push.s "\\EA* Haha..^1. it's..^1. cold.../%"@31723
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_248_0"@31724
conv.s.v
push.s "\\E4* ..^1. Susie.../%"@31725
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 192
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_255_0"@31726
conv.s.v
push.s "\\E6* .../%"@31727
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 189
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_262_0"@31728
conv.s.v
push.s "\\E8* I'm afraid..^1. This is something I can't heal./"@31729
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "Z"@9495
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_264_0"@31730
conv.s.v
push.s "\\EZ* Wh-what?/"@31731
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 4
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_266_0"@31732
conv.s.v
push.s "\\E4* Lancer is.../%"@31733
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
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
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 9
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 236
conv.i.v
pushi.e 1606
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 8
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
pushi.e 9
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 199
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.stonelancer
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 202
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.i 95000
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 6
conv.i.v
pushi.e 216
conv.i.v
pushi.e 1572
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 201
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.stonelancer
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_328_0"@31734
conv.s.v
push.s "\\EZ* Lancer!? Lancer^1, hey...!!/%"@31735
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
pushi.e 191
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_336_0"@31736
conv.s.v
push.s "\\E4* You see^1, each Dark Fountain creates a different \"world.\"/"@31737
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_337_0"@31738
conv.s.v
push.s "\\E4* A \"world\" whose Darkners reflect the will of its fountain./"@31739
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [17]

:[16]
push.s "obj_ch2_scene20_slash_Step_0_gml_375_0_b"@31740
conv.s.v
push.s "\\E4＊ その世界を生み出した&　 「闇の泉」の意志を&　 受け継いだ者たちなんだよ。/"@31741
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v

:[17]
push.s "obj_ch2_scene20_slash_Step_0_gml_338_0"@31742
conv.s.v
push.s "\\E4* But^1, though those Darkners can exist in their own worlds.../"@31743
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_339_0"@31744
conv.s.v
push.s "\\E4* They might not \"belong\" if they go to another one./%"@31745
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 203
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_346_0"@31746
conv.s.v
push.s "\\EC* ..^1. so can we help him!?/%"@31747
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
pushi.e 189
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_354_0"@31748
conv.s.v
push.s "\\EA* Yes. There is a way./"@31749
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_355_0"@31750
conv.s.v
push.s "* Castle Town's Grand Fountain is made of pure darkness./"@31751
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_356_0"@31752
conv.s.v
push.s "\\EB* As long as it stays flowing^1, any Darkner can live there./"@31753
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_357_0"@31754
conv.s.v
push.s "\\E2* So..^1. if we bring Lancer back to school^1, he'll be OK again./%"@31755
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_365_0"@31756
conv.s.v
push.s "* ..^1. So we just need to get out of here^1, huh?/%"@31757
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_372_0"@31758
conv.s.v
push.s "\\E2* Right./"@31759
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "C"@9479
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_374_0"@31760
conv.s.v
push.s "\\EC* ..^1. alright./%"@31761
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 202
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_378_0"@31762
conv.s.v
push.s "\\EA* Lancer^1, we'll be back for you^1, buddy.../%"@31763
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
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.stonelancer
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_fefc(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_394_0"@31764
conv.s.v
push.s "\\EI* Your friend..^1. If we defeat Queen^1, we can save him?/%"@31765
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
push.s "berdlyunhappy"@10173
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 230
conv.i.v
pushi.e 1250
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 15
conv.i.v
pushi.e 230
conv.i.v
pushi.e 1298
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
pushi.e -8
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_414_0"@31766
conv.s.v
push.s "\\E0* Uh^1, yeah./%"@31767
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
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_421_0"@31768
conv.s.v
push.s "* With me out of the way^1, Queen.../%"@31769
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
pushi.e 683
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_431_0"@31770
conv.s.v
push.s "\\EG* ..^1. is going to force Noelle to do her bidding./"@31771
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_432_0"@31772
conv.s.v
push.s "\\E9* And if Noelle doesn't want to.../"@31773
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_433_0"@31774
conv.s.v
push.s "\\E8* ..^1. She might make her face into a robot one./"@31775
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "0"@3491
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_435_0"@31776
conv.s.v
push.s "\\E0* .../%"@3988
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "berdlyunhappy"@10173
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 230
conv.i.v
pushi.e 1505
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 20
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
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_451_0"@31777
conv.s.v
push.s "\\E8* Susie.../%"@31778
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
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_458_0"@31779
conv.s.v
push.s "\\E9* Could you..^1. assist me in saving Noelle?/"@31780
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "6"@3595
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_460_0"@31781
conv.s.v
push.s "\\E6* ..^1. huh...? M-me?/%"@31782
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 683
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_472_0"@31783
conv.s.v
push.s "\\E9* I..^1. just can't do it by myself./%"@31784
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
pushi.e 684
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_482_0"@31785
conv.s.v
push.s "\\EI* But if you can help me..^1. I have a plan./"@31786
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_484_0"@31787
conv.s.v
push.s "\\EK* A plan?/%"@31788
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_493_0"@31789
conv.s.v
push.s "\\E0* I remember from Queen's tour of this place.../"@31790
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_494_0"@31791
conv.s.v
push.s "\\E0* There's a secret shortcut on the third floor./%"@31792
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_500_0"@31793
conv.s.v
push.s "\\E1* While Kris is distracting Queen^1,/"@31794
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_501_0"@31795
conv.s.v
push.s "\\E0* Susie will take the shortcut to reach Noelle^1,/%"@31796
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_507_0"@31797
conv.s.v
push.s "\\E0* And transfer her to me on the roof./"@31798
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_508_0"@31799
conv.s.v
push.s "\\E1* From there^1, I'll bring her to a safe hiding spot.../%"@31800
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 684
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_516_0"@31801
conv.s.v
push.s "\\EI* And together^1, we can all defeat Queen!/%"@31802
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
push.s "obj_ch2_scene20_slash_Step_0_gml_523_0"@31803
conv.s.v
push.s "\\E0* .../%"@3988
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_534_0"@31804
conv.s.v
push.s "\\EK* Alright^1, sure. We'll give it a shot./"@31805
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "6"@3595
conv.s.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_536_0"@31806
conv.s.v
push.s "\\E6* Haha^1! Most excellent!^1! Then.../%"@31807
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 6
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 25
conv.i.v
pushi.e 12
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 46
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 15
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
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 190
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_563_0"@31808
conv.s.v
push.s "\\E7* See you on the roof^1, fellow agent!/%"@31809
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
pushi.e 30
conv.i.v
pushi.e 10
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 30
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 188
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_583_0"@31810
conv.s.v
push.s "\\E2* Alright^1, let's go!/%"@31811
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
pushi.e 25
conv.i.v
pushi.e 230
conv.i.v
pushi.e 1360
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 26
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 242
conv.i.v
pushi.e 1290
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 26
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 190
conv.i.v
push.s "sprite"@9580
conv.s.v
pushi.e 26
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
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
push.s "obj_ch2_scene20_slash_Step_0_gml_607_0"@31812
conv.s.v
push.s "\\E5* ..^1. would you take that off already!?/"@31813
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "Q"@9489
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_609_0"@31814
conv.s.v
push.s "\\EQ* S-sorry!/%"@31815
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 155
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -5
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 861
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 833
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 790
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 1
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[18]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [20]

:[19]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 4
pop.v.i self.con
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

:[23]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [25]

:[24]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [26]

:[25]
push.e 0

:[26]
bf [end]

:[27]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 120
pop.v.i global.plot
pushi.e 1270
conv.i.v
push.v self.stonelancer
pushi.e -9
push.v [stacktop]self.y
push.v self.stonelancer
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.lancernpc
push.v self.stonelancer
pushi.e -9
pushenv [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [28]
call.i instance_destroy(argc=0)
popz.v

:[end]