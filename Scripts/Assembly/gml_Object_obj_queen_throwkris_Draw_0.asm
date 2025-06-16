.localvar 2 arguments

:[0]
push.v self.throwXcon
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
push.i 8421504
conv.i.v
push.v self.image_angle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.ralseiy
sub.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1961
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.throwXcon
pushi.e 2
cmp.i.v EQ
bf [11]

:[3]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.ralseiy
sub.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1961
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.ralseiy
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
push.v self.ralseiy
pushi.e 4
sub.i.v
pop.v.v self.ralseiy

:[5]
push.v self.ralseiy
pushi.e 1
cmp.i.v LT
bf [8]

:[6]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [8]

:[7]
pushi.e 570
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1455
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 3
pop.v.i self.throwXcon
pushi.e 1
pop.v.i self.throwcon
pushi.e 1
pop.v.i self.angledraw
pushi.e 0
pop.v.i self.throwready

:[11]
call.i draw_self(argc=0)
popz.v
push.v self.angledraw
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
pop.v.i self.throwalpha

:[13]
push.v self.throwXcon
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
pushi.e 569
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
exit.i

:[18]
push.v self.angledraw
pushi.e 1
cmp.i.v EQ
bf [end]

:[19]
push.v self.throwalpha
pushi.e 1
cmp.i.v LT
bf [21]

:[20]
push.v self.throwalpha
push.d 0.125
add.d.v
pop.v.v self.throwalpha

:[21]
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

:[22]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [24]

:[23]
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
b [22]

:[24]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]