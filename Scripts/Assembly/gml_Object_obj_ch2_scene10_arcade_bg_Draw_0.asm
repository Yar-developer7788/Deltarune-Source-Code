.localvar 2 arguments
.localvar 14829 rand 16015

:[0]
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.y2
push.v self.x2
push.v self.y1
push.v self.x1
call.i draw_rectangle_color(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [15]

:[1]
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [11]

:[2]
push.v self.x1
call.i gml_Script_camerax(argc=0)
cmp.v.v GT
bf [4]

:[3]
push.v self.x1
push.d 2.66
sub.d.v
pop.v.v self.x1

:[4]
push.v self.y1
call.i gml_Script_cameray(argc=0)
cmp.v.v GT
bf [6]

:[5]
push.v self.y1
pushi.e 2
sub.i.v
pop.v.v self.y1

:[6]
push.v self.x2
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
cmp.v.v LT
bf [8]

:[7]
push.v self.x2
push.d 2.66
add.d.v
pop.v.v self.x2

:[8]
push.v self.y2
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
cmp.v.v LT
bf [10]

:[9]
push.v self.y2
push.d 2.66
add.d.v
pop.v.v self.y2

:[10]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [2]

:[11]
popz.i
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v LTE
bf [13]

:[12]
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
call.i gml_Script_cameray(argc=0)
pushi.e 370
add.i.v
push.v self.su_y_save
call.i lerp(argc=3)
push.v 936.kr_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e -19999
push.v 936.kr_actor
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
call.i gml_Script_cameray(argc=0)
pushi.e 370
add.i.v
push.v self.su_y_save
call.i lerp(argc=3)
push.v 936.su_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e -19999
push.v 936.su_actor
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
call.i gml_Script_cameray(argc=0)
pushi.e 430
add.i.v
push.v self.ra_y_save
call.i lerp(argc=3)
push.v 936.ra_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e -19998
push.v 936.ra_actor
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
call.i gml_Script_cameray(argc=0)
pushi.e 370
add.i.v
push.v self.qu_y_save
call.i lerp(argc=3)
push.v 936.qu_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e -19998
push.v 936.qu_actor
pushi.e -9
pop.v.i [stacktop]self.depth

:[13]
push.v self.timer
pushi.e 60
cmp.i.v GTE
bf [15]

:[14]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[15]
push.v self.con
push.d 1.5
cmp.d.v EQ
bf [17]

:[16]
pushi.e 4
pop.v.i self.depth
pushi.e 777
conv.i.v
pushi.e 192
conv.i.v
pushi.e 288
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 789
conv.i.v
pushi.e 60
conv.i.v
pushi.e 206
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 813
conv.i.v
pushi.e 96
conv.i.v
pushi.e 64
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[17]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 4
pop.v.i self.depth
pushi.e 939
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
push.d 1.5
pop.v.d self.con

:[19]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [36]

:[20]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 10
cmp.i.v EQ
bf [24]

:[21]
pushi.e 936
pushenv [23]

:[22]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[23]
popenv [22]

:[24]
push.v self.timer
pushi.e 12
cmp.i.v EQ
bf [30]

:[25]
pushi.e 936
pushenv [29]

:[26]
pushi.e 129
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]

:[29]
popenv [26]

:[30]
push.v self.timer
pushi.e 10
cmp.i.v LTE
bf [32]

:[31]
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
pushi.e 261
conv.i.v
pushi.e 261
conv.i.v
call.i lerp(argc=3)
push.v 936.kr_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
pushi.e 143
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 370
add.i.v
call.i lerp(argc=3)
push.v 936.kr_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 654
push.v 936.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
pushi.e 282
conv.i.v
pushi.e 282
conv.i.v
call.i lerp(argc=3)
push.v 936.su_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
pushi.e 143
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 370
add.i.v
call.i lerp(argc=3)
push.v 936.su_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 826
push.v 936.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v 936.kr_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
push.v 936.su_actor
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
pushi.e 231
conv.i.v
pushi.e 231
conv.i.v
call.i lerp(argc=3)
push.v 936.ra_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
pushi.e 147
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 370
add.i.v
call.i lerp(argc=3)
push.v 936.ra_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 799
push.v 936.ra_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v 936.kr_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
push.v 936.ra_actor
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
pushi.e 325
conv.i.v
pushi.e 325
conv.i.v
call.i lerp(argc=3)
push.v 936.qu_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
pushi.e 90
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 370
add.i.v
call.i lerp(argc=3)
push.v 936.qu_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 770
push.v 936.qu_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[32]
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [36]

:[33]
call.i instance_destroy(argc=0)
popz.v
pushi.e 940
pushenv [35]

:[34]
call.i instance_destroy(argc=0)
popz.v

:[35]
popenv [34]

:[36]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[37]
push.v self.punch_r_timer
pushi.e 0
cmp.i.v GT
bf [39]

:[38]
push.v self.punch_r_timer
pushi.e 1
sub.i.v
pop.v.v self.punch_r_timer
pushi.e 56
push.v 936.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 56
push.v 936.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.punch_r_timer
pop.v.v local.rand
call.i gml_Script_cameray(argc=0)
pushi.e 370
add.i.v
pushloc.v local.rand
sub.v.v
push.v 936.kr_actor
pushi.e -9
pop.v.v [stacktop]self.y
call.i gml_Script_cameray(argc=0)
pushi.e 370
add.i.v
pushloc.v local.rand
sub.v.v
push.v 936.su_actor
pushi.e -9
pop.v.v [stacktop]self.y
b [end]

:[39]
push.v self.punch_l_timer
pushi.e 0
cmp.i.v GT
bf [41]

:[40]
push.v self.punch_l_timer
pushi.e 1
sub.i.v
pop.v.v self.punch_l_timer
pushi.e 55
push.v 936.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 55
push.v 936.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.punch_l_timer
pop.v.v local.rand
call.i gml_Script_cameray(argc=0)
pushi.e 370
add.i.v
pushloc.v local.rand
sub.v.v
push.v 936.kr_actor
pushi.e -9
pop.v.v [stacktop]self.y
call.i gml_Script_cameray(argc=0)
pushi.e 370
add.i.v
pushloc.v local.rand
sub.v.v
push.v 936.su_actor
pushi.e -9
pop.v.v [stacktop]self.y
b [end]

:[41]
push.v self.dodge_r_timer
pushi.e 0
cmp.i.v GT
bf [43]

:[42]
push.v self.dodge_r_timer
pushi.e 1
sub.i.v
pop.v.v self.dodge_r_timer
pushi.e 57
push.v 936.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 57
push.v 936.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.dodge_r_timer
pop.v.v local.rand
push.v self.kr_x_save
pushloc.v local.rand
add.v.v
push.v 936.kr_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.su_x_save
pushloc.v local.rand
add.v.v
push.v 936.su_actor
pushi.e -9
pop.v.v [stacktop]self.x
b [end]

:[43]
push.v self.dodge_l_timer
pushi.e 0
cmp.i.v GT
bf [45]

:[44]
push.v self.dodge_l_timer
pushi.e 1
sub.i.v
pop.v.v self.dodge_l_timer
pushi.e 58
push.v 936.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 58
push.v 936.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.dodge_l_timer
pop.v.v local.rand
push.v self.kr_x_save
pushloc.v local.rand
sub.v.v
push.v 936.kr_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.su_x_save
pushloc.v local.rand
sub.v.v
push.v 936.su_actor
pushi.e -9
pop.v.v [stacktop]self.x
b [end]

:[45]
push.v self.dodge_d_timer
pushi.e 0
cmp.i.v GT
bf [47]

:[46]
push.v self.dodge_d_timer
pushi.e 1
sub.i.v
pop.v.v self.dodge_d_timer
pushi.e 54
push.v 936.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 54
push.v 936.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.dodge_d_timer
pop.v.v local.rand
call.i gml_Script_cameray(argc=0)
pushi.e 370
add.i.v
pushloc.v local.rand
add.v.v
push.v 936.kr_actor
pushi.e -9
pop.v.v [stacktop]self.y
call.i gml_Script_cameray(argc=0)
pushi.e 370
add.i.v
pushloc.v local.rand
add.v.v
push.v 936.su_actor
pushi.e -9
pop.v.v [stacktop]self.y
b [end]

:[47]
pushi.e 54
push.v 936.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 54
push.v 936.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[end]