.localvar 2 arguments

:[0]
pushi.e 1252
pushenv [5]

:[1]
push.v self.trigNum
push.v other.trigNum
cmp.v.v EQ
bf [5]

:[2]
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [4]

:[3]
pushi.e 1
pop.v.b other.active
b [5]

:[4]
pushi.e 0
pop.v.b other.active

:[5]
popenv [1]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [8]

:[6]
push.v self.active
pushi.e 1
cmp.b.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.con

:[8]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [22]

:[9]
push.v self.startingX
push.v self.sprite_width
call.i abs(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_charaX(argc=0)
cmp.v.v LT
bf [11]

:[10]
pushi.e -2
pop.v.i self.image_xscale
push.v self.startingX
push.v self.sprite_width
sub.v.v
pop.v.v self.x
b [12]

:[11]
pushi.e 2
pop.v.i self.image_xscale
push.v self.startingX
pop.v.v self.x

:[12]
push.v self.active
pushi.e 1
cmp.b.v EQ
bf [14]

:[13]
push.v self.cooldownAmount
pop.v.v self.cooldown

:[14]
push.v self.active
pushi.e 0
cmp.b.v EQ
bf [16]

:[15]
push.v self.cooldown
pushi.e 1
sub.i.v
pop.v.v self.cooldown

:[16]
push.v self.cooldown
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.i self.con

:[18]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.shotSpeed
cmp.v.v EQ
bf [22]

:[19]
push.v self.id
call.i gml_Script_scr_onscreen(argc=1)
conv.v.b
bf [21]

:[20]
push.d 0.6
conv.d.v
pushi.e 132
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 265
conv.i.v
push.v self.y
pushi.e 65
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.spear
push.v self.depth
pushi.e 20
sub.i.v
push.v self.spear
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 20
conv.i.v
call.i irandom(argc=1)
pushi.e 20
add.i.v
pop.v.v self.shotSpeed

:[21]
pushi.e 0
pop.v.i self.timer

:[22]
push.v self.con
pushi.e 99
cmp.i.v EQ
bf [end]

:[23]
push.v 82.y
push.v 82.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 180
add.i.v
pop.v.v self.direction
pushi.e 8
pop.v.i self.speed
push.v self.x
push.v self.timer
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.v.v self.x
push.v self.id
call.i gml_Script_scr_onscreen(argc=1)
conv.v.b
not.b
bf [end]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[end]