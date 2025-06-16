.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_iteminfo_all (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [4]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.item
pop.v.v self.itemid
push.v self.itemid
call.i gml_Script_scr_iteminfo(argc=1)
popz.v
push.i 18581688
setowner.e
push.v self.itemnameb
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.itemnameb
push.i 18581689
setowner.e
push.v self.itemdescb
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.itemdescb
push.i 18581690
setowner.e
push.v self.value
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.itemvalue
push.i 18581692
setowner.e
push.v self.usable
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.itemusable
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_iteminfo_all
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_iteminfo_all
popz.v

:[end]