.localvar 2 arguments

:[0]
b [12]

> gml_Script_scr_dmenu_armor_selection_match (locals=0, argc=0)
:[1]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 14
push.v [array]self.submenucoord
pushi.e -5
pushi.e 13
push.v [array]self.submenucoord
cmp.v.v NEQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.i 24218003
setowner.e
pushi.e -5
pushi.e 13
push.v [array]self.submenucoord
pushi.e -5
pushi.e 14
pop.v.v [array]self.submenucoord

:[6]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
bf [8]

:[7]
pushi.e -5
pushi.e 13
push.v [array]self.submenucoord
pushi.e -5
pushi.e 14
push.v [array]self.submenucoord
cmp.v.v NEQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e -5
pushi.e 14
push.v [array]self.submenucoord
pushi.e -5
pushi.e 13
pop.v.v [array]self.submenucoord

:[11]
exit.i

:[12]
push.i [function]gml_Script_scr_dmenu_armor_selection_match
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_dmenu_armor_selection_match
popz.v

:[end]