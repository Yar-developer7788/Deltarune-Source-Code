.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.angledraw
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.throwalpha

:[2]
push.v self.angledraw
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
push.v self.throwalpha
pushi.e 1
cmp.i.v LT
bf [5]

:[4]
push.v self.throwalpha
push.d 0.125
add.d.v
pop.v.v self.throwalpha

:[5]
push.v self.throwalpha
call.i draw_set_alpha(argc=1)
popz.v
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 16711680
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [8]

:[7]
pushi.e 2
pop.v.i self.fr
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
push.v self.ky
push.v self.ly
push.v self.i
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
mul.v.v
add.v.v
pushi.e -1
push.v self.i
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
conv.v.i
push.v [array]self.krisyoff
add.v.v
push.v self.kx
push.v self.lx
push.v self.i
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
mul.v.v
add.v.v
call.i draw_circle(argc=4)
popz.v
pushi.e 2
conv.i.v
push.v self.ky
push.v self.ly
push.v self.i
pushi.e 1
add.i.v
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
mul.v.v
add.v.v
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
conv.v.i
push.v [array]self.krisyoff
add.v.v
push.v self.kx
push.v self.lx
push.v self.i
pushi.e 1
add.i.v
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
mul.v.v
add.v.v
push.v self.ky
push.v self.ly
push.v self.i
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
mul.v.v
add.v.v
pushi.e -1
push.v self.i
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
conv.v.i
push.v [array]self.krisyoff
add.v.v
push.v self.kx
push.v self.lx
push.v self.i
push.v self.fr
mul.v.v
push.v self.fro
add.v.v
mul.v.v
add.v.v
call.i draw_line_width(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 255
conv.i.v
push.v self.angle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.ky
push.v self.kx
pushi.e 0
conv.i.v
pushi.e 1733
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[8]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]