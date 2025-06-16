.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_keyiteminfo_all_ch1 (locals=0, argc=0)
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
push.v [array]self.keyitem
pop.v.v self.keyitemid
push.i 59542068
setowner.e
push.s " "@353
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.keyitemname
push.v self.keyitemid
call.i gml_Script_scr_keyiteminfo_ch1(argc=1)
popz.v
push.i 59542069
setowner.e
push.v self.tempkeyitemusable
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.keyitemusable
push.i 59542068
setowner.e
push.v self.tempkeyitemname
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.keyitemname
push.i 59542071
setowner.e
push.v self.tempkeyitemdesc
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.keyitemdesc
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_keyiteminfo_all_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_keyiteminfo_all_ch1
popz.v

:[end]