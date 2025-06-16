.localvar 2 arguments
.localvar 15230 ones 6891
.localvar 15231 tens 6892

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i draw_self(argc=0)
popz.v

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
push.v self.mousefailcon
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
call.i draw_self(argc=0)
popz.v
pushi.e 255
pop.v.i self.lettercolor
push.v self.miceheld
pushi.e 10
mod.i.v
pop.v.v local.ones
push.v self.miceheld
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
push.v self.x
pushi.e 10
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
push.v self.x
pushi.e 10
add.i.v
pushi.e 10
pushloc.v local.tens
add.v.i
pushi.e 2571
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [end]

:[5]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 24
add.i.v
push.v self.x
pushi.e 35
sub.i.v
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]