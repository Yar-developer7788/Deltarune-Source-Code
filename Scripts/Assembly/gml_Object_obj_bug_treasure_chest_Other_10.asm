.localvar 2 arguments
.localvar 107 i 7559

:[0]
pushi.e 277
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.charcon

:[2]
popenv [1]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 6
pop.v.i global.typer

:[4]
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [16]

:[5]
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushbltn.v builtin.room
pushi.e 143
cmp.i.v NEQ
bf [10]

:[6]
pushi.e 0
pop.v.i local.i

:[7]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [9]

:[8]
push.i 168574
setowner.e
pushi.e 1255
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.bug
push.i 133625
setowner.e
pushi.e 180
conv.i.v
call.i random(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bug
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 133626
setowner.e
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 4
add.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bug
pushi.e -9
pop.v.v [stacktop]self.speed
push.i 133642
setowner.e
pushi.e 2718
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bug
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133637
setowner.e
push.v self.depth
pushi.e 1
sub.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bug
pushi.e -9
pop.v.v [stacktop]self.depth
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [7]

:[9]
b [16]

:[10]
pushi.e 0
pop.v.i local.i

:[11]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [13]

:[12]
push.i 168574
setowner.e
pushi.e 318
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.bug
push.i 133624
setowner.e
pushi.e -2
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bug
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.i 133623
setowner.e
pushi.e 3
conv.i.v
pushi.e -3
conv.i.v
call.i random_range(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bug
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.i 133627
setowner.e
push.d 0.1
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bug
pushi.e -9
pop.v.d [stacktop]self.friction
push.i 133628
setowner.e
push.d -0.12
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bug
pushi.e -9
pop.v.d [stacktop]self.gravity
push.i 232736
setowner.e
pushi.e 1
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bug
pushi.e -9
pop.v.i [stacktop]self.mode
push.i 133637
setowner.e
pushi.e 5000
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bug
pushi.e -9
pop.v.i [stacktop]self.depth
push.i 133642
setowner.e
pushi.e 3043
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bug
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133654
setowner.e
pushi.e 255
conv.i.v
pushi.e 190
conv.i.v
pushi.e 255
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
call.i make_color_hsv(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bug
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.i 232292
setowner.e
pushi.e 0
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bug
pushi.e -9
pop.v.i [stacktop]self.blend
push.i 133650
setowner.e
pushi.e 1
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bug
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 133651
setowner.e
pushi.e 1
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bug
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [11]

:[13]
pushi.e 349
pushenv [15]

:[14]
pushi.e 5
pop.v.i self.rodeteacup

:[15]
popenv [14]

:[16]
pushi.e 1
pop.v.i self.image_index
pushi.e 1
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.interact

:[end]