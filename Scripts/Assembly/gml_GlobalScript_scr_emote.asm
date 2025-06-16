.localvar 2 arguments

:[0]
b [13]

> gml_Script_scr_emote (locals=0, argc=0)
:[1]
pushi.e 1
pushglb.v global.darkzone
add.v.i
pop.v.v self.__dmult
pushi.e 273
conv.i.v
push.v self.y
pushi.e 15
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.__emotebubble
push.i 58460673
setowner.e
pushi.e -15
pushi.e 1
push.v [array]self.argument
push.v self.__emotebubble
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
push.v self.__dmult
push.v self.__emotebubble
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.__dmult
push.v self.__emotebubble
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 0
pop.v.i self.__emotexoff
push.v self.sprite_index
call.i sprite_get_xoffset(argc=1)
pop.v.v self.__anchorx
pushi.e -15
pushi.e 0
push.v [array]self.argument
push.s "!"@6155
cmp.s.v EQ
bf [3]

:[2]
pushi.e 1321
push.v self.__emotebubble
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.y
pushi.e 10
push.v self.__dmult
mul.v.i
sub.v.v
push.v self.__emotebubble
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 10
push.v self.__dmult
mul.v.i
pop.v.v self.__emotexoff

:[3]
pushi.e -15
pushi.e 0
push.v [array]self.argument
push.s "?"@4913
cmp.s.v EQ
bf [5]

:[4]
pushi.e 1322
push.v self.__emotebubble
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.y
pushi.e 10
push.v self.__dmult
mul.v.i
sub.v.v
push.v self.__emotebubble
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 10
push.v self.__dmult
mul.v.i
pop.v.v self.__emotexoff

:[5]
pushi.e -15
pushi.e 0
push.v [array]self.argument
push.s "..."@2873
cmp.s.v EQ
bf [7]

:[6]
pushi.e 1323
push.v self.__emotebubble
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.y
pushi.e 10
push.v self.__dmult
mul.v.i
sub.v.v
push.v self.__emotebubble
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 10
push.v self.__dmult
mul.v.i
pop.v.v self.__emotexoff

:[7]
pushbltn.v builtin.argument_count
pushi.e 3
cmp.i.v GTE
bf [9]

:[8]
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.__emotexoff

:[9]
push.v self.image_xscale
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
push.v self.x
push.v self.__anchorx
push.v self.image_xscale
mul.v.v
sub.v.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.image_xscale
call.i sign(argc=1)
mul.v.v
add.v.v
push.v self.__emotebubble
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.__emotexoff
add.v.v
push.v self.__emotebubble
pushi.e -9
pop.v.v [stacktop]self.x
b [12]

:[11]
push.v self.x
push.v self.__anchorx
push.v self.image_xscale
mul.v.v
add.v.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.image_xscale
call.i sign(argc=1)
mul.v.v
sub.v.v
push.v self.__emotebubble
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.__emotexoff
add.v.v
push.v self.__emotebubble
pushi.e -9
pop.v.v [stacktop]self.x

:[12]
exit.i

:[13]
push.i [function]gml_Script_scr_emote
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_emote
popz.v

:[end]