.localvar 2 arguments
.localvar 23581 _spikeHeight 10605
.localvar 11748 duration 10607
.localvar 191 at 10608
.localvar 23583 psuedoscale 10609

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v GT
bf [4]

:[1]
push.v self.swatchbc
pushi.e -9
push.v [stacktop]self.red_count
push.v self.swatchbc
pushi.e -9
push.v [stacktop]self.blue_count
cmp.v.v GT
bf [4]

:[2]
push.v self.x
push.v self.xstart
sub.v.v
pushi.e 20
cmp.i.v GT
bf [4]

:[3]
push.v self.swatchbc
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
push.v self.ystart
pop.v.v self.yy
push.v self.swatchbc
pushi.e -9
push.v [stacktop]self.shockwave_x_1
pushi.e 100
add.i.v
push.v self.x
cmp.v.v GT
bf [8]

:[7]
push.v self.x
push.v self.swatchbc
pushi.e -9
push.v [stacktop]self.shockwave_x_1
pushi.e 100
sub.i.v
sub.v.v
pop.v.v local._spikeHeight
b [9]

:[8]
push.v self.x
push.v self.swatchbc
pushi.e -9
push.v [stacktop]self.shockwave_x_2
pushi.e 100
sub.i.v
sub.v.v
pop.v.v local._spikeHeight

:[9]
pushloc.v local._spikeHeight
pushi.e 0
cmp.i.v GTE
bf [11]

:[10]
pushloc.v local._spikeHeight
pushi.e 280
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [18]

:[13]
push.v local._spikeHeight
pushi.e 7
div.i.v
pop.v.v local._spikeHeight
pushi.e 30
pop.v.i local.duration
pushloc.v local.duration
pushi.e 2
conv.i.d
div.d.v
pop.v.v local.at
pushi.e 0
pop.v.i local.psuedoscale
pushloc.v local._spikeHeight
pushi.e 20
cmp.i.v LT
bf [15]

:[14]
pushloc.v local._spikeHeight
pushloc.v local.at
div.v.v
pop.v.v local.psuedoscale
b [17]

:[15]
pushloc.v local._spikeHeight
pushloc.v local.duration
cmp.v.v LT
bf [17]

:[16]
pushloc.v local.at
pushloc.v local._spikeHeight
pushloc.v local.at
sub.v.v
sub.v.v
pushloc.v local.at
div.v.v
pop.v.v local.psuedoscale

:[17]
pushi.e -1
pushloc.v local.psuedoscale
mul.v.i
pushloc.v local.psuedoscale
pushi.e 2
sub.i.v
mul.v.v
pop.v.v local.psuedoscale
push.v self.yy
pushloc.v local.psuedoscale
pushi.e 60
mul.i.v
sub.v.v
pop.v.v self.yy

:[18]
push.v self.yy
push.v self.y
cmp.v.v LT
bf [20]

:[19]
push.v self.lidOff
conv.v.b
not.b
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 1
pop.v.b self.lidOff
pushi.e -12
pop.v.i self.lidSpeed
push.v self.ystart
push.v self.lidSpeed
add.v.v
push.v self.platterLid
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 0
pop.v.i self.timer

:[23]
push.v self.yy
pop.v.v self.y

:[end]