.localvar 2 arguments

:[0]
push.v self.x
push.v 872.x
sub.v.v
call.i abs(argc=1)
pop.v.v self.xrelative
push.v self.shotready
conv.v.b
bf [8]

:[1]
push.v self.caralert
conv.v.b
not.b
bt [6]

:[2]
push.v self.xrelative
pushi.e 12
cmp.i.v GTE
bf [4]

:[3]
push.v self.xrelative
pushi.e 23
cmp.i.v LTE
b [5]

:[4]
push.e 0

:[5]
b [7]

:[6]
push.e 1

:[7]
b [9]

:[8]
push.e 0

:[9]
bf [end]

:[10]
push.v self.flashtimer
pushi.e 8
cmp.i.v LT
bf [12]

:[11]
push.v self.flashtimer
push.e 1
add.i.v
pop.v.v self.flashtimer
b [end]

:[12]
pushi.e 0
pop.v.i self.shotready
pushi.e 413
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_childbullet(argc=3)
pop.v.v self.d
push.v self.bigshot
conv.v.b
bf [14]

:[13]
pushi.e 6
conv.i.v
b [15]

:[14]
pushi.e 4
conv.i.v

:[15]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.grazepoints
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.grazepoints
push.v self.bigshot
conv.v.b
bf [17]

:[16]
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[17]
pushi.e 270
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 0
pop.v.i self.flashtimer

:[end]