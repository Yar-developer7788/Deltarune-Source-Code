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
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mspipis
push.v self.mspipis
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 3350
pop.v.i self.idlesprite
pushi.e 3350
pop.v.i self.hurtsprite
pushi.e 3350
pop.v.i self.sparedsprite
push.i 231907
setowner.e
push.s "obj_pipis_enemy_slash_Other_22_gml_21_0"@14819
conv.s.v
push.s "Ms. Pipis"@14820
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername

:[end]