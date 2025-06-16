.localvar 2 arguments

:[0]
push.v self.nexty
push.v self.driveSpeed
add.v.v
pop.v.v self.nexty
push.v self.nexty
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 4
sub.i.v
add.v.v
cmp.v.v GT
bf [2]

:[1]
push.v self.nexty
push.v 872.sprite_height
pushi.e 8
sub.i.v
sub.v.v
pop.v.v self.nexty

:[2]
push.v self.nexty
pop.v.v self.y
push.v self.anti_cheese
pushi.e 0
cmp.i.v EQ
bt [4]

:[3]
push.v self.anti_cheese
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [15]

:[6]
push.v self.cheese_timer
push.e 1
add.i.v
pop.v.v self.cheese_timer
push.v 631.x
push.v self.heart_xstart
cmp.v.v NEQ
bf [10]

:[7]
push.v self.anti_cheese
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.s ""@157
conv.s.v
call.i gml_Script_scr_debug_print(argc=1)
popz.v

:[9]
pushi.e -1
pop.v.i self.anti_cheese
b [15]

:[10]
push.v self.cheese_timer
pushi.e 45
cmp.i.v GTE
bf [12]

:[11]
push.v self.anti_cheese
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s ""@157
conv.s.v
call.i gml_Script_scr_debug_print(argc=1)
popz.v
pushi.e 1
pop.v.i self.anti_cheese

:[15]
push.v self.carhit
pushi.e 0
cmp.i.v GT
bf [17]

:[16]
push.v self.hitcheck
pushi.e 0
cmp.i.v NEQ
b [18]

:[17]
push.e 0

:[18]
bf [end]

:[19]
push.v self.hitcheck
pushi.e -1
cmp.i.v EQ
bf [23]

:[20]
pushi.e 411
pushenv [22]

:[21]
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[22]
popenv [21]

:[23]
pushi.e 392
pushenv [26]

:[24]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v LT
bf [26]

:[25]
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[26]
popenv [24]
pushi.e 0
pop.v.i self.hitcheck

:[end]