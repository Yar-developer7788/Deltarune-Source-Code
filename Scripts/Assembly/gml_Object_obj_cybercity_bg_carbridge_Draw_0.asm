.localvar 2 arguments

:[0]
push.v self.dontdraw
pushi.e 0
cmp.i.v EQ
bf [23]

:[1]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
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
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
push.v self.count
cmp.v.v LT
bf [5]

:[4]
push.v self.timer
pushi.e 4
mul.i.v
push.v self.i
pushi.e 50
mul.i.v
add.v.v
pushi.e 152
mod.i.v
pop.v.v self.myx
push.v self.myx
pushi.e 36
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 10
mul.i.v
pop.v.v self.myy
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
push.v self.y
push.v self.myy
add.v.v
push.v self.x
push.v self.myx
add.v.v
push.v self.timer
pushi.e 4
conv.i.d
div.d.v
pushi.e 3059
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [3]

:[5]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [22]

:[6]
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
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.movemode
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 4
conv.i.d
div.d.v
pop.v.v self.image

:[8]
push.v self.movemode
pushi.e 1
cmp.i.v EQ
bf [15]

:[9]
pushi.e 0
pop.v.i self.image
push.v self.btimer
push.e 1
add.i.v
pop.v.v self.btimer
push.v self.btimer
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.2
mul.d.v
push.d 0.8
add.d.v
pop.v.v self.timeradd
push.v self.timeradd
push.d -0.6
cmp.d.v GT
bf [11]

:[10]
push.v self.timer
push.v self.timeradd
add.v.v
pop.v.v self.timer

:[11]
push.v self.timeradd
push.d 0.4
cmp.d.v LT
bf [13]

:[12]
pushi.e 0
pop.v.i self.image
b [14]

:[13]
pushi.e 1
pop.v.i self.image

:[14]
push.v self.timer
pushi.e 8
conv.i.d
div.d.v
pop.v.v self.image

:[15]
pushi.e 0
pop.v.i self.i

:[16]
push.v self.i
push.v self.count
cmp.v.v LT
bf [22]

:[17]
push.v self.timer
pushi.e 4
mul.i.v
push.v self.i
pushi.e 60
mul.i.v
add.v.v
pushi.e 236
mod.i.v
pop.v.v self.myx
push.v self.myx
pushi.e 60
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 10
mul.i.v
pushi.e 10
add.i.v
pop.v.v self.myy
push.v self.orientation
push.s "r"@6696
cmp.s.v EQ
bf [19]

:[18]
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
push.v self.y
push.v self.myy
add.v.v
push.v self.x
push.v self.myx
add.v.v
pushi.e 40
sub.i.v
push.v self.image
pushi.e 3059
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[19]
push.v self.orientation
push.s "l"@6707
cmp.s.v EQ
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
pushi.e -2
conv.i.v
push.v self.y
push.v self.myy
add.v.v
push.v self.x
push.v self.myx
sub.v.v
pushi.e 240
add.i.v
push.v self.image
pushi.e 3059
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[21]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [16]

:[22]
b [end]

:[23]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
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
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[25]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [end]

:[26]
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
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]