.localvar 2 arguments
.localvar 20234 explosion 11809

:[0]
push.v self.birthday
pushbltn.v builtin.infinity
cmp.v.v GTE
bf [2]

:[1]
pushi.e 0
conv.b.v
push.s "BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW "@24796
conv.s.v
call.i show_error(argc=2)
popz.v

:[2]
push.v self.birthday
pushbltn.v builtin.infinity
cmp.v.v GTE
bf [4]

:[3]
pushi.e 0
pop.v.i self.birthday

:[4]
push.v self.bufferstate
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.i 8421504
pop.v.i self.image_blend
pushi.e 1
pop.v.i self.bufferstate
b [14]

:[9]
push.v self.bufferstate
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
not.b
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.i 16777215
pop.v.i self.image_blend
pushi.e 2
pop.v.i self.bufferstate

:[14]
push.v self.bufferstate
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
exit.i

:[16]
push.v self.loading
pushi.e 0
cmp.i.v GT
bf [18]

:[17]
exit.i

:[18]
push.v self.timer
pushi.e 162
cmp.i.v LT
bf [20]

:[19]
push.v self.timer
pushi.e 10
mul.i.v
push.v self.flip
mul.v.v
push.v self.direction
add.v.v
pushi.e 340
conv.i.v
push.v self.timer
push.d 1.9
mul.d.v
call.i min(argc=2)
push.v self.ystart
push.v self.xstart
call.i gml_Script_scr_orbitaroundpoint_dx(argc=4)
popz.v
b [28]

:[20]
push.v self.timer
pushi.e 162
cmp.i.v GTE
bf [22]

:[21]
push.v self.impact
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [28]

:[24]
pushi.e 162
pop.v.i self.timer
push.v self.timer
pushi.e 10
mul.i.v
push.v self.flip
mul.v.v
push.v self.direction
add.v.v
pushi.e 340
conv.i.v
push.v self.timer
push.d 1.9
mul.d.v
call.i min(argc=2)
push.v self.ystart
push.v self.xstart
call.i gml_Script_scr_orbitaroundpoint_dx(argc=4)
popz.v
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[25]
pushi.e 193
conv.i.v
b [27]

:[26]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)

:[27]
pop.v.v self.d
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakex
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakey
pushi.e 179
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.impact
pushi.e 459
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.explosion
pushi.e 2275
pushloc.v local.explosion
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
pushloc.v local.explosion
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.depth
pushi.e 4
sub.i.v
pushloc.v local.explosion
pushi.e -9
pop.v.v [stacktop]self.depth
pushbltn.v builtin.infinity
pop.v.v self.birthday

:[28]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 0
pop.v.i self.bufferstate

:[end]