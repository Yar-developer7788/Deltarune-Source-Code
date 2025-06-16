.localvar 2 arguments
.localvar 21165 alphaadd 9107

:[0]
push.i 900000
pop.v.i self.depth
push.v self.siner
push.d 0.5
add.d.v
pop.v.v self.siner
pushi.e 132
pop.v.i self.y
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [3]

:[2]
push.d 0.8
conv.d.v
push.i 16777215
conv.i.v
pushi.e 90
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.i
pushi.e 30
mul.i.v
sub.v.v
push.v self.x
push.v self.i
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 2614
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.8
conv.d.v
push.i 16777215
conv.i.v
pushi.e -90
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.i
pushi.e 30
mul.i.v
sub.v.v
push.v self.x
push.v self.i
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 2614
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [end]

:[5]
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
push.v self.i
add.v.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
pop.v.v local.alphaadd
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i local.alphaadd

:[7]
push.d 0.9
pushloc.v local.alphaadd
add.v.d
push.i 16777215
conv.i.v
pushi.e 90
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.i
pushi.e 30
mul.i.v
sub.v.v
push.v self.x
pushi.e 60
add.i.v
pushi.e 0
conv.i.v
pushi.e 2614
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.9
pushloc.v local.alphaadd
add.v.d
push.i 16777215
conv.i.v
pushi.e -90
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.i
pushi.e 30
mul.i.v
sub.v.v
push.v self.x
pushi.e 60
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2614
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [4]

:[end]