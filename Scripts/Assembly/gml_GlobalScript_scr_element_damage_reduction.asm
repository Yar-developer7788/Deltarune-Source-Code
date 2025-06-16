.localvar 2 arguments
.localvar 10378 ___element 2508
.localvar 10379 ___char 2509
.localvar 10380 ___reduction 2510
.localvar 10381 ___itemi 2511

:[0]
b [20]

> gml_Script_scr_element_damage_reduction (locals=4, argc=2)
:[1]
push.v arg.argument0
pop.v.v local.___element
push.v arg.argument1
pop.v.v local.___char
pushi.e 1
pop.v.i local.___reduction
pushloc.v local.___element
pushi.e 0
cmp.i.v NEQ
bf [16]

:[2]
pushi.e 0
pop.v.i local.___itemi

:[3]
pushloc.v local.___itemi
pushi.e 2
cmp.i.v LT
bf [16]

:[4]
pushi.e -5
pushloc.v local.___char
conv.v.i
push.v [arraypushaf]self.itemelement
pushloc.v local.___itemi
pushi.e 1
add.i.v
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v NEQ
bf [15]

:[5]
pushi.e -5
pushloc.v local.___char
conv.v.i
push.v [arraypushaf]self.itemelement
pushloc.v local.___itemi
pushi.e 1
add.i.v
conv.v.i
pushaf.e
pushloc.v local.___element
cmp.v.v EQ
bf [7]

:[6]
push.v local.___reduction
pushi.e -5
pushloc.v local.___char
conv.v.i
push.v [arraypushaf]self.itemelementamount
pushloc.v local.___itemi
pushi.e 1
add.i.v
conv.v.i
pushaf.e
sub.v.v
pop.v.v local.___reduction

:[7]
pushi.e -5
pushloc.v local.___char
conv.v.i
push.v [arraypushaf]self.itemelement
pushloc.v local.___itemi
pushi.e 1
add.i.v
conv.v.i
pushaf.e
pushi.e 9
cmp.i.v EQ
bf [13]

:[8]
pushloc.v local.___element
pushi.e 2
cmp.i.v EQ
bt [10]

:[9]
pushloc.v local.___element
pushi.e 8
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
push.v local.___reduction
pushi.e -5
pushloc.v local.___char
conv.v.i
push.v [arraypushaf]self.itemelementamount
pushloc.v local.___itemi
pushi.e 1
add.i.v
conv.v.i
pushaf.e
sub.v.v
pop.v.v local.___reduction

:[13]
pushi.e -5
pushloc.v local.___char
conv.v.i
push.v [arraypushaf]self.itemelement
pushloc.v local.___itemi
pushi.e 1
add.i.v
conv.v.i
pushaf.e
pushi.e 10
cmp.i.v EQ
bf [15]

:[14]
push.v local.___reduction
pushi.e -5
pushloc.v local.___char
conv.v.i
push.v [arraypushaf]self.itemelementamount
pushloc.v local.___itemi
pushi.e 1
add.i.v
conv.v.i
pushaf.e
sub.v.v
pop.v.v local.___reduction

:[15]
push.v local.___itemi
push.e 1
add.i.v
pop.v.v local.___itemi
b [3]

:[16]
pushloc.v local.___reduction
push.d 0.25
cmp.d.v LT
bf [18]

:[17]
push.d 0.25
pop.v.d local.___reduction

:[18]
pushloc.v local.___reduction
ret.v

:[19]
exit.i

:[20]
push.i [function]gml_Script_scr_element_damage_reduction
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_element_damage_reduction
popz.v

:[end]