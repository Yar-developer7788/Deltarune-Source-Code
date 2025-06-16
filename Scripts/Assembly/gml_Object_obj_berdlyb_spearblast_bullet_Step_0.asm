.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 221
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 221
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 221
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.init
pushi.e 2
pop.v.i self.timer
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushi.e 21
conv.i.v
push.v self.bulletPath
call.i path_start(argc=4)
popz.v

:[2]
push.v self.spawnrate
pushi.e 0
cmp.i.v GTE
bf [6]

:[3]
push.v self.spawntimer
push.v self.spawnrate
cmp.v.v EQ
bf [5]

:[4]
pushi.e 491
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_childbullet(argc=3)
pop.v.v self.d
push.v self.childgraze
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.grazepoints
push.v self.direction
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 0
pop.v.i self.spawntimer
b [6]

:[5]
push.v self.spawntimer
push.e 1
add.i.v
pop.v.v self.spawntimer

:[6]
push.v self.spawnchild
pushi.e 1
cmp.i.v GTE
bf [15]

:[7]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [15]

:[8]
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
push.v self.spawnchild
cmp.v.v LT
bf [15]

:[10]
pushi.e 492
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_childbullet(argc=3)
pop.v.v self.d
push.v self.childgraze
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.grazepoints
push.v self.direction
push.v self.childOffset
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.spawnchild
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.d
pushi.e -9
push.v [stacktop]self.direction
pushi.e 3
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.i.v [stacktop]self.x
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.d
pushi.e -9
push.v [stacktop]self.direction
pushi.e 3
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.i.v [stacktop]self.y

:[12]
push.v self.direction
push.v self.childOffset
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.updateimageangle
pushi.e 2
pop.v.i self.timer
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.childOffset
pushi.e -1
mul.i.v
pop.v.v self.childOffset

:[14]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [9]

:[15]
push.v self.direction
pop.v.v self.image_angle

:[end]