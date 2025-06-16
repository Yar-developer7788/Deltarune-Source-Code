.localvar 2 arguments

:[0]
pushi.e 1100
conv.i.v
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create_depth(argc=4)
pushi.e -9
pushenv [2]

:[1]
push.v other.sprite_width
pop.v.v self.image_xscale
pushi.e 1
conv.i.d
push.v self.sprite_height
div.v.d
pushi.e 300
mul.i.v
pop.v.v self.image_yscale

:[2]
popenv [1]
pushi.e 0
conv.i.v
call.i gml_Script_scr_outside_camera(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
pushi.e 1106
pushenv [5]

:[4]
pushi.e 1
pop.v.i self.playsound

:[5]
popenv [4]

:[end]