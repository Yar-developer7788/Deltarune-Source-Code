.localvar 2 arguments

:[0]
pushi.e 999
pop.v.i self.encountermax
pushi.e 1
pop.v.i self.encountermin
pushglb.v global.chapter
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 50
pop.v.i self.encountermin
pushi.e 999
pop.v.i self.encountermax

:[5]
push.v self.encountermax
push.v self.encountermin
pushglb.v global.encounterno
call.i clamp(argc=3)
pop.v.v global.encounterno
pushi.e 240
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 2
pop.v.i 240.radius

:[7]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 34
pop.v.v [array]self.flag

:[end]