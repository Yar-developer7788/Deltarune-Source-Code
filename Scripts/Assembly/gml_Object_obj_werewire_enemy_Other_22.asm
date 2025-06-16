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
pushi.e 16
sub.i.v
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
pushi.e 32
sub.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstery
call.i gml_Script_scr_monstersetup(argc=0)
popz.v

:[end]