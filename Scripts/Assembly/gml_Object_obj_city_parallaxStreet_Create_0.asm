.localvar 2 arguments
.localvar 107 i 19504
.localvar 220 j 19505

:[0]
push.d -0.125
pop.v.d self.ss
pushi.e 0
pop.v.i self.auto
pushi.e 9
pop.v.i self.timer
push.i 10001110
pop.v.i self.depth
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.c_dark
pushi.e 0
pop.v.i self.car_timer
push.v self.x
pop.v.v self.car_start_pos
pushi.e 0
pop.v.i self.drawx
pushi.e 0
pop.v.i self.animsiner
pushi.e 0
pop.v.i self.drawx_prev
pushi.e 0
pop.v.b self.nocars
pushbltn.v builtin.room_width
pushi.e 2
mul.i.v
pushi.e 160
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 1
add.i.v
pop.v.v self.max_cars
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
push.v self.max_cars
cmp.v.v LT
bf [end]

:[2]
pushi.e 0
pop.v.i local.j

:[3]
pushloc.v local.j
pushi.e 2
cmp.i.v LT
bf [8]

:[4]
push.i 175029
setowner.e
pushloc.v local.j
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushloc.v local.i
pushi.e 160
mul.i.v
b [7]

:[6]
pushi.e 80
pushloc.v local.i
pushi.e 160
mul.i.v
add.v.i

:[7]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypopaf]self.car_pos
pushloc.v local.j
conv.v.i
popaf.e
push.i 175024
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypopaf]self.car_timer
pushloc.v local.j
conv.v.i
popaf.e
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [3]

:[8]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[end]