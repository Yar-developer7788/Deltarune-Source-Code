.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v 82.x
push.v self.x
cmp.v.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 301
conv.i.v
push.v 82.y
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 700
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.con

:[5]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [15]

:[6]
pushi.e 1
pop.v.i global.interact
pushi.e 82
pushenv [8]

:[7]
push.i 68097
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[8]
popenv [7]
pushi.e 1
pop.v.i self.black
pushi.e 301
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
pushi.e 128
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]
pushi.e 873
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
pushi.e 166
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
push.v 82.y
pop.v.v self.remy
push.v 82.x
pop.v.v self.remx
pushi.e 2430
conv.i.v
push.v 82.y
push.v 82.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.fellkris
pushi.e -200
push.v self.fellkris
pushi.e -9
pop.v.i [stacktop]self.depth

:[15]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [18]

:[16]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 45
cmp.i.v GTE
bf [18]

:[17]
pushi.e 0
pop.v.i self.timer
pushi.e 4
pop.v.i self.con

:[18]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [20]

:[19]
push.s "gameover_short.ogg"@21168
conv.s.v
call.i gml_Script_mus_initloop(argc=1)
popz.v
pushi.e 299
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 100
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 110
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 5
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[20]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [25]

:[21]
push.v self.fellkris
pushi.e -9
pushenv [23]

:[22]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha
push.v self.y
pushi.e 4
add.i.v
pop.v.v self.y

:[23]
popenv [22]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 120
cmp.i.v GTE
bf [25]

:[24]
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 301
conv.i.v
push.v 299.y
pushi.e 50
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 700
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dogcar
pushi.e -30
push.v self.dogcar
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e 1
push.v self.dogcar
pushi.e -9
pop.v.i [stacktop]self.mode

:[25]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [end]

:[26]
pushi.e 299
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[27]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 100
cmp.i.v GTE
bf [end]

:[28]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 917
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fader
pushi.e 6
push.v self.fader
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e -2
push.v self.fader
pushi.e -9
pop.v.i [stacktop]self.fadespeed
pushi.e 33
conv.i.v
call.i gml_Script_scr_itemget(argc=1)
popz.v
pushi.e 152
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]