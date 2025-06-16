.localvar 2 arguments
.localvar 107 i 8040
.localvar 19882 _x 8041
.localvar 19881 _y 8042
.localvar 19925 _spr 8043
.localvar 19926 _img 8044
.localvar 19927 _col 8045

:[0]
pushi.e 1
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
push.v self.pixels
cmp.v.v LT
bf [6]

:[2]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelexpand_h
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.mypixelx
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v local._x
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelexpand_v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.mypixely
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v local._y
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelspritechangealarm
conv.v.b
not.b
bf [4]

:[3]
pushi.e 2434
pop.v.i local._spr
pushloc.v local.i
push.d 0.3
push.v self.time
mul.v.d
add.v.v
pushi.e 4
mod.i.v
pop.v.v local._img
pushi.e 1
pop.v.i self.scalebonus
b [5]

:[4]
pushi.e 2436
pop.v.i local._spr
pushi.e 0
pop.v.i local._img
pushi.e 0
pop.v.i self.scalebonus

:[5]
pushi.e 1
conv.i.v
push.v self.time
pushi.e 30
conv.i.d
div.d.v
call.i min(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelrgb
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v local._col
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelalpha
pushloc.v local._col
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelscale
push.v self.scalebonus
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelscale
push.v self.scalebonus
add.v.v
push.v self.y
pushloc.v local._y
add.v.v
push.v self.x
pushloc.v local._x
add.v.v
pushloc.v local._img
pushloc.v local._spr
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[6]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v

:[end]