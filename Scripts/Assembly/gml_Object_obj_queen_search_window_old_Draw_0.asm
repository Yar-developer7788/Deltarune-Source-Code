.localvar 2 arguments
.localvar 24314 _count 11748
.localvar 24757 _finalstring 11749

:[0]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.image_xscale
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.image_xscale
push.d 0.2
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.2
add.d.v
pop.v.v self.image_yscale

:[3]
push.v self.image_xscale
pushi.e 1
cmp.i.v GTE
bf [5]

:[4]
pushi.e 1
pop.v.i self.state
pushi.e 1
pop.v.i self.image_index
pushi.e -10
pop.v.i self.timer

:[5]
push.v self.state
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.y
push.v self.x
pushi.e 2
conv.i.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[7]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [26]

:[8]
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
bt [10]

:[9]
pushloc.v local._count
push.v self.targetstring
call.i string_length(argc=1)
cmp.v.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [17]

:[12]
push.v self.typetimer
push.e 1
add.i.v
pop.v.v self.typetimer
push.v self.firsttime
conv.v.b
not.b
bf [14]

:[13]
push.v self.typetimer
push.e 1
add.i.v
pop.v.v self.typetimer

:[14]
push.v self.typetimer
pushi.e 30
mod.i.v
pushi.e 15
cmp.i.v LT
bf [16]

:[15]
push.v local._finalstring
push.s "|"@6160
add.s.v
pop.v.v local._finalstring

:[16]
b [18]

:[17]
pushi.e 0
pop.v.i self.typetimer

:[18]
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
bf [21]

:[19]
push.v self.search
pushi.e -1
cmp.i.v GT
bf [21]

:[20]
push.v self.search
pushi.e 3
cmp.i.v LT
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[24]
push.v self.timer
pushi.e 45
push.v self.spawndelay
add.v.i
cmp.v.v GTE
bf [26]

:[25]
pushi.e 2
pop.v.i self.state

:[26]
call.i draw_self(argc=0)
popz.v
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [end]

:[27]
push.v self.search
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
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

:[29]
push.v self.search
pushi.e 2
cmp.i.v EQ
bf [31]

:[30]
pushi.e 536
conv.i.v
push.v self.y
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

:[31]
push.v self.search
pushi.e 3
cmp.i.v EQ
bf [33]

:[32]
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

:[33]
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

:[34]
call.i instance_destroy(argc=0)
popz.v

:[end]