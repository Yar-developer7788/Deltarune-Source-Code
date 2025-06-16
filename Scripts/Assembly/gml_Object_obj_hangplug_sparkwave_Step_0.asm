.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth_alt(argc=0)
popz.v
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.a
push.v self.a
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.deshspeed
add.v.v
pop.i.v [stacktop]self.x
push.v self.image_alpha
push.d 0.5
mul.d.v
push.v self.a
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.d 0.15
push.v self.a
pushi.e -9
pop.v.d [stacktop]self.fadeSpeed
push.v self.depth
pushi.e 10
add.i.v
push.v self.a
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.dir
push.s "left"@5994
cmp.s.v EQ
bf [3]

:[2]
pushi.e -12
pop.v.i self.deshspeed

:[3]
push.v self.dir
push.s "right"@4637
cmp.s.v EQ
bf [5]

:[4]
pushi.e 12
pop.v.i self.deshspeed

:[5]
push.d 0.1
push.v self.deshspeed
call.i sign(argc=1)
mul.v.d
pop.v.v self.hspeed
pushi.e 2
push.v self.deshspeed
call.i sign(argc=1)
mul.v.i
pushi.e -1
mul.i.v
pop.v.v self.image_xscale
pushi.e 1
pop.v.i self.init
pushi.e 0
pop.v.i self.image_alpha

:[6]
push.v self.hspeed
push.v self.deshspeed
call.i abs(argc=1)
cmp.v.v LT
bf [8]

:[7]
push.v self.hspeed
push.d 1.5
mul.d.v
pop.v.v self.hspeed

:[8]
push.v self.deshspeed
call.i abs(argc=1)
push.v self.deshspeed
call.i abs(argc=1)
neg.v
push.v self.hspeed
call.i clamp(argc=3)
pop.v.v self.hspeed
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [11]

:[9]
push.v self.image_yscale
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.image_alpha
push.v self.image_yscale
push.d 1.3
mul.d.v
pop.v.v self.image_yscale
push.v self.image_yscale
pushi.e 2
cmp.i.v GTE
bf [11]

:[10]
pushi.e 2
pop.v.i self.image_yscale
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[11]
pushi.e 250
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [14]

:[12]
push.v self.x
pushbltn.v builtin.room_width
push.v self.sprite_width
add.v.v
cmp.v.v GT
bt [14]

:[13]
push.v self.x
pushi.e 0
push.v self.sprite_width
sub.v.i
cmp.v.v LT
b [15]

:[14]
push.e 1

:[15]
bf [17]

:[16]
pushi.e 0
pop.v.i self.active
pushi.e 1
pop.v.i self.fadeaway

:[17]
push.v self.fadeaway
pushi.e 1
cmp.i.v EQ
bf [end]

:[18]
push.v self.image_alpha
push.d 0.6
mul.d.v
pop.v.v self.image_alpha
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.01
cmp.d.v LTE
bf [end]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[end]