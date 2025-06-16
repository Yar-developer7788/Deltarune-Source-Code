.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [25]

:[1]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 40
add.i.v
cmp.v.v GTE
bf [3]

:[2]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 600
add.i.v
cmp.v.v LTE
b [4]

:[3]
push.e 0

:[4]
bf [15]

:[5]
push.v 82.x
push.v 82.xprevious
cmp.v.v EQ
bf [7]

:[6]
push.v self.eggcon
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.eggtimer
pushi.e 1
add.i.v
pop.v.v self.eggtimer

:[10]
push.v self.eggtimer
pushi.e 600
cmp.i.v GTE
bf [12]

:[11]
push.v self.eggcon
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 0
pop.v.i self.eggtimer
pushi.e 1
pop.v.i self.eggcon

:[15]
push.v self.eggcon
pushi.e 1
cmp.i.v EQ
bf [18]

:[16]
push.v self.image_index
pushi.e 10
cmp.i.v LTE
bf [18]

:[17]
push.v self.image_index
push.d 0.1
add.d.v
pop.v.v self.image_index

:[18]
push.v 82.x
pushi.e 10
add.i.v
push.v self.x
pushi.e 150
sub.i.v
cmp.v.v GTE
bf [20]

:[19]
push.v 82.x
pushi.e 10
add.i.v
push.v self.x
pushi.e 150
add.i.v
cmp.v.v LTE
b [21]

:[20]
push.e 0

:[21]
bf [25]

:[22]
pushi.e 1
pop.v.i self.con
pushi.e 2714
pop.v.i self.sprite_index
push.v 82.x
push.v self.x
cmp.v.v LT
bf [24]

:[23]
pushi.e -2
pop.v.i self.image_yscale

:[24]
push.d 0.2
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.eggtimer
pushi.e 0
pop.v.i self.eggcon
pushi.e 0
pop.v.i self.image_index
push.v 82.y
pushi.e 20
add.i.v
push.v 82.x
pushi.e 10
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.image_angle
push.v self.image_angle
pop.v.v self.direction
pushi.e 4
pop.v.i self.speed
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.lerped

:[25]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[26]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 13
cmp.i.v LT
bf [30]

:[27]
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
pushi.e 92
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[29]
push.v self.speed
pushi.e 2
add.i.v
pop.v.v self.speed

:[30]
push.v self.timer
pushi.e 13
cmp.i.v GTE
bf [32]

:[31]
pushi.e 0
pop.v.i self.speed
push.v self.x
pop.v.v self.curx
push.v self.y
pop.v.v self.cury

:[32]
push.v self.timer
pushi.e 16
cmp.i.v GTE
bf [end]

:[33]
push.v self.lerped
push.v self.lerped
pushi.e 10
conv.i.d
div.d.v
add.v.v
push.d 0.02
add.d.v
pop.v.v self.lerped
push.v self.lerped
push.v self.basex
push.v self.curx
call.i lerp(argc=3)
pop.v.v self.x
push.v self.lerped
push.v self.basey
push.v self.cury
call.i lerp(argc=3)
pop.v.v self.y
push.v self.lerped
pushi.e 1
cmp.i.v GTE
bf [end]

:[34]
push.v self.basex
pop.v.v self.x
push.v self.basey
pop.v.v self.y
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e 2
pop.v.i self.image_yscale
push.v 82.x
pushi.e 10
add.i.v
push.v self.x
pushi.e 150
sub.i.v
cmp.v.v GTE
bf [36]

:[35]
push.v 82.x
pushi.e 10
add.i.v
push.v self.x
pushi.e 150
add.i.v
cmp.v.v LTE
b [37]

:[36]
push.e 0

:[37]
bf [41]

:[38]
pushi.e 1
pop.v.i self.con
pushi.e 2714
pop.v.i self.sprite_index
push.v 82.x
push.v self.x
cmp.v.v LT
bf [40]

:[39]
pushi.e -2
pop.v.i self.image_yscale

:[40]
push.d 0.5
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.eggtimer
pushi.e 0
pop.v.i self.eggcon
pushi.e 0
pop.v.i self.image_index
push.v 82.y
pushi.e 35
add.i.v
push.v 82.x
pushi.e 20
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.image_angle
push.v self.image_angle
pop.v.v self.direction
pushi.e 4
pop.v.i self.speed
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.lerped
b [42]

:[41]
pushi.e 2712
pop.v.i self.sprite_index

:[42]
pushi.e 0
pop.v.i self.eggtimer
pushi.e 0
pop.v.i self.eggcon

:[end]