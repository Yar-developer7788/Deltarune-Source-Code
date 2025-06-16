.localvar 2 arguments

:[0]
push.i 166604
setowner.e
pushi.e 255
push.v self.value
mul.v.i
pushi.e 255
conv.i.v
pushi.e -5
pushi.e 223
push.v [array]self.flag
pushi.e 8
mul.i.v
call.i make_color_hsv(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.dcolor
pushi.e 255
push.v self.value
mul.v.i
pushi.e 255
conv.i.v
pushi.e -5
pushi.e 224
push.v [array]self.flag
pushi.e 8
mul.i.v
call.i make_color_hsv(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.dcolor
pushi.e 255
push.v self.value
mul.v.i
pushi.e 255
conv.i.v
pushi.e -5
pushi.e 225
push.v [array]self.flag
pushi.e 8
mul.i.v
call.i make_color_hsv(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.dcolor
push.i 167832
setowner.e
pushi.e -5
pushi.e 220
push.v [array]self.flag
pushi.e -1
pushi.e 1
pop.v.v [array]self.part
pushi.e -5
pushi.e 221
push.v [array]self.flag
pushi.e -1
pushi.e 0
pop.v.v [array]self.part
pushi.e -5
pushi.e 222
push.v [array]self.flag
pushi.e -1
pushi.e 2
pop.v.v [array]self.part
push.v self.value
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.basecolor

:[end]