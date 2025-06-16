.localvar 2 arguments

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 52
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [4]

:[3]
push.v self.x
pushi.e 52
push.v self.wallnumber
conv.v.i
push.v [array]self.wallspeed
add.v.v
pop.v.v self.x

:[4]
push.v self.wallcontroller
pushi.e -1
cmp.i.v GT
bf [15]

:[5]
pushi.e 52
push.v self.wallnumber
conv.v.i
push.v [array]self.walltype
pushi.e 0
cmp.i.v EQ
bf [10]

:[6]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 9
cmp.i.v LT
bf [8]

:[7]
push.i 233345
setowner.e
push.v self.timer
pushi.e 9
conv.i.d
div.d.v
pushi.e -6
conv.i.v
pushi.e -16
conv.i.v
call.i lerp(argc=3)
pushi.e 52
push.v self.wallnumber
conv.v.i
pop.v.v [array]self.wallspeed
b [10]

:[8]
push.v self.timer
pushi.e 150
cmp.i.v LT
bf [10]

:[9]
push.i 233345
setowner.e
push.v self.timer
pushi.e 9
sub.i.v
pushi.e 130
conv.i.d
div.d.v
pushi.e -6
conv.i.v
pushi.e -6
conv.i.v
call.i lerp(argc=3)
pushi.e 52
push.v self.wallnumber
conv.v.i
pop.v.v [array]self.wallspeed

:[10]
pushi.e 52
push.v self.wallnumber
conv.v.i
push.v [array]self.walltype
pushi.e 1
cmp.i.v EQ
bf [15]

:[11]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 16
cmp.i.v LT
bf [13]

:[12]
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
pushi.e -5
conv.i.v
pushi.e -21
conv.i.v
call.i lerp(argc=3)
pushi.e 52
push.v self.wallnumber
conv.v.i
pop.v.v [array]self.wallspeed
b [15]

:[13]
push.v self.timer
pushi.e 90
cmp.i.v LT
bf [15]

:[14]
push.v self.timer
pushi.e 15
sub.i.v
pushi.e 70
conv.i.d
div.d.v
pushi.e -13
conv.i.v
pushi.e -5
conv.i.v
call.i lerp(argc=3)
pushi.e 52
push.v self.wallnumber
conv.v.i
pop.v.v [array]self.wallspeed

:[15]
push.v self.sprite_index
pushi.e 2033
cmp.i.v EQ
bf [end]

:[16]
pushi.e 0
conv.b.v
pushi.e 1
conv.b.v
pushi.e 592
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 19
add.i.v
push.v self.y
pushi.e 22
sub.i.v
push.v self.x
pushi.e 18
sub.i.v
call.i collision_rectangle(argc=7)
pop.v.v self.hitshot
push.v self.hitshot
pushi.e -4
cmp.i.v NEQ
bf [end]

:[17]
push.v self.destroyable
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.v self.hitshot
pushi.e -9
push.v [stacktop]self.big
pushi.e 1
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [36]

:[21]
push.v self.hitshot
pushi.e -9
push.v [stacktop]self.y
push.v self.y
cmp.v.v LT
bf [24]

:[22]
pushi.e 39
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
call.i instance_place(argc=3)
conv.v.b
bf [24]

:[23]
pushi.e 39
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
call.i instance_nearest(argc=3)
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e 2060
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bt [31]

:[26]
push.v self.hitshot
pushi.e -9
push.v [stacktop]self.y
push.v self.y
cmp.v.v GT
bf [29]

:[27]
pushi.e 39
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i instance_place(argc=3)
conv.v.b
bf [29]

:[28]
pushi.e 39
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i instance_nearest(argc=3)
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e 2060
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
b [32]

:[31]
push.e 1

:[32]
bf [34]

:[33]
b [36]

:[34]
push.v self.hitshot
pushi.e -9
push.v [stacktop]self.y
push.v self.y
sub.v.v
call.i abs(argc=1)
pushi.e 12
cmp.i.v GT
bf [36]

:[35]
exit.i

:[36]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
push.v self.active
pushi.e 1
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [end]

:[40]
push.v self.hitshot
pushi.e -9
push.v [stacktop]self.big
pushi.e 0
cmp.i.v EQ
bf [44]

:[41]
push.v self.hitshot
pushi.e -9
pushenv [43]

:[42]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[43]
popenv [42]

:[44]
push.d 1.1
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e 142
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
call.i gml_Script_scr_afterimage_cut(argc=0)
popz.v
pushi.e 598
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
push.v self.image_xscale
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.anim
pushi.e -9
pushenv [46]

:[45]
pushi.e 1972
pop.v.i self.sprite_index

:[46]
popenv [45]
call.i instance_destroy(argc=0)
popz.v

:[end]