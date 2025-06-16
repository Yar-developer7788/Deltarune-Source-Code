.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_iteminfo_temp_ch1 (locals=0, argc=1)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [4]

:[3]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.tempitem
push.v arg.argument0
conv.v.i
pushaf.e
pop.v.v self.itemid
push.v self.itemid
call.i gml_Script_scr_iteminfo_ch1(argc=1)
popz.v
push.i 56002751
setowner.e
push.v self.itemnameb
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.tempitemnameb
push.v arg.argument0
conv.v.i
popaf.e
push.i 56002752
setowner.e
push.v self.itemdescb
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.tempitemdescb
push.v arg.argument0
conv.v.i
popaf.e
push.i 56002753
setowner.e
push.v self.value
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.tempitemvalue
push.v arg.argument0
conv.v.i
popaf.e
push.i 56002754
setowner.e
push.v self.usable
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.tempitemusable
push.v arg.argument0
conv.v.i
popaf.e
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_iteminfo_temp_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_iteminfo_temp_ch1
popz.v

:[end]