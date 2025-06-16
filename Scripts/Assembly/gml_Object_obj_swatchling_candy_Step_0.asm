.localvar 2 arguments

:[0]
push.v self.sourcePlatter
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.v self.sourcePlatter
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y
push.d 0.25
conv.d.v
push.v self.sourcePlatter
pushi.e -9
push.v [stacktop]self.platterLid
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
push.v self.side
mul.v.i
sub.v.v
push.v self.sourcePlatter
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
push.v self.side
mul.v.i
sub.v.v
call.i lerp(argc=3)
pop.v.v self.x
push.v self.sourcePlatter
pushi.e -9
push.v [stacktop]self.image_alpha
pop.v.v self.image_alpha
push.v self.sourcePlatter
pushi.e -9
push.v [stacktop]self.timer
pushi.e 0
cmp.i.v GT
bt [4]

:[3]
push.v self.sourcePlatter
pushi.e -9
push.v [stacktop]self.lidOff
conv.v.b
b [5]

:[4]
push.e 1

:[5]
pop.v.b self.active

:[end]