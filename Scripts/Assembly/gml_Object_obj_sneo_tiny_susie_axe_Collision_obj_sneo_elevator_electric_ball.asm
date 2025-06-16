.localvar 2 arguments

:[0]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [2]

:[1]
pushi.e 2048
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.i 68097
setowner.e
pushi.e 99
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.d 0.5
pop.v.d self.image_speed

:[2]
popenv [1]

:[end]