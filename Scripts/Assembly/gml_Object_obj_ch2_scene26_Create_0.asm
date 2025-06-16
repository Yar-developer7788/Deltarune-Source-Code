.localvar 2 arguments
.localvar 14740 lay_id 16559
.localvar 107 i 16563

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.specialDraw
pushi.e 0
pop.v.i self.glowvalue
pushi.e 0
pop.v.i self.skipbattle
pushi.e 0
pop.v.i self.drawx
pushi.e 0
pop.v.i self.extra_con
pushi.e 0
pop.v.i self.noelle_depth
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.i 231459
setowner.e
push.s "wind_highplace.ogg"@19759
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[2]
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [4]

:[3]
pushglb.v global.plot
pushi.e 170
cmp.i.v GTE
b [5]

:[4]
push.e 1

:[5]
bf [17]

:[6]
pushglb.v global.plot
pushi.e 170
cmp.i.v EQ
bf [8]

:[7]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v LT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 989
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
b [16]

:[11]
pushi.e 105
conv.i.v
pushi.e 170
conv.i.v
pushi.e 2030
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.queen_npc
pushi.e 767
push.v self.queen_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.queen_npc
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.queen_npc
pushi.e -9
pushenv [13]

:[12]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[13]
popenv [12]
pushi.e 105
conv.i.v
pushi.e 245
conv.i.v
pushi.e 2042
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ralsei_npc
pushi.e 799
push.v self.ralsei_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.ralsei_npc
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.ralsei_npc
pushi.e -9
pushenv [15]

:[14]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[15]
popenv [14]

:[16]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[17]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v LT
bf [19]

:[18]
pushi.e 270
conv.i.v
pushi.e 85
conv.i.v
pushi.e 2060
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
b [20]

:[19]
pushi.e 266
conv.i.v
pushi.e 85
conv.i.v
pushi.e 2060
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)

:[20]
pop.v.v self.queenhand
push.v self.queenhand
pushi.e -9
pushenv [22]

:[21]
push.i 1000200
pop.v.i self.depth

:[22]
popenv [21]
pushi.e 0
pop.v.b self.rudebuster
pushi.e 0
pop.v.b self.rockanim
pushi.e 0
pop.v.b self.rockcon
pushi.e 0
pop.v.b self.rockanimstop
pushi.e 0
pop.v.b self.rockdog
pushi.e -1
pop.v.i self.rockdogobj
pushi.e 0
pop.v.b self.rockdogstop
pushi.e 0
pop.v.b self.winelaser
pushi.e 0
pop.v.b self.shakeloop
pushi.e 1
pop.v.b self.shakecon
pushi.e 0
pop.v.b self.fist_explode
pushi.e 0
pop.v.b self.fist_afterimage
pushi.e 0
pop.v.i self.explosions
pushi.e 0
pop.v.b self.wallanimstart
pushi.e 0
pop.v.b self.wallanimstop
pushi.e 0
pop.v.i self.wallcon
pushi.e 0
pop.v.i self.walltimer
pushi.e -1
pop.v.i self.walllayer
pushi.e -1
pop.v.i self.layerid
pushi.e 0
pop.v.i self.battletimer
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.whiteall
pushi.e 999
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 100
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.bg_cover
pushi.e 999
push.v self.bg_cover
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.bg_cover
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 1000350
push.v self.bg_cover
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.bg_cover
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
push.v self.bg_cover
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e -1
pop.v.i self.berdly_coaster
pushi.e 0
pop.v.b self.berdly_coaster_start
pushi.e 0
pop.v.b self.berdly_coaster_leave
pushi.e 1070
conv.i.v
pushi.e 550
conv.i.v
pushi.e 1640
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anime_bg
push.i 92000
push.v self.anime_bg
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.anime_bg
pushi.e -9
pushenv [24]

:[23]
pushi.e 0
pop.v.i self.image_alpha

:[24]
popenv [23]
pushi.e -4
pop.v.i self.power_up
pushi.e 0
pop.v.b self.disable_face
pushi.e 0
pop.v.b self.enable_face
pushi.e 0
pop.v.b self.set_queen_voice
pushi.e -1
pop.v.i self.laser_con
pushi.e 0
pop.v.b self.release_queen
pushi.e 0
pop.v.b self.queen_laugh_start
pushi.e 0
pop.v.b self.queen_laugh_stop
pushi.e 0
pop.v.b self.queen_release_fast
pushi.e 0
pop.v.b self.queen_leave_fast
pushi.e 0
pop.v.b self.platform_fall
pushi.e 0
pop.v.b self.hand_shake
pushi.e 0
pop.v.b self.hand_catch
pushi.e 0
pop.v.b self.cityscape_fall
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GTE
bf [30]

:[25]
push.s "TILES"@32763
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v local.lay_id
pushloc.v local.lay_id
call.i layer_get_y(argc=1)
pop.v.v self.platform_y
pushi.e 0
pop.v.b self.platform_fall
pushi.e 0
pop.v.i self.platform_timer
pushi.e 0
pop.v.b self.raise_hands
pushi.e 0
pop.v.i local.i

:[26]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [30]

:[27]
push.i 173460
setowner.e
pushi.e 312
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 312
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 1550
pushloc.v local.i
pushi.e 100
mul.i.v
add.v.i
call.i gml_Script_scr_marker(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.hand_platform
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.hand_platform
pushi.e -9
pushenv [29]

:[28]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.i 1000300
pushloc.v local.i
pushi.e 10
mul.i.v
sub.v.i
pop.v.v self.depth

:[29]
popenv [28]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [26]

:[30]
pushi.e 0
pop.v.b self.queen_afterimage
pushi.e -4
pop.v.i self.queen_npc
pushi.e -4
pop.v.i self.ralsei_npc
pushi.e 0
pop.v.b self.kris_active
pushi.e 0
pop.v.b self.make_npc_a
pushi.e 0
pop.v.b self.make_npc_b
pushi.e 0
pop.v.b self.shake_hand
pushi.e 0
pop.v.b self.queen_surprised
pushi.e 0
pop.v.b self.queen_laugh_start
pushi.e 0
pop.v.b self.queen_laugh_stop
pushi.e 0
pop.v.b self.queen_leave
pushi.e 0
pop.v.b self.hand_release
pushi.e 0
pop.v.b self.hand_leave
pushi.e 1
pop.v.b self.su_struggle
pushi.e 0
pop.v.b self.su_shocked
pushi.e 0
pop.v.b self.su_look_left
pushi.e 0
pop.v.b self.su_look_right
pushi.e 0
pop.v.b self.su_grin_1
pushi.e 0
pop.v.b self.su_grin_2
pushi.e 0
pop.v.b self.su_squint_1
pushi.e 0
pop.v.b self.su_squint_2
pushi.e 0
pop.v.b self.su_concerned
pushi.e 1
pop.v.b self.ra_struggle
pushi.e 0
pop.v.b self.ra_huh
pushi.e 0
pop.v.b self.ra_look
pushi.e 0
pop.v.b self.ra_smile
pushi.e 0
pop.v.b self.ra_scared
pushi.e 0
pop.v.b self.ra_stern
pushi.e 0
pop.v.b self.ra_mu
pushi.e 0
pop.v.b self.ra_shake

:[end]