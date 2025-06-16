.localvar 2 arguments

:[0]
push.i 16777215
pop.v.i self.image_blend
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.type
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.image_index

:[5]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.image_index

:[7]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.type
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 1
pop.v.i self.image_index

:[12]
call.i draw_self(argc=0)
popz.v
push.i 8421504
pop.v.i self.blend
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.v self.type
pushi.e 1
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.i 65280
pop.v.i self.blend

:[17]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.v self.type
pushi.e 0
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 255
pop.v.i self.blend

:[22]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.v self.clear_traffic
conv.v.b
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
push.i 65280
pop.v.i self.blend

:[27]
push.v self.timer
push.v self.timefactor
div.v.v
call.i ceil(argc=1)
pop.v.v self.timernumber
push.v self.image_alpha
push.v self.blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.type
pushi.e 2369
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.type
pushi.e 2
cmp.i.v NEQ
bf [end]

:[28]
pushi.e 9
conv.i.v
pushi.e 0
conv.i.v
push.v self.timernumber
call.i clamp(argc=3)
pop.v.v self.timeNumber
pushi.e 1
conv.i.v
push.v self.blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 14
add.i.v
push.v self.x
pushi.e 10
add.i.v
push.v self.timeNumber
pushi.e 2528
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]