.localvar 2 arguments

:[0]
b [9]

> gml_Script_scr_armorget_ch1 (locals=0, argc=1)
:[1]
pushi.e 0
pop.v.i self.i
pushi.e 1
pop.v.i self.loop
pushi.e 0
pop.v.i self.noroom
push.i 113739526
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
pushi.e 12
pop.v.v [array]self.armor

:[2]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [8]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.armor
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v arg.argument0
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.armor
b [8]

:[5]
push.v self.i
pushi.e 12
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.noroom
b [8]

:[7]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[8]
push.i [function]gml_Script_scr_armorinfo_all_ch1
conv.i.v
call.i script_execute(argc=1)
popz.v
exit.i

:[9]
push.i [function]gml_Script_scr_armorget_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_armorget_ch1
popz.v

:[end]