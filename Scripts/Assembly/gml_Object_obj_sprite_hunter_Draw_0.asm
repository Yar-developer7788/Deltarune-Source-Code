.localvar 2 arguments
.localvar 14378 spriteName 6161
.localvar 14380 theString 6162

:[0]
push.v self.obj_len
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
push.v self.spriteID
call.i sprite_get_name(argc=1)
call.i string(argc=1)
pop.v.v local.spriteName
push.s "Objects with "@14379
pushloc.v local.spriteName
add.v.s
push.s ":"@6158
add.s.v
pop.v.v local.theString
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.obj_len
cmp.v.v LT
bf [4]

:[3]
push.v local.theString
push.s "\n"@150
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.objectNames
add.v.s
add.v.v
pop.v.v local.theString
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushloc.v local.theString
call.i gml_Script_cameray(argc=0)
pushi.e 30
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 10
add.i.v
call.i draw_text(argc=3)
popz.v

:[end]