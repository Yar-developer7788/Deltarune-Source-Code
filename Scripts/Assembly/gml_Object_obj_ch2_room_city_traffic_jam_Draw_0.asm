.localvar 2 arguments
.localvar 220 j 17625
.localvar 107 i 17626

:[0]
push.v self.animsiner
push.e 1
add.i.v
pop.v.v self.animsiner
push.v self.vertical_dismiss
conv.v.b
not.b
bf [7]

:[1]
pushi.e 0
pop.v.i local.j

:[2]
pushloc.v local.j
pushi.e 10
cmp.i.v LT
bf [7]

:[3]
pushi.e 0
pop.v.i local.i

:[4]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [6]

:[5]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.vertical_jam_y
pushi.e 20
sub.i.v
pushloc.v local.j
pushi.e 50
mul.i.v
add.v.v
push.v self.vertical_jam_x
pushloc.v local.i
pushi.e 80
mul.i.v
add.v.v
push.v self.animsiner
pushi.e 6
conv.i.d
div.d.v
pushi.e 2376
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [4]

:[6]
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [2]

:[7]
push.v self.horizontal_dismiss
conv.v.b
not.b
bf [end]

:[8]
push.v self.hor_jam_x
pushi.e 3500
cmp.i.v GT
bf [16]

:[9]
pushi.e 0
pop.v.i local.j

:[10]
pushloc.v local.j
pushi.e 2
cmp.i.v LT
bf [15]

:[11]
pushi.e 0
pop.v.i local.i

:[12]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [14]

:[13]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.hor_jam_y
pushi.e 25
sub.i.v
pushloc.v local.j
pushi.e 60
mul.i.v
add.v.v
push.v self.hor_jam_x
pushloc.v local.i
pushi.e 90
mul.i.v
add.v.v
push.v self.animsiner
pushi.e 6
conv.i.d
div.d.v
pushi.e 2373
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [12]

:[14]
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [10]

:[15]
b [end]

:[16]
pushi.e 0
pop.v.i local.j

:[17]
pushloc.v local.j
pushi.e 3
cmp.i.v LT
bf [end]

:[18]
pushi.e 0
pop.v.i local.i

:[19]
pushloc.v local.i
pushi.e 8
cmp.i.v LT
bf [21]

:[20]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.hor_jam_y
pushi.e 25
sub.i.v
pushloc.v local.j
pushi.e 50
mul.i.v
add.v.v
push.v self.hor_jam_x
pushloc.v local.i
pushi.e 90
mul.i.v
add.v.v
push.v self.animsiner
pushi.e 6
conv.i.d
div.d.v
pushi.e 2373
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [19]

:[21]
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [17]

:[end]