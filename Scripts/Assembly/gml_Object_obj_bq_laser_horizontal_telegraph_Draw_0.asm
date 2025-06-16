.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.dir
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[3]
pushi.e 1
conv.b.v
push.v self.y
pushi.e 60
add.i.v
push.v self.x
pushi.e 460
add.i.v
push.v self.y
push.v self.x
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.b.v
push.v self.y
pushi.e 61
add.i.v
push.v self.x
pushi.e 461
add.i.v
push.v self.y
pushi.e 1
add.i.v
push.v self.x
pushi.e 1
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[4]
push.v self.dir
pushi.e -1
cmp.i.v EQ
bf [8]

:[5]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[7]
pushi.e 1
conv.b.v
push.v self.y
pushi.e 60
add.i.v
push.v self.x
pushi.e 460
sub.i.v
push.v self.y
push.v self.x
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.b.v
push.v self.y
pushi.e 61
add.i.v
push.v self.x
pushi.e 461
sub.i.v
push.v self.y
pushi.e 1
add.i.v
push.v self.x
pushi.e 1
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[8]
push.v self.timer
pushi.e 2
cmp.i.v GTE
bf [10]

:[9]
push.v self.timer
pushi.e 6
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [19]

:[12]
pushi.e 785
pushenv [16]

:[13]
push.v self.image_blend
push.i 16777215
cmp.i.v EQ
bf [15]

:[14]
pushi.e 255
pop.v.i self.image_blend
b [16]

:[15]
push.i 16777215
pop.v.i self.image_blend

:[16]
popenv [13]
push.v self.flash
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1
pop.v.i self.flash
b [19]

:[18]
pushi.e 0
pop.v.i self.flash

:[19]
push.v self.timer
pushi.e 6
cmp.i.v EQ
bf [23]

:[20]
pushi.e 785
pushenv [22]

:[21]
pushi.e 2
pop.v.i self.state
pushi.e 0
pop.v.i self.image_speed

:[22]
popenv [21]

:[23]
push.v self.timer
pushi.e 6
cmp.i.v GT
bf [25]

:[24]
pushi.e 785
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [26]

:[25]
push.e 0

:[26]
bf [end]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[end]