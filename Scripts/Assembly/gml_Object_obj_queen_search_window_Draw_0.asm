.localvar 2 arguments
.localvar 24314 _count 11738
.localvar 24757 _finalstring 11739
.localvar 24759 _halign 11740
.localvar 24761 _valign 11741
.localvar 24725 maxchainlength 11742

:[0]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
pushi.e 11
pop.v.i self.image_index
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
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 4
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
pushi.e 1
pop.v.i self.state
pushi.e 0
pop.v.i self.timer

:[3]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [9]

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
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [9]

:[5]
pushi.e 0
pop.v.i self.timer
push.v self.quick
conv.v.b
bf [7]

:[6]
pushi.e 3
conv.i.v
b [8]

:[7]
pushi.e 2
conv.i.v

:[8]
pop.v.v self.state
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[9]
call.i draw_self(argc=0)
popz.v
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [30]

:[10]
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
push.i 9034033
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
bt [12]

:[11]
pushloc.v local._count
push.v self.targetstring
call.i string_length(argc=1)
cmp.v.v EQ
b [13]

:[12]
push.e 1

:[13]
bf [21]

:[14]
push.v self.donttypeanything
pushi.e 0
cmp.i.v EQ
bf [20]

:[15]
push.v self.typetimer
push.e 1
add.i.v
pop.v.v self.typetimer
push.v self.firsttime
conv.v.b
not.b
bf [17]

:[16]
push.v self.typetimer
push.e 1
add.i.v
pop.v.v self.typetimer

:[17]
push.v self.typetimer
pushi.e 40
mod.i.v
pushi.e 20
cmp.i.v LT
bf [19]

:[18]
push.v local._finalstring
push.s "|"@6160
add.s.v
pop.v.v local._finalstring
b [20]

:[19]
push.v local._finalstring
push.s " "@353
add.s.v
pop.v.v local._finalstring

:[20]
b [22]

:[21]
pushi.e 0
pop.v.i self.typetimer

:[22]
call.i draw_get_halign(argc=0)
pop.v.v local._halign
call.i draw_get_valign(argc=0)
pop.v.v local._valign
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_valign(argc=1)
popz.v
pushloc.v local._finalstring
push.v self.y
push.v self.x
call.i draw_text(argc=3)
popz.v
pushloc.v local._halign
call.i draw_set_halign(argc=1)
popz.v
pushloc.v local._valign
call.i draw_set_valign(argc=1)
popz.v
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.firsttime
conv.v.b
not.b
bf [25]

:[23]
push.v self.search
pushi.e -1
cmp.i.v GT
bf [25]

:[24]
push.v self.search
pushi.e 3
cmp.i.v LT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[28]
push.v self.timer
pushi.e 45
push.v self.spawndelay
add.v.i
cmp.v.v GTE
bf [30]

:[29]
pushi.e 3
pop.v.i self.state
pushi.e 0
pop.v.i self.timer

:[30]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [41]

:[31]
push.v self.search
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
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
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
call.i @@This@@(argc=0)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.parentwindow
pushi.e 4
pop.v.i self.state
b [41]

:[33]
push.v self.search
pushi.e 2
cmp.i.v EQ
bf [38]

:[34]
pushi.e 135
pushi.e 65
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v local.maxchainlength
pushi.e 0
pop.v.i self.i

:[35]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [37]

:[36]
pushi.e 536
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
pushloc.v local.maxchainlength
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.maxchainlength
call.i @@This@@(argc=0)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.parentwindow
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.direction
push.v self.i
pushi.e 180
mul.i.v
add.v.v
pop.i.v [stacktop]self.direction
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [35]

:[37]
pushi.e 4
pop.v.i self.state
b [41]

:[38]
push.v self.search
pushi.e 3
cmp.i.v EQ
bf [40]

:[39]
pushi.e 550
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
call.i @@This@@(argc=0)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.parentwindow
pushi.e 4
pop.v.i self.state
b [41]

:[40]
pushi.e 5
pop.v.i self.state

:[41]
push.v self.state
pushi.e 5
cmp.i.v EQ
bf [end]

:[42]
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
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [end]

:[43]
call.i instance_destroy(argc=0)
popz.v

:[end]