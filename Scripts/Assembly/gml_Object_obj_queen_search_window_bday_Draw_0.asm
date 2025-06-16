.localvar 2 arguments
.localvar 24314 _count 11755
.localvar 24757 _finalstring 11756

:[0]
push.v self.state
pushi.e -1
cmp.i.v EQ
bf [3]

:[1]
push.v self.timer
push.v self.timer
pushi.e 1
add.i.v
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
push.d 0.5
conv.d.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [3]

:[2]
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.timer

:[3]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [6]

:[4]
push.v self.timer
push.v self.timer
pushi.e 1
add.i.v
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [6]

:[5]
pushi.e -10
pop.v.i self.timer
pushi.e 1
pop.v.i self.state
pushi.e 1
pop.v.i self.image_index
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale

:[6]
push.v self.state
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
push.v self.y
push.v self.x
pushi.e 2
conv.i.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[8]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [27]

:[9]
push.v self.y
push.v self.x
pushi.e 3
conv.i.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.targetstring
call.i string_length(argc=1)
pushi.e 0
conv.i.v
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
call.i clamp(argc=3)
pop.v.v local._count
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushloc.v local._count
pushi.e 0
conv.i.v
push.v self.targetstring
call.i string_copy(argc=3)
pop.v.v local._finalstring
pushloc.v local._count
pushi.e 0
cmp.i.v EQ
bt [11]

:[10]
pushloc.v local._count
push.v self.targetstring
call.i string_length(argc=1)
cmp.v.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [18]

:[13]
push.v self.typetimer
push.e 1
add.i.v
pop.v.v self.typetimer
push.v self.firsttime
conv.v.b
not.b
bf [15]

:[14]
push.v self.typetimer
push.e 1
add.i.v
pop.v.v self.typetimer

:[15]
push.v self.typetimer
pushi.e 30
mod.i.v
pushi.e 15
cmp.i.v LT
bf [17]

:[16]
push.v local._finalstring
push.s "|"@6160
add.s.v
pop.v.v local._finalstring

:[17]
b [19]

:[18]
pushi.e 0
pop.v.i self.typetimer

:[19]
pushloc.v local._finalstring
push.v self.y
pushi.e 7
sub.i.v
push.v self.x
pushi.e 48
sub.i.v
call.i draw_text(argc=3)
popz.v
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.firsttime
conv.v.b
not.b
bf [22]

:[20]
push.v self.search
pushi.e -1
cmp.i.v GT
bf [22]

:[21]
push.v self.search
pushi.e 3
cmp.i.v LT
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[25]
push.v self.timer
pushi.e 45
push.v self.spawndelay
add.v.i
cmp.v.v GTE
bf [27]

:[26]
pushi.e 2
pop.v.i self.state

:[27]
call.i draw_self(argc=0)
popz.v
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [end]

:[28]
push.v self.search
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 537
conv.i.v
push.v self.y
pushi.e 12
add.i.v
push.v self.x
pushi.e 20
push.v 872.x
push.v self.x
sub.v.v
call.i sign(argc=1)
mul.v.i
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
call.i @@This@@(argc=0)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.parentwindow
pushi.e 3
pop.v.i self.state
b [end]

:[30]
push.v self.search
pushi.e 3
cmp.i.v EQ
bf [32]

:[31]
pushi.e 546
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
call.i @@This@@(argc=0)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.parentwindow
pushi.e 3
pop.v.i self.state
b [end]

:[32]
push.v self.search
pushi.e 4
cmp.i.v EQ
bf [34]

:[33]
pushi.e 545
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
call.i @@This@@(argc=0)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.parentwindow
pushi.e 3
pop.v.i self.state
b [end]

:[34]
push.v self.image_xscale
push.d 0.2
sub.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.2
sub.d.v
pop.v.v self.image_yscale
push.v self.image_xscale
pushi.e 0
cmp.i.v LTE
bf [end]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[end]