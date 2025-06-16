.localvar 2 arguments
.localvar 19828 layersprites 7818
.localvar 107 i 7819
.localvar 19840 tracks 7820
.localvar 19841 layerid 7821

:[0]
pushi.e 82
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.bg

:[2]
popenv [1]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.bg_hspeed
push.i 168631
setowner.e
pushi.e 3144
conv.i.v
pushi.e 3143
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pop.v.v local.layersprites
pushi.e 0
pop.v.i local.i

:[3]
pushloc.v local.i
pushloc.v local.layersprites
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [end]

:[4]
push.s "BG_Layer_"@19839
pushloc.v local.i
call.i string(argc=1)
add.v.s
push.i 1000500
pushloc.v local.i
pushi.e 100
mul.i.v
sub.v.i
call.i layer_create(argc=2)
pop.v.v local.tracks
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.layersprites
pushloc.v local.tracks
call.i layer_background_create(argc=2)
pop.v.v local.layerid
pushi.e 1
conv.b.v
pushloc.v local.layerid
call.i layer_background_htiled(argc=2)
popz.v
push.d 0.1
pushloc.v local.layersprites
call.i array_length_1d(argc=1)
mul.v.d
push.d 0.5
pushloc.v local.i
mul.v.d
add.v.v
neg.v
pushloc.v local.tracks
call.i layer_hspeed(argc=2)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [3]

:[end]