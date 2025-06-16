.localvar 2 arguments

:[0]
push.i 231591
setowner.e
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterx
push.i 231592
setowner.e
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstery
call.i gml_Script_scr_monstersetup(argc=0)
popz.v
pushglb.v global.encounterno
pushi.e 73
cmp.i.v EQ
bf [end]

:[1]
push.i 231908
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermaxhp
push.i 231862
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterhp

:[end]