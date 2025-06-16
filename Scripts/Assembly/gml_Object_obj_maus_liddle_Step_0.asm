.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 20
cmp.i.v GTE
bf [3]

:[2]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.fakey
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.siner
push.v self.sineradd
add.v.v
pop.v.v self.siner
push.v self.x
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.y
push.d 0.2
conv.d.v
push.v self.maxamplitude
push.v self.amplitude
call.i lerp(argc=3)
pop.v.v self.amplitude
push.v self.x
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.amplitude
mul.v.v
add.v.v
pop.v.v self.x
push.v self.xx
pushi.e 600
add.i.v
push.v self.xx
pushi.e 200
add.i.v
push.v self.x
call.i clamp(argc=3)
pop.v.v self.x
push.v self.yy
pushi.e 240
add.i.v
push.v self.yy
pushi.e 40
add.i.v
push.v self.y
call.i clamp(argc=3)
pop.v.v self.y
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 0
pop.v.i self.btimer

:[5]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [6]

:[6]
push.v self.captured
pushi.e 1
cmp.i.v EQ
bf [10]

:[7]
pushi.e 767
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[8]
push.v 767.image_alpha
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.2
cmp.d.v LTE
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[11]
push.v self.creator
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [13]

:[12]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[13]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 3
cmp.i.v GTE
bf [15]

:[14]
pushi.e 0
pop.v.i self.timer
pushi.e 10
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.creator
pushi.e -9
push.v [stacktop]self.y
push.v self.creator
pushi.e -9
push.v [stacktop]self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.creator
pushi.e -9
push.v [stacktop]self.x
push.v self.creator
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i move_towards_point(argc=3)
popz.v

:[15]
push.v self.btimer
push.e 1
add.i.v
pop.v.v self.btimer
push.v self.btimer
pushi.e 30
cmp.i.v GTE
bf [end]

:[16]
push.v self.creator
pushi.e -9
pushenv [19]

:[17]
push.v self.mcon
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
pushi.e 3
pop.v.i self.mcon

:[19]
popenv [17]
push.v self.image_xscale
push.d 0.2
sub.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.2
sub.d.v
pop.v.v self.image_yscale
push.v self.image_xscale
pushi.e 0
cmp.i.v LTE
bf [end]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[end]