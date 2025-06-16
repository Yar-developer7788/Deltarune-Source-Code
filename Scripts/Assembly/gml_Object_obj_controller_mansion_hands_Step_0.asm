.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i global.interact
pushi.e 129
conv.i.v
pushi.e 258
conv.i.v
pushi.e 498
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hand2
pushi.e 2894
push.v self.hand2
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -2
push.v self.hand2
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.hand2
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.depth
pushi.e 30
sub.i.v
push.v self.hand2
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.hand2
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.hand2
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 129
conv.i.v
pushi.e 246
conv.i.v
pushi.e 416
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.coverup
pushi.e 2901
push.v self.coverup
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.coverup
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.coverup
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.hand2
pushi.e -9
push.v [stacktop]self.depth
pushi.e 20
sub.i.v
push.v self.coverup
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 129
conv.i.v
pushi.e 238
conv.i.v
pushi.e 420
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bubbles2
pushi.e 2902
push.v self.bubbles2
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.bubbles2
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 2
push.v self.bubbles2
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.bubbles2
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.hand2
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
sub.i.v
push.v self.bubbles2
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[5]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [9]

:[6]
push.v self.hand2
pushi.e -9
push.v [stacktop]self.y
pushi.e 64
cmp.i.v GT
bf [8]

:[7]
push.v self.hand2
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.y
b [9]

:[8]
pushi.e 64
push.v self.hand2
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[9]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [14]

:[10]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [14]

:[11]
push.v self.coverup
pushi.e -9
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[14]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [17]

:[15]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [17]

:[16]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[17]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [23]

:[18]
push.v self.hand1
pushi.e -9
pushenv [20]

:[19]
pushi.e 14
conv.i.v
push.v self.y
push.v self.x
pushi.e 64
sub.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[20]
popenv [19]
push.v self.hand2
pushi.e -9
pushenv [22]

:[21]
pushi.e 14
conv.i.v
push.v self.y
push.v self.x
pushi.e 64
add.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[22]
popenv [21]
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[23]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [26]

:[24]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [26]

:[25]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[26]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [32]

:[27]
push.v self.hand1
pushi.e -9
pushenv [29]

:[28]
pushi.e 8
conv.i.v
push.v self.y
push.v self.x
pushi.e 164
add.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[29]
popenv [28]
push.v self.hand2
pushi.e -9
pushenv [31]

:[30]
pushi.e 8
conv.i.v
push.v self.y
push.v self.x
pushi.e 164
sub.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[31]
popenv [30]
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[32]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [52]

:[33]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 8
cmp.i.v LT
bf [35]

:[34]
push.v self.timer
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [42]

:[37]
push.v self.hand1
pushi.e -9
pushenv [39]

:[38]
call.i gml_Script_scr_afterimagefast(argc=0)
popz.v

:[39]
popenv [38]
push.v self.hand2
pushi.e -9
pushenv [41]

:[40]
call.i gml_Script_scr_afterimagefast(argc=0)
popz.v

:[41]
popenv [40]

:[42]
push.v self.timer
pushi.e 8
cmp.i.v EQ
bf [44]

:[43]
pushi.e 217
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[44]
push.v self.timer
pushi.e 9
cmp.i.v EQ
bf [52]

:[45]
push.v self.hand1
pushi.e -9
pushenv [47]

:[46]
pushi.e 16
conv.i.v
push.v self.y
push.v self.x
pushi.e 100
sub.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[47]
popenv [46]
push.v self.hand2
pushi.e -9
pushenv [49]

:[48]
pushi.e 16
conv.i.v
push.v self.y
push.v self.x
pushi.e 100
add.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[49]
popenv [48]
pushi.e 0
pop.v.i self.timer
pushi.e 1273
pushenv [51]

:[50]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[51]
popenv [50]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[52]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [55]

:[53]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 45
cmp.i.v EQ
bf [55]

:[54]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_mansion_hands_slash_Step_0_gml_115_0"@37850
conv.s.v
push.s "* (Looks like the hand is out of the way now...)/%"@37851
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con
pushi.e 0
pop.v.i self.timer

:[55]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [57]

:[56]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [58]

:[57]
push.e 0

:[58]
bf [63]

:[59]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [61]

:[60]
pushi.e 12
conv.i.v
call.i gml_Script_scr_camerareset(argc=1)
popz.v

:[61]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 13
cmp.i.v EQ
bf [63]

:[62]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
call.i gml_Script_scr_tempsave(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[63]
push.v self.con
pushi.e 3
cmp.i.v GT
bf [68]

:[64]
push.v self.bubbles2
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [68]

:[65]
push.v self.bubbles2
pushi.e -9
pushenv [67]

:[66]
push.v other.hand2
pushi.e -9
push.v [stacktop]self.x
pushi.e 82
sub.i.v
pop.v.v self.x

:[67]
popenv [66]

:[68]
push.v self.bubbles1
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[69]
push.v self.bubbles1
pushi.e -9
pushenv [71]

:[70]
push.v other.hand1
pushi.e -9
push.v [stacktop]self.x
pushi.e 82
sub.i.v
pop.v.v self.x

:[71]
popenv [70]

:[end]