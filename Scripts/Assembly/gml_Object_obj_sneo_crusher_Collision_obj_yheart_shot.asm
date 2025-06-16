.localvar 2 arguments
.localvar 6706 d 12556

:[0]
push.v self.destroying
conv.v.b
bf [2]

:[1]
exit.i

:[2]
push.v self.offset
push.v self.offsetCap
cmp.v.v GT
bf [10]

:[3]
push.v self.y
push.v other.y
sub.v.v
call.i abs(argc=1)
push.v self.offset
cmp.v.v LT
bf [6]

:[4]
exit.i

:[5]
b [9]

:[6]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [8]

:[7]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[8]
popenv [7]

:[9]
b [end]

:[10]
push.v self.y
pushi.e 8
sub.i.v
push.v other.y
sub.v.v
call.i abs(argc=1)
pushi.e 24
push.v self.image_xscale
mul.v.i
cmp.v.v LTE
bf [12]

:[11]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [end]

:[14]
pushi.e 1
pop.v.i self.flash
push.v self.hp
push.v other.damage
sub.v.v
pop.v.v self.hp
push.v other.big
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v self.hp
pushi.e 1
cmp.i.v LT
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
b [22]

:[19]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [21]

:[20]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[21]
popenv [20]

:[22]
push.v self.new_movement
pushi.e 0
cmp.i.v EQ
bf [31]

:[23]
push.v self.difficulty
pushi.e 4
cmp.i.v EQ
bf [26]

:[24]
pushi.e 13
pop.v.i self.pushback
push.v other.big
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 22
pop.v.i self.pushback

:[26]
push.v self.difficulty
pushi.e 6
cmp.i.v EQ
bf [30]

:[27]
pushi.e 22
pop.v.i self.pushback
push.v other.big
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
pushi.e 22
pop.v.i self.pushback

:[29]
push.v self.depth
pushi.e 1
add.i.v
pop.v.v self.depth
push.i 8421504
pop.v.i self.image_blend

:[30]
b [39]

:[31]
push.v other.big
pushi.e 1
cmp.i.v EQ
bf [35]

:[32]
push.v self.hspeed
pushi.e 10
cmp.i.v LT
bf [34]

:[33]
pushi.e 10
pop.v.i self.hspeed

:[34]
push.v self.vspeed
pushi.e -3
conv.i.v
pushi.e 3
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.vspeed

:[35]
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [39]

:[36]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [38]

:[37]
pushi.e 0
pop.v.i self.hspeed

:[38]
push.v self.hspeed
pushi.e 2
add.i.v
pop.v.v self.hspeed
push.v self.vspeed
push.d 1.2
mul.d.v
pop.v.v self.vspeed

:[39]
push.v self.hp
pushi.e 0
cmp.i.v LTE
bf [end]

:[40]
pushi.e 0
pop.v.i self.active
pushi.e 15
pop.v.i self.destroying
pushi.e 459
conv.i.v
push.v self.y
push.v self.x
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i random_range(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.d
pushi.e 2071
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
sub.i.v
pushloc.v local.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 5
conv.i.v
call.i gml_Script_scr_tensionheal(argc=1)
popz.v
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bt [42]

:[41]
push.v self.difficulty
pushi.e 5
cmp.i.v EQ
b [43]

:[42]
push.e 1

:[43]
bf [45]

:[44]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[45]
push.v self.crushedObj
pushi.e 2
cmp.i.v EQ
bf [end]

:[46]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]