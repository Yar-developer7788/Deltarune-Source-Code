.localvar 2 arguments

:[0]
push.v self.firecon
pushi.e 0
cmp.i.v EQ
bf [17]

:[1]
push.d 0.001
pop.v.d self.image_yscale
pushi.e 2
pop.v.i self.image_xscale
push.v self.effecttimer
pushi.e 42
cmp.i.v LTE
bf [3]

:[2]
push.v self.effecttimer
pushi.e 6
mod.i.v
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [13]

:[5]
push.v self._type
pushi.e 1
cmp.i.v EQ
bf [10]

:[6]
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [9]

:[8]
pushi.e 753
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 120
conv.i.v
call.i irandom(argc=1)
push.v self.i
pushi.e 120
mul.i.v
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 16
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.lifetime
push.v self.depth
pushi.e 1
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.image_blend
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.id
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.parenttarget
push.v self._type
push.v self.d
pushi.e -9
pop.v.v [stacktop]self._type
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [7]

:[9]
b [13]

:[10]
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [13]

:[12]
pushi.e 753
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 60
conv.i.v
call.i irandom(argc=1)
push.v self.i
pushi.e 60
mul.i.v
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 16
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.lifetime
push.v self.depth
pushi.e 1
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.image_blend
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.id
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.parenttarget
push.v self._type
push.v self.d
pushi.e -9
pop.v.v [stacktop]self._type
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [11]

:[13]
push.v self.effecttimer
pushi.e 50
cmp.i.v GT
bf [15]

:[14]
push.v self.orbsize
pushi.e 4
sub.i.v
pop.v.v self.orbsize
b [16]

:[15]
push.v self.orbsize
push.e 1
add.i.v
pop.v.v self.orbsize

:[16]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.orbsize
pushi.e 2
conv.i.d
div.d.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 2
conv.i.v
call.i max(argc=2)
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
push.v self.effecttimer
push.e 1
add.i.v
pop.v.v self.effecttimer
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
b [end]

:[17]
push.v self.firecon
pushi.e 1
cmp.i.v EQ
bf [22]

:[18]
pushi.e 1
pop.v.b self.active
pushi.e 2021
pop.v.i self.mask_index
push.v self.image_yscale
push.d 0.5
cmp.d.v LT
bf [20]

:[19]
push.d 0.1
conv.d.v
push.d 0.5
conv.d.v
push.v self.image_yscale
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.image_yscale
b [21]

:[20]
push.v self.image_yscale
push.d 0.05
sub.d.v
pop.v.v self.image_yscale

:[21]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.image_yscale
pushi.e 100
mul.i.v
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
call.i draw_self(argc=0)
popz.v
b [end]

:[22]
push.v self.firecon
pushi.e 2
cmp.i.v EQ
bf [end]

:[23]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.active
pushi.e 3229
pop.v.i self.mask_index
push.v self.image_yscale
push.d 0.01
cmp.d.v LTE
bf [25]

:[24]
push.v self.image_yscale
push.d 0.0025
sub.d.v
pop.v.v self.image_yscale
b [26]

:[25]
push.d 0.1
conv.d.v
push.d 0.01
conv.d.v
push.v self.image_yscale
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.image_yscale

:[26]
push.v self.image_yscale
pushi.e 0
cmp.i.v LTE
bf [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
pushi.e 0
conv.i.v
push.v self.image_yscale
pushi.e 100
mul.i.v
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
call.i draw_self(argc=0)
popz.v

:[end]