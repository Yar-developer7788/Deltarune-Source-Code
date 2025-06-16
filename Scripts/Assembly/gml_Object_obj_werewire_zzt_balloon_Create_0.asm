.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.lettersiner
push.i 170447
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.letter
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.letter
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.letter
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.letter
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.letter
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pushi.e 2
cmp.i.v NEQ
bf [5]

:[4]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.letter

:[5]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.preset
push.v self.preset
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.letter
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.letter
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.letter
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.letter

:[7]
push.v self.preset
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.letter
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.letter
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.letter
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.letter

:[9]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.canDestroyTimer

:[end]