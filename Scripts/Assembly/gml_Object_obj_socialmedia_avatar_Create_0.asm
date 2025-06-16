.localvar 2 arguments

:[0]
push.d 0.25
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e 30
pop.v.i self.timer
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=2)
pop.v.v self.offset
pushi.e 0
pop.v.i self.times
pushi.e 4
conv.i.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
call.i choose(argc=6)
pop.v.v self.myhspeed
pushi.e 0
pop.v.i self.angrycon
pushi.e 0
pop.v.i self.isqueen
pushi.e 0
pop.v.i self.queencon
pushi.e 0
pop.v.i self.queentimer
pushi.e 0
pop.v.i self.index_timer
pushi.e 7
conv.i.v
call.i irandom(argc=1)
pop.v.v self.chosen_face
pushi.e 100
conv.i.v
call.i irandom(argc=1)
pushi.e 3
cmp.i.v LT
bf [end]

:[1]
pushi.e 8
pop.v.i self.chosen_face

:[end]