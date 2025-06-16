.localvar 2 arguments

:[0]
push.v self.mcon
pushi.e 1
cmp.i.v EQ
bf [9]

:[1]
pushi.e -12
conv.i.v
pushi.e -10
conv.i.v
pushi.e -8
conv.i.v
pushi.e -6
conv.i.v
call.i choose(argc=4)
pop.v.v self.hpart
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.mousecount
cmp.v.v LT
bf [8]

:[3]
pushi.e 766
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mouse
push.v self.i
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.hpart
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.mouse
pushi.e -9
pop.v.v [stacktop]self.hspeed

:[5]
push.v self.maxmousecount
push.d 1.5
mul.d.v
push.v self.mousecount
push.v self.maxmousecount
pushi.e 2
conv.i.d
div.d.v
add.v.v
div.v.v
pop.v.v self.factor
push.v self.mousecount
pushi.e 5
cmp.i.v LTE
bf [7]

:[6]
push.d 0.8
pop.v.d self.factor

:[7]
push.v self.mouse
pushi.e -9
dup.i 4
push.v [stacktop]self.sineradd
push.v self.factor
mul.v.v
pop.i.v [stacktop]self.sineradd
push.v self.mouse
pushi.e -9
dup.i 4
push.v [stacktop]self.maxamplitude
push.v self.factor
mul.v.v
pop.i.v [stacktop]self.maxamplitude
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[8]
pushi.e 767
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 160
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 340
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.basket
pushi.e 0
pop.v.i self.mtimer
pushi.e 2
pop.v.i self.mcon

:[9]
push.v self.mcon
pushi.e 2
cmp.i.v EQ
bf [23]

:[10]
push.d 0.1
conv.d.v
pushi.e 0
conv.i.v
push.v self.image_xscale
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.d 0.1
conv.d.v
pushi.e 0
conv.i.v
push.v self.image_xscale
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.mtimer
push.e 1
add.i.v
pop.v.v self.mtimer
push.v self.mtimer
pushi.e 300
cmp.i.v EQ
bf [18]

:[11]
pushi.e 766
pushenv [14]

:[12]
push.v self.captured
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 2
pop.v.i self.con

:[14]
popenv [12]
pushi.e 767
pushenv [17]

:[15]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 10
pop.v.i self.con
pushi.e -6
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.endtimer

:[17]
popenv [15]

:[18]
push.v self.mtimer
pushi.e 360
cmp.i.v GTE
bt [20]

:[19]
pushi.e 766
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [21]

:[20]
push.e 1

:[21]
bf [23]

:[22]
pushi.e 3
pop.v.i self.mcon

:[23]
push.v self.mcon
pushi.e 3
cmp.i.v EQ
bf [end]

:[24]
push.d 0.2
conv.d.v
pushi.e 2
conv.i.v
push.v self.image_xscale
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.d 0.2
conv.d.v
pushi.e 2
conv.i.v
push.v self.image_xscale
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.image_xscale
push.d 1.95
cmp.d.v GTE
bf [end]

:[25]
push.v self.mercycount
pushi.e 0
cmp.i.v GT
bf [27]

:[26]
pushi.e 2
pop.v.i self.image_xscale

:[27]
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.mcon
pushi.e 761
pushenv [32]

:[28]
pushi.e 18
pop.v.i self.actcon
push.v 768.mercycount
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.v 768.mercycount
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i 761.actfailure

:[30]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [32]

:[31]
pushi.e 19
pop.v.i self.actcon

:[32]
popenv [28]
call.i instance_destroy(argc=0)
popz.v
pushi.e 768
pushenv [34]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[34]
popenv [33]

:[end]