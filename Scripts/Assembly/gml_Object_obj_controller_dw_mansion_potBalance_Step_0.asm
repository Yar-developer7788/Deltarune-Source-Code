.localvar 2 arguments

:[0]
push.v self.init_butler
conv.v.b
not.b
bf [14]

:[1]
pushi.e 109
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [14]

:[2]
pushi.e 109
pushenv [13]

:[3]
push.v self.y
pushi.e 650
cmp.i.v LTE
bf [5]

:[4]
push.v self.x
pushi.e 700
cmp.i.v LTE
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e -2
pop.v.i self.image_xscale

:[8]
push.v self.y
pushi.e 900
cmp.i.v GT
bf [10]

:[9]
push.v self.x
pushi.e 400
cmp.i.v LTE
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e -2
pop.v.i self.image_xscale

:[13]
popenv [3]

:[14]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [16]

:[15]
push.v self.triggered
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [21]

:[18]
push.v 82.y
push.v 82.sprite_height
add.v.v
pushi.e 520
cmp.i.v GTE
bf [21]

:[19]
push.v self.spawnVase
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.i self.spawnVase
pushi.e 1260
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[21]
pushi.e 103
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [23]

:[22]
push.v self.readtrigger
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [30]

:[25]
pushi.e 0
pop.v.i self.readcount
pushi.e 103
pushenv [28]

:[26]
push.v self.talked
pushi.e 0
cmp.i.v NEQ
bf [28]

:[27]
push.v other.readcount
push.e 1
add.i.v
pop.v.v other.readcount

:[28]
popenv [26]
push.v self.readcount
pushi.e 8
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i self.readtrigger

:[30]
push.v self.spawnVase
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1260
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[35]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [39]

:[36]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [39]

:[37]
pushi.e 1260
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [39]

:[38]
pushi.e 3
pop.v.i 1260.falling

:[39]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
pushi.e 3
pop.v.i 1260.falling
pushi.e 0
pop.v.i 1260.balance
pushi.e 0
pop.v.i 1260.image_angle
pushi.e 1
pop.v.i global.interact
pushi.e 58
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[41]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [48]

:[42]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [46]

:[43]
pushi.e 109
pushenv [45]

:[44]
pushi.e 1226
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 3
pop.v.i self.normalanim
push.d 0.25
pop.v.d self.remanimspeed

:[45]
popenv [44]
pushi.e 100
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[46]
push.v self.timer
pushi.e 72
cmp.i.v EQ
bf [48]

:[47]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[48]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [50]

:[49]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[50]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [54]

:[51]
pushi.e 1260
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [53]

:[52]
pushi.e 1
pop.v.i 1260.con

:[53]
pushi.e 5
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 14
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 14
sub.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 35
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 7
sub.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 120
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 21
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 14
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
push.s "obj_controller_dw_mansion_potBalance_slash_Step_0_gml_83_0"@38010
conv.s.v
push.s "* Heh^1, not bad^1, Kris!/%"@38011
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 835
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e -4
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
push.d 0.1
conv.d.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_animate(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
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
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e -2
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "timer"@5833
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[54]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [56]

:[55]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [57]

:[56]
push.e 0

:[57]
bf [63]

:[58]
pushi.e 1260
pushenv [62]

:[59]
push.v self.image_angle
pushi.e 7
cmp.i.v LT
bf [61]

:[60]
push.v self.image_angle
push.e 1
add.i.v
pop.v.v self.image_angle
b [62]

:[61]
push.v other.con
push.e 1
add.i.v
pop.v.v other.con

:[62]
popenv [59]

:[63]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [69]

:[64]
pushi.e 1260
pushenv [68]

:[65]
push.v self.image_angle
pushi.e -7
cmp.i.v GT
bf [67]

:[66]
push.v self.image_angle
push.e 1
sub.i.v
pop.v.v self.image_angle
b [68]

:[67]
pushi.e 8
pop.v.i other.con

:[68]
popenv [65]

:[69]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [75]

:[70]
pushi.e 1260
pushenv [74]

:[71]
push.v self.image_angle
pushi.e 0
cmp.i.v LT
bf [73]

:[72]
push.v self.image_angle
push.e 1
add.i.v
pop.v.v self.image_angle
b [74]

:[73]
push.v other.con
push.e 1
add.i.v
pop.v.v other.con
pushi.e 0
pop.v.i other.timer

:[74]
popenv [71]

:[75]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [83]

:[76]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [80]

:[77]
pushi.e 1260
pushenv [79]

:[78]
pushi.e 1
pop.v.i self.falling
push.v self.y
pop.v.v self.remy

:[79]
popenv [78]

:[80]
push.v self.timer
pushi.e 15
cmp.i.v GT
bf [83]

:[81]
pushi.e 1260
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [83]

:[82]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[83]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [85]

:[84]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[85]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [89]

:[86]
pushi.e 12
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 996
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1521
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 1140
cmp.i.v GT
bf [88]

:[87]
pushi.e 10
conv.i.v
pushi.e 1078
conv.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v

:[88]
pushi.e 20
conv.i.v
pushi.e 16
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[89]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [91]

:[90]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [92]

:[91]
push.e 0

:[92]
bf [98]

:[93]
pushi.e 276
pushenv [97]

:[94]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [96]

:[95]
pushi.e 0
pop.v.i self.image_alpha
b [97]

:[96]
pushi.e 82
pop.v.i self.parent
pushi.e 12
pop.v.i self.target
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[97]
popenv [94]
pushi.e 0
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[98]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [100]

:[99]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[100]
push.v self.con
pushi.e 14
cmp.i.v GT
bf [end]

:[101]
pushi.e 276
pushenv [104]

:[102]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [104]

:[103]
push.v 82.x
pushi.e 60
add.i.v
pop.v.v self.x
push.v 82.y
pop.v.v self.y

:[104]
popenv [102]

:[end]