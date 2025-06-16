.localvar 2 arguments
.localvar 15230 ones 19804
.localvar 15231 tens 19805

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.completed
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 255
pop.v.i self.lettercolor
b [3]

:[2]
push.i 65535
pop.v.i self.lettercolor

:[3]
push.v self.micerequired
pushi.e 10
mod.i.v
pop.v.v local.ones
push.v self.micerequired
pushi.e 10
rem.i.v
pop.v.v local.tens
pushi.e 1
conv.i.v
push.v self.lettercolor
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 8
sub.i.v
pushi.e 68
add.i.v
push.v self.x
pushi.e 10
add.i.v
pushi.e 18
add.i.v
pushloc.v local.ones
pushi.e 2571
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.lettercolor
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 8
sub.i.v
pushi.e 68
add.i.v
push.v self.x
pushi.e 10
add.i.v
pushi.e 18
add.i.v
pushi.e 10
pushloc.v local.tens
add.v.i
pushi.e 2571
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]