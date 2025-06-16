.localvar 2 arguments

:[0]
b [10]

> gml_Script_scr_npcdir_ch1 (locals=0, argc=0)
:[1]
push.v self.facing
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.dtsprite
pop.v.v self.sprite_index

:[3]
push.v self.facing
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.rtsprite
pop.v.v self.sprite_index

:[5]
push.v self.facing
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
push.v self.utsprite
pop.v.v self.sprite_index

:[7]
push.v self.facing
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
push.v self.ltsprite
pop.v.v self.sprite_index

:[9]
exit.i

:[10]
push.i [function]gml_Script_scr_npcdir_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_npcdir_ch1
popz.v

:[end]