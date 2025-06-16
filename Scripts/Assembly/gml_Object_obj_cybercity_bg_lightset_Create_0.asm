.localvar 2 arguments

:[0]
push.v self.image_xscale
pop.v.v self.l
push.v self.image_yscale
pop.v.v self.h
pushi.e 0
pop.v.i self.siner
push.i 45000
conv.i.v
call.i random(argc=1)
pop.v.v self.seed
pushi.e 2
pop.v.i self.mode
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.minitimer
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.l
cmp.v.v LT
bf [3]

:[2]
push.i 169503
setowner.e
pushi.e 4600
conv.i.v
call.i random(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.barsiner
push.i 166978
setowner.e
pushi.e 1
conv.i.v
call.i random(argc=1)
push.v self.h
mul.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.yscale
push.i 166515
setowner.e
pushi.e 255
conv.i.v
pushi.e 128
conv.i.v
push.v self.i
pushi.e 255
mul.i.v
push.v self.l
div.v.v
call.i make_color_hsv(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.color
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushbltn.v builtin.room
pushi.e 131
cmp.i.v EQ
bf [end]

:[4]
push.i 900000
pop.v.i self.depth

:[end]