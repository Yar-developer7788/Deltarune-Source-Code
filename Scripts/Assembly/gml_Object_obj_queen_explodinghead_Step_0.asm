.localvar 2 arguments
.localvar 7006 bc 11636
.localvar 24696 _shotdir 11639
.localvar 24697 _shotspread 11640
.localvar 11546 _bullet 11641

:[0]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.laugh
conv.v.b
bf [4]

:[3]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
b [5]

:[4]
push.e 0

:[5]
bf [13]

:[6]
push.v self.laughpause
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.laughsound
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1
pop.v.i self.laughpause
push.v self.laughsound
call.i gml_Script_snd_pause(argc=1)
popz.v

:[11]
exit.i

:[12]
b [15]

:[13]
push.v self.laughpause
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.laughpause
push.v self.laughsound
call.i gml_Script_snd_resume(argc=1)
popz.v

:[15]
push.v self.timer
pushi.e 20
cmp.i.v EQ
bf [18]

:[16]
pushi.e 1
pop.v.i self.image_speed
pushi.e 1941
pop.v.i self.sprite_index
push.v self.laugh
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 194
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.laughsound

:[18]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer
push.v self.first
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.v self.timer
pushi.e 1
sub.i.v
pop.v.v self.timer

:[20]
push.v self.timer
pushi.e 8
cmp.i.v EQ
bf [23]

:[21]
push.v self.buffer
conv.v.b
bf [23]

:[22]
pushi.e 562
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 562
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.bc
pushi.e 15
pushloc.v local.bc
pushi.e -9
pop.v.i [stacktop]self.bufferdelay
pushi.e 30
pushloc.v local.bc
pushi.e -9
pop.v.i [stacktop]self.bufferduration

:[26]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [end]

:[27]
pushi.e 134
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.ultimate
pushi.e 1
cmp.i.v EQ
bf [44]

:[28]
pushi.e 0
pop.v.i self.i

:[29]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [43]

:[30]
push.v self.i
pushi.e 36
mul.i.v
pushi.e 20
conv.i.v
call.i irandom(argc=1)
add.v.v
pop.v.v local._shotdir
push.v self.i
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushi.e 3
conv.i.v
b [33]

:[32]
pushi.e 1
conv.i.v

:[33]
pop.v.v local._shotspread
pushi.e 525
pop.v.i local._bullet
push.v self.i
push.v self.banana
cmp.v.v EQ
bf [35]

:[34]
push.v 872.y
push.v 872.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushloc.v local._shotdir
call.i angle_difference(argc=2)
call.i abs(argc=1)
pushi.e 45
cmp.i.v LTE
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 526
pop.v.i local._bullet

:[38]
pushloc.v local._bullet
push.v self.y
pushloc.v local._shotdir
pushloc.v local._shotspread
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
pushloc.v local._shotdir
pushloc.v local._shotspread
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushloc.v local._shotdir
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 10
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.d
pushi.e -9
push.v [stacktop]self.direction
push.v 631.y
push.v 631.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
sub.v.v
call.i abs(argc=1)
pushi.e 22
cmp.i.v LT
bf [40]

:[39]
push.v self.d
pushi.e -9
push.v [stacktop]self.speed
push.d 1.5
div.d.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed

:[40]
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.fadeaway
pushi.e 1926
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.buffer
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.slowdown

:[42]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [29]

:[43]
b [79]

:[44]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [61]

:[45]
pushi.e 0
pop.v.i self.i

:[46]
push.v self.i
pushi.e 14
cmp.i.v LT
bf [60]

:[47]
push.v self.i
push.d 25.71
mul.d.v
pushi.e 15
conv.i.v
call.i irandom(argc=1)
add.v.v
pop.v.v local._shotdir
push.v self.i
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
pushi.e 3
conv.i.v
b [50]

:[49]
pushi.e 1
conv.i.v

:[50]
pop.v.v local._shotspread
pushi.e 525
pop.v.i local._bullet
push.v self.i
push.v self.banana
cmp.v.v EQ
bf [52]

:[51]
push.v 872.y
push.v 872.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushloc.v local._shotdir
call.i angle_difference(argc=2)
call.i abs(argc=1)
pushi.e 45
cmp.i.v LTE
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
pushi.e 526
pop.v.i local._bullet

:[55]
pushloc.v local._bullet
push.v self.y
pushloc.v local._shotdir
pushloc.v local._shotspread
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
pushloc.v local._shotdir
pushloc.v local._shotspread
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushloc.v local._shotdir
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 9
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.d
pushi.e -9
push.v [stacktop]self.direction
push.v 631.y
push.v 631.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
sub.v.v
call.i abs(argc=1)
pushi.e 22
cmp.i.v LT
bf [57]

:[56]
push.v self.d
pushi.e -9
push.v [stacktop]self.speed
push.d 1.5
div.d.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed

:[57]
push.d 1.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 1.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.fadeaway
pushi.e 1926
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.buffer
pushi.e 0
cmp.i.v EQ
bf [59]

:[58]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.slowdown

:[59]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [46]

:[60]
b [79]

:[61]
pushi.e 0
pop.v.i self.i

:[62]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [79]

:[63]
push.v self.i
pushi.e 40
mul.i.v
pushi.e 25
conv.i.v
call.i irandom(argc=1)
add.v.v
pop.v.v local._shotdir
push.v self.i
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [65]

:[64]
pushi.e 3
conv.i.v
b [66]

:[65]
pushi.e 1
conv.i.v

:[66]
pop.v.v local._shotspread
pushi.e 525
pop.v.i local._bullet
push.v self.i
push.v self.banana
cmp.v.v EQ
bf [68]

:[67]
push.v 872.y
push.v 872.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushloc.v local._shotdir
call.i angle_difference(argc=2)
call.i abs(argc=1)
pushi.e 45
cmp.i.v LTE
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushi.e 526
pop.v.i local._bullet

:[71]
pushloc.v local._bullet
push.v self.y
pushloc.v local._shotdir
pushloc.v local._shotspread
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
pushloc.v local._shotdir
pushloc.v local._shotspread
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushloc.v local._shotdir
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.buffer
conv.v.b
bf [73]

:[72]
pushi.e 12
conv.i.v
b [74]

:[73]
pushi.e 7
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i

:[74]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.d
pushi.e -9
push.v [stacktop]self.direction
push.v 631.y
push.v 631.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
sub.v.v
call.i abs(argc=1)
pushi.e 22
cmp.i.v LT
bf [76]

:[75]
push.v self.d
pushi.e -9
push.v [stacktop]self.speed
push.d 1.5
div.d.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed

:[76]
push.d 1.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 1.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.fadeaway
pushi.e 1926
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.buffer
pushi.e 0
cmp.i.v EQ
bf [78]

:[77]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.slowdown

:[78]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [62]

:[79]
pushi.e 567
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1942
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[end]