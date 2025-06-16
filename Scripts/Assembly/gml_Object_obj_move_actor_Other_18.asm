.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.dothis
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [9]

:[1]
pushglb.v global.plot
pushi.e 6
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pop.v.i self.dothis

:[3]
pushi.e 930
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e 0
pop.v.i self.dothis

:[5]
pushi.e 931
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 0
pop.v.i self.dothis

:[7]
pushi.e 932
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[8]
pushi.e 0
pop.v.i self.dothis

:[9]
push.v self.dothis
pushi.e 1
cmp.i.v EQ
bf [end]

:[10]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [end]

:[11]
pushi.e 1
pop.v.i self.init
push.v self.direction_word
push.s "nothing"@27311
cmp.s.v NEQ
bf [20]

:[12]
push.v self.direction_word
push.s "l"@6707
cmp.s.v EQ
bf [14]

:[13]
pushi.e 180
pop.v.i self.direction

:[14]
push.v self.direction_word
push.s "d"@6706
cmp.s.v EQ
bf [16]

:[15]
pushi.e 270
pop.v.i self.direction

:[16]
push.v self.direction_word
push.s "r"@6696
cmp.s.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.i self.direction

:[18]
push.v self.direction_word
push.s "u"@6708
cmp.s.v EQ
bf [20]

:[19]
pushi.e 90
pop.v.i self.direction

:[20]
push.v self.speed
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.direction
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.direction

:[end]