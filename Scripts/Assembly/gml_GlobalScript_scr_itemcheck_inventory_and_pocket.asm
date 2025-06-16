.localvar 2 arguments
.localvar 6568 _haveeither 865
.localvar 6569 itemcounttotal 866

:[0]
b [7]

> gml_Script_scr_itemcheck_inventory_and_pocket (locals=2, argc=1)
:[1]
pushi.e 0
pop.v.i local._haveeither
pushi.e 0
pop.v.i local.itemcounttotal
push.v arg.argument0
call.i gml_Script_scr_itemcheck(argc=1)
popz.v
push.v self.haveit
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i local._haveeither

:[3]
push.v local.itemcounttotal
push.v self.itemcount
add.v.v
pop.v.v local.itemcounttotal
push.v arg.argument0
call.i gml_Script_scr_itemcheck_pocket(argc=1)
popz.v
push.v self.haveit
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i local._haveeither

:[5]
push.v local.itemcounttotal
push.v self.itemcount
add.v.v
pop.v.v local.itemcounttotal
pushloc.v local._haveeither
pop.v.v self.haveit
pushloc.v local.itemcounttotal
pop.v.v self.itemcount
push.v self.haveit
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_scr_itemcheck_inventory_and_pocket
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_itemcheck_inventory_and_pocket
popz.v

:[end]