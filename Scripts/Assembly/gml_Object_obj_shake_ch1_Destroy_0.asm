.localvar 2 arguments

:[0]
push.v self.beenset
conv.v.b
bf [end]

:[1]
push.v self.mycamerax
push.v self.camera
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
push.v self.mycameray
push.v self.camera
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[end]