.localvar 2 arguments

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.state
pushi.e 2
cmp.i.v LT
bf [8]

:[1]
push.v self.siner
push.v self.swingdir
add.v.v
pop.v.v self.siner
push.v self.flash
conv.v.b
bf [3]

:[2]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[3]
call.i draw_self(argc=0)
popz.v
push.v self.flash
conv.v.b
bf [5]

:[4]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
pushi.e 0
pop.v.i self.flash

:[5]
pushi.e 2
conv.i.v
pushi.e -20
conv.i.v
push.v self.xstart
push.v self.y
push.v self.x
call.i draw_line_width(argc=5)
popz.v
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 15
mul.i.v
pop.v.v self.image_angle
push.v self.xstart
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 15
mul.i.v
add.v.v
pop.v.v self.x
push.v self.ydrop
pushi.e 1
cmp.i.v LT
bf [7]

:[6]
push.v self.ydrop
push.d 0.02
add.d.v
pop.v.v self.ydrop

:[7]
pushi.e -2
conv.i.v
push.v self.ydrop
call.i gml_Script_scr_ease_out(argc=2)
push.v self.ystart
pushi.e -30
conv.i.v
call.i lerp(argc=3)
pop.v.v self.y
b [end]

:[8]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [end]

:[end]