.localvar 2 arguments

:[0]
push.v self.canrest
conv.v.b
bf [end]

:[1]
push.v 82.x
push.v self.x
cmp.v.v GT
bf [6]

:[2]
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
not.b
bf [4]

:[3]
call.i gml_Script_scr_gamepad_check_any(argc=0)
conv.v.b
not.b
b [5]

:[4]
push.e 0

:[5]
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
b [11]

:[9]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
pushi.e 0
pop.v.i self.timer

:[11]
push.v self.timer
pushi.e 300
cmp.i.v GTE
bf [13]

:[12]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[16]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 2
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v

:[18]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
pushi.e 3
pop.v.i self.con
push.i 174005
setowner.e
push.s "ocean.ogg"@36042
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.oceansong
pushi.e -1
pushi.e 0
push.v [array]self.oceansong
call.i gml_Script_mus_loop(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.oceansong
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.oceansong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 150
conv.i.v
push.d 0.5
conv.d.v
pushi.e -1
pushi.e 1
push.v [array]self.oceansong
call.i gml_Script_mus_volume(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 88
conv.i.v
pushi.e 362
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 31
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 122
conv.i.v
pushi.e 364
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 31
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 32
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 877
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 855
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[20]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [26]

:[21]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
bf [26]

:[22]
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [24]

:[23]
call.i gml_Script_scr_gamepad_check_any(argc=0)
conv.v.b
b [25]

:[24]
push.e 1

:[25]
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 60
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 90
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.oceansong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 90
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 65
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
pushi.e 658
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 852
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[29]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [31]

:[30]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [32]

:[31]
push.e 0

:[32]
bf [end]

:[33]
pushi.e -1
pop.v.i self.con
pushi.e -1
pushi.e 1
push.v [array]self.oceansong
call.i gml_Script_snd_free(argc=1)
popz.v
pushi.e 0
pop.v.i 82.cutscene
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[end]