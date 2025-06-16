.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.minitimer
push.e 1
add.i.v
pop.v.v self.minitimer
pushi.e 2
pop.v.i self.minitimerthreshold
pushi.e 12
pop.v.i self.timerthreshold
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.l
cmp.v.v LT
bf [18]

:[2]
push.v self.mode
pushi.e 2
cmp.i.v LT
bf [5]

:[3]
push.i 166978
setowner.e
push.d 0.06
conv.d.v
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yscale
call.i lerp(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.yscale
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yscale
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.yscale
push.d 0.02
sub.d.v
pop.i.v [array]self.yscale

:[5]
push.v self.mode
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
push.v self.minitimer
push.v self.minitimerthreshold
cmp.v.v GTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.i 169503
setowner.e
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.barsiner
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]self.barsiner
popz.v
push.i 166978
setowner.e
push.d 0.6
push.v self.h
mul.v.d
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.barsiner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.3
mul.d.v
push.v self.h
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.barsiner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
push.v self.h
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.yscale

:[10]
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [14]

:[11]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yscale
push.d 0.8
push.v self.h
mul.v.d
cmp.v.v LT
bf [14]

:[12]
pushi.e 12
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
push.v self.h
mul.v.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.yscale

:[14]
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [17]

:[15]
push.v self.timer
push.v self.timerthreshold
cmp.v.v GTE
bf [17]

:[16]
pushi.e 1
push.v self.h
mul.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yscale
push.d 0.5
push.v self.h
mul.v.d
call.i random(argc=1)
add.v.v
call.i min(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.yscale

:[17]
push.v self.image_alpha
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.color
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yscale
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.i
pushi.e 40
mul.i.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[18]
push.v self.timer
push.v self.timerthreshold
cmp.v.v GTE
bf [20]

:[19]
pushi.e 0
pop.v.i self.timer

:[20]
push.v self.minitimer
push.v self.minitimerthreshold
cmp.v.v GTE
bf [end]

:[21]
pushi.e 0
pop.v.i self.minitimer

:[end]