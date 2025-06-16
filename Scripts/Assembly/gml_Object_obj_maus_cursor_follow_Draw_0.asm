.localvar 2 arguments
.localvar 14141 count 10978
.localvar 23983 trail 10979

:[0]
pushi.e 470
conv.i.v
call.i instance_number(argc=1)
pop.v.v local.count
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushloc.v local.count
cmp.v.v LT
bf [3]

:[2]
push.v self.i
pushi.e 470
conv.i.v
call.i instance_find(argc=2)
pop.v.v local.trail
pushi.e 1
conv.i.v
pushloc.v local.trail
pushi.e -9
push.v [stacktop]self.image_blend
push.v self.image_angle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.trail
pushi.e -9
push.v [stacktop]self.y
pushloc.v local.trail
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 1751
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
call.i draw_self(argc=0)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.timer
pushi.e 10
cmp.i.v GTE
bf [6]

:[4]
push.v self.timer
pushi.e 70
cmp.i.v LTE
bf [6]

:[5]
pushi.e 763
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [7]

:[6]
push.e 0

:[7]
bf [end]

:[8]
push.v self.textflash
push.e 1
add.i.v
pop.v.v self.textflash
push.v self.textflash
pushi.e 2
cmp.i.v GT
bf [end]

:[9]
pushi.e 0
pop.v.i self.textflash

:[end]