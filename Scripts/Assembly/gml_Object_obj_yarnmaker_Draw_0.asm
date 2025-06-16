.localvar 2 arguments

:[0]
push.v self.dont
pushi.e 0
cmp.i.v EQ
bf [8]

:[1]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [6]

:[2]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.direction
push.v self.scale
call.i sqrt(argc=1)
pushi.e 720
mul.i.v
add.v.v
push.v self.scale
push.v self.scale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.scale
pushi.e 1
cmp.i.v LT
bf [4]

:[3]
push.v self.scale
push.d 0.1
add.d.v
pop.v.v self.scale
b [5]

:[4]
pushi.e 1
pop.v.i self.state
pushi.e 450
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.mybul
push.v self.mybul
call.i gml_Script_i_ex(argc=1)
popz.v
pushi.e 6
push.v self.mybul
pushi.e -9
pop.v.i [stacktop]self.element
pushi.e 1684
push.v self.mybul
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.direction
push.v self.mybul
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.childgravity
push.v self.mybul
pushi.e -9
pop.v.v [stacktop]self.gravity
push.v self.childspeed
push.v self.mybul
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.direction
push.v self.mybul
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.grazepoints
push.v self.mybul
pushi.e -9
pop.v.v [stacktop]self.grazepoints
pushi.e 1
push.v self.mybul
pushi.e -9
pop.v.i [stacktop]self.updateimageangle

:[5]
b [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
b [end]

:[8]
pushi.e 0
pop.v.i self.dont

:[end]