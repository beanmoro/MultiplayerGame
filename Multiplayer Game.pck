GDPC                                                                                H   res://.import/eyeblock_char.png-254a13f06b923ec013a4de7ef4b4aa3e.stex   pm      �      ���W���}��̕�D   res://.import/solid_block.png-587042015a661a9ddd9102520842b80c.stex ��      9      TQ$�l��#;E&8��L   res://.import/tileSet_soldiblock.png-03f45d0e3e3c6e7dcf9806d6816a3163.stex   �      �      ��#`g�l�f��   res://HUD.tscn  P      �      �>��U���j�Ur�	   res://Lobby.gd.remap`�              )�Y�9R�� ������   res://Lobby.gdc �      }      c��]_h��D�ޫ" +   res://Lobby.tscn`      �      �P1,ϐX����5ޖ/   res://Player.gd.remap   ��      !       ��0�F �qq��dX��   res://Player.gdcP      �      Dg������zI
e   res://Player.tscn   +      A      �4γjj����.?G��   res://Spike.gd.remap��              �d���X���z�f�   res://Spike.gdc `.      S      ql$,VK	t9#�mp�   res://Spike.tscn�/      >      �Ɓo������J=�   res://Tiles.tscn 2      �      ���2�Ojp��	r�rB   res://World.tscn 8      �4       ��Zf�}e��
G�;   res://default_env.tres  �l      �       um�`�N��<*ỳ�8   res://eyeblock_char.png  �      �      ���	�D$\�p.����U    res://eyeblock_char.png.import  0o      �      �j�U^X-��L�,k9��   res://gamestate.gd.remapВ      $       �����,�ϵ#g   res://gamestate.gdc �q      �      �������:;.N�h�'   res://project.binary��            �?6[���)Є~k   res://solid_block.png.import��      �      �#gs�k-~������   res://tileSet.tres  `�      �      �أtB	\8�	j�N�$   res://tileSet_soldiblock.png.import ��      �      ��<���\`F��z��}        [gd_scene format=2]

[node name="HUD" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = -34.0
margin_top = -72.0
margin_right = -994.0
margin_bottom = -544.0

[node name="username" type="Label" parent="."]
anchor_left = 0.5
anchor_right = 0.5
margin_left = -32.0
margin_top = 8.0
margin_right = 32.0
margin_bottom = 22.0
grow_horizontal = 2
text = "username"
align = 1
valign = 1
 GDSC            l      ������ڶ   �ƶ�   ���¶���   �������Ӷ���   ���������Ŷ�   ����������������������Ҷ   ��������Ӷ��   ��������Ӷ��   ����������������������Ҷ   ��������Ӷ��   ��������������������������Ҷ   �������¶���$   ��������������������������������Ҷ��$   �������������������������������Ҷ���    ����������������������������Ҷ��   	   127.0.0.1         27015         UnnamedPlayer         5                                                       	      
   &      '      (      .      /      8      9      :      A      E      F      G      N      R      S      Z      ^      _      `      g      3YY;�  Y;�  �  Y;�  �  Y;�  �  YYY0�  PQV�  �  T�  P�  QYYY0�  PQV�  �  �  T�	  P�  R�  QYYY0�
  P�  QV�  �  �  YYY0�  P�  QV�  �  �  YY0�  P�  QV�  �  �  YYY0�  P�  QV�  �  �  `   [gd_scene load_steps=2 format=2]

[ext_resource path="res://Lobby.gd" type="Script" id=1]

[node name="Lobby" type="Control"]
script = ExtResource( 1 )

[node name="ConectionWindow" type="Panel" parent="."]
margin_left = 337.0
margin_top = 200.0
margin_right = 687.0
margin_bottom = 400.0
rect_min_size = Vector2( 350, 200 )

[node name="username_label" type="Label" parent="ConectionWindow"]
anchor_left = 0.5
anchor_right = 0.5
margin_left = -136.602
margin_top = 15.3579
margin_right = -61.6023
margin_bottom = 30.3579
text = "Username"

[node name="username_textbox" type="LineEdit" parent="ConectionWindow/username_label"]
margin_left = -5.0
margin_top = 14.0
margin_right = 123.0
margin_bottom = 38.0
text = "UnnamedPlayer"
max_length = 15
caret_blink = true
caret_blink_speed = 0.5

[node name="TabContainer" type="TabContainer" parent="ConectionWindow"]
anchor_right = 1.0
anchor_bottom = 1.0
margin_top = 40.0
tab_align = 2

[node name="Host" type="Tabs" parent="ConectionWindow/TabContainer"]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = 4.0
margin_top = 32.0
margin_right = -4.0
margin_bottom = -4.0

[node name="create_section" type="Control" parent="ConectionWindow/TabContainer/Host"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -105.5
margin_top = -22.5
margin_right = 105.5
margin_bottom = 22.5

[node name="port_label" type="Label" parent="ConectionWindow/TabContainer/Host/create_section"]
margin_right = 40.0
margin_bottom = 14.0
text = "Port"

[node name="port_textbox" type="LineEdit" parent="ConectionWindow/TabContainer/Host/create_section/port_label"]
margin_left = -5.0
margin_top = 14.0
margin_right = 67.0
margin_bottom = 38.0
text = "27015"
caret_blink = true
caret_blink_speed = 0.5

[node name="players_label" type="Label" parent="ConectionWindow/TabContainer/Host/create_section"]
margin_left = 74.0
margin_right = 150.0
margin_bottom = 14.0
text = "Players"

[node name="players_textbox" type="LineEdit" parent="ConectionWindow/TabContainer/Host/create_section/players_label"]
margin_left = -5.0
margin_top = 14.0
margin_right = 59.0
margin_bottom = 38.0
text = "4"
max_length = 2
caret_blink = true
caret_blink_speed = 0.5

[node name="host_button" type="Button" parent="ConectionWindow/TabContainer/Host/create_section"]
margin_left = 138.0
margin_top = 14.0
margin_right = 202.0
margin_bottom = 38.0
text = "Host"

[node name="Join" type="Tabs" parent="ConectionWindow/TabContainer"]
visible = false
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = 4.0
margin_top = 32.0
margin_right = -4.0
margin_bottom = -4.0

[node name="connect_section" type="Control" parent="ConectionWindow/TabContainer/Join"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -142.5
margin_top = -30.0
margin_right = 142.5
margin_bottom = 30.0

[node name="join_button" type="Button" parent="ConectionWindow/TabContainer/Join/connect_section"]
margin_left = 208.0
margin_top = 22.0
margin_right = 272.0
margin_bottom = 46.0
text = "Join"

[node name="ip_label" type="Label" parent="ConectionWindow/TabContainer/Join/connect_section"]
margin_left = 13.0
margin_top = 8.0
margin_right = 53.0
margin_bottom = 22.0
text = "IP "

[node name="ip_textbox" type="LineEdit" parent="ConectionWindow/TabContainer/Join/connect_section/ip_label"]
margin_left = -5.0
margin_top = 14.0
margin_right = 123.0
margin_bottom = 38.0
text = "127.0.0.1"
max_length = 15
caret_blink = true
caret_blink_speed = 0.5

[node name="port_label" type="Label" parent="ConectionWindow/TabContainer/Join/connect_section"]
margin_left = 143.0
margin_top = 8.0
margin_right = 183.0
margin_bottom = 22.0
text = "Port"

[node name="port_textbox" type="LineEdit" parent="ConectionWindow/TabContainer/Join/connect_section/port_label"]
margin_left = -5.0
margin_top = 14.0
margin_right = 59.0
margin_bottom = 38.0
text = "27015"
caret_blink = true
caret_blink_speed = 0.5
[connection signal="text_changed" from="ConectionWindow/username_label/username_textbox" to="." method="_on_username_textbox_text_changed"]
[connection signal="text_changed" from="ConectionWindow/TabContainer/Host/create_section/players_label/players_textbox" to="." method="_on_players_textbox_text_changed"]
[connection signal="pressed" from="ConectionWindow/TabContainer/Host/create_section/host_button" to="." method="_on_host_button_pressed"]
[connection signal="pressed" from="ConectionWindow/TabContainer/Join/connect_section/join_button" to="." method="_on_join_button_pressed"]
[connection signal="text_changed" from="ConectionWindow/TabContainer/Join/connect_section/ip_label/ip_textbox" to="." method="_on_ip_textbox_text_changed"]
[connection signal="text_changed" from="ConectionWindow/TabContainer/Join/connect_section/port_label/port_textbox" to="." method="_on_port_textbox_text_changed"]
       GDSC   5      k        ������������τ�   �������Ӷ���   �������¶���   ����Ҷ��   ���Ҷ���   ���Ҷ���   ����������Ҷ   �����׶�   �������Ӷ���   ���Ҷ���   ����������������Ŷ��   ���බ��   ����������   ����������   �����϶�   �����������ƶ���   �������Ӷ���   ��������ƶ��   ����������������Ķ��   �������ض���   ������¶   ���   ���¶���   ���������������Ŷ���   ����׶��   ������������¶��   ���������������¶���   ��������������ض   ���Ӷ���   ��������   ����¶��   �������������Ҷ�   ��������   ����򶶶   ����ᶶ�   ������������Ѷ��   ����䶶�   ������ض   ������ƶ   �������¶���   �������Ŷ���   �����������ƶ���   ���ڶ���   ������������   ���ڶ���   ��ն   ����������Ķ   �������������Ӷ�   �������������Ӷ�   ��������������ض   ��Ŷ   ����������Ҷ   ����Ӷ��                 2                Camera     �              PlayersGroup      El grupo existe       El grupo no existe              Se creo el Jugador!    
           �������?  �������?      World         TileMap             update_dead       update_position                                            !      &   	   '   
   0      5      6      @      A      F      K      P      Q      W      \      g      l      o      t      u      {            �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8     9     :     ;     <     =     >     ?   &  @   +  A   5  B   9  C   :  D   E  E   I  F   J  G   P  H   e  I   o  J   y  K   z  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g     h     i     j     k   3YY;�  Y;�  �  P�  R�  QY;�  �  Y;�  �  Y;�  �  Y;�  �  YY5;�  �  P�  QY;�	  �  YY;�
  �  P�  R�  QYY:�  �  Y:�  �  Y:�  �  YY0�  PQV�  �  P�  Q�  &�  PQT�  P�  QV�  �8  P�  Q�  (V�  �8  P�	  Q�  �  &�  PQV�  �
  �  �  �  T�  �
  �  (V�  �  T�  �  �  �  �8  P�  Q�  W�  �  T�  �  �  �8  P�  Q�  YY0�  P�  QV�  &�  PQV�  �  PQ�  &�	  V�  �  P�  Q�  �  PQ�  �  &�	  V�  �  PQ�  �  (V�  �  PQ�  �  �  YY0�  PQV�  &�  T�  P�   Q�  P�  Q	�  V�  �  �  �  '�  T�  P�!  Q�  P�  Q	�  V�  �  �  �  '�  P�  Q�  V�  �  �  �  (V�  �  �  �  �  &�  �  T�  P�"  QV�  �  �  �  &�#  PQ�  	�  V�  �  �  �  �  &�	  �  T�  P�$  QV�  �%  PQYY0�  PQV�  ;�&  �  PQT�'  PQT�  P�  QT�  P�  Q�  ;�(  �&  T�)  P�  Q�  ;�*  �&  T�+  P�(  Q�  �  &�*  �  V�  �,  PQYY0�%  PQV�  �	  �  �  �  �
  �  �-  P�  R�	  QYY0�,  PQV�  �	  �
  �  �-  P�  R�	  QYY0�  P�  QV�  �  �  �.  PQ�  �  &�  V�  &�  
�  V�  �  �  �  (V�  �  �  �  '�  �  T�  P�"  QV�  �  �  �  �  �/  P�  P�  �  R�  QR�  P�  R�  QQ�  �0  P�  R�  QYYH0�1  P�2  QV�  �  �2  YYH0�3  P�4  QV�  �	  �4  `  [gd_scene load_steps=5 format=2]

[ext_resource path="res://Player.gd" type="Script" id=1]
[ext_resource path="res://eyeblock_char.png" type="Texture" id=2]
[ext_resource path="res://HUD.tscn" type="PackedScene" id=3]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 15.0267, 14.9203 )

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Camera" type="Camera2D" parent="."]
drag_margin_left = 0.0
drag_margin_top = 0.5
drag_margin_right = 0.0
drag_margin_bottom = 0.5

[node name="HUD" parent="." instance=ExtResource( 3 )]
margin_left = -0.354706
margin_top = -51.4732
margin_right = -0.354706
margin_bottom = -51.4732
               GDSC            *      �����Ӷ�   �����϶�   �������ׄ�������������Ҷ   ���϶���   ����������ƶ   ���Ҷ���      PlayersGroup                                                          	      
                     "      (      3YYYYYYY0�  PQV�  -YYY0�  P�  QV�  &�  T�  PQV�  �  T�  �  Y`             [gd_scene load_steps=3 format=2]

[ext_resource path="res://tileSet_soldiblock.png" type="Texture" id=1]
[ext_resource path="res://Spike.gd" type="Script" id=2]

[node name="Spike" type="Sprite"]
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 96, 0, 32, 32 )
script = ExtResource( 2 )

[node name="Area2D" type="Area2D" parent="."]

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="Area2D"]
polygon = PoolVector2Array( -16, 16, 0, -16, 16, 16 )
[connection signal="body_entered" from="Area2D" to="." method="_on_Area2D_body_entered"]
  [gd_scene load_steps=3 format=2]

[ext_resource path="res://tileSet_soldiblock.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 16, 16 )

[node name="Tiles" type="Node2D"]

[node name="0" type="Sprite" parent="."]
editor/display_folded = true
position = Vector2( 16, 16 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 0, 0, 32, 32 )

[node name="StaticBody2D" type="StaticBody2D" parent="0"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="0/StaticBody2D"]
shape = SubResource( 1 )

[node name="1" type="Sprite" parent="."]
editor/display_folded = true
position = Vector2( 64, 16 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 32, 0, 32, 32 )

[node name="StaticBody2D" type="StaticBody2D" parent="1"]

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="1/StaticBody2D"]
polygon = PoolVector2Array( -16, 16, 16, -16, 16, 16 )

[node name="2" type="Sprite" parent="."]
editor/display_folded = true
position = Vector2( 128, 16 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 64, 0, 32, 32 )
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="2"]

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="2/StaticBody2D"]
polygon = PoolVector2Array( -16, 16, -16, -16, 16, 16 )

[node name="3" type="Sprite" parent="."]
position = Vector2( 192, 16 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 96, 0, 32, 32 )
          [gd_scene load_steps=2 format=2]

[ext_resource path="res://tileSet.tres" type="TileSet" id=1]

[node name="World" type="Node2D"]

[node name="Players" type="Node2D" parent="."]

[node name="TileMap" type="TileMap" parent="."]
tile_set = ExtResource( 1 )
cell_size = Vector2( 32, 32 )
format = 1
tile_data = PoolIntArray( 0, 0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0, 7, 0, 0, 8, 0, 0, 9, 0, 0, 10, 0, 0, 11, 0, 0, 12, 0, 0, 13, 0, 0, 14, 0, 0, 15, 0, 0, 16, 0, 0, 17, 0, 0, 18, 0, 0, 19, 0, 0, 20, 0, 0, 21, 0, 0, 22, 0, 0, 23, 0, 0, 24, 0, 0, 25, 0, 0, 26, 0, 0, 27, 0, 0, 28, 0, 0, 29, 0, 0, 30, 0, 0, 31, 0, 0, 32, 0, 0, 33, 0, 0, 34, 0, 0, 35, 0, 0, 36, 0, 0, 37, 0, 0, 38, 0, 0, 39, 0, 0, 40, 0, 0, 41, 0, 0, 42, 0, 0, 43, 0, 0, 44, 0, 0, 45, 0, 0, 46, 0, 0, 47, 0, 0, 48, 0, 0, 49, 0, 0, 50, 0, 0, 51, 0, 0, 52, 0, 0, 53, 0, 0, 54, 0, 0, 55, 0, 0, 56, 0, 0, 57, 0, 0, 58, 0, 0, 59, 0, 0, 60, 0, 0, 61, 0, 0, 62, 0, 0, 63, 0, 0, 64, 0, 0, 65, 0, 0, 66, 0, 0, 67, 0, 0, 68, 0, 0, 69, 0, 0, 70, 0, 0, 71, 0, 0, 72, 0, 0, 73, 0, 0, 74, 0, 0, 75, 0, 0, 76, 0, 0, 77, 0, 0, 78, 0, 0, 79, 0, 0, 80, 0, 0, 81, 0, 0, 82, 0, 0, 83, 0, 0, 84, 0, 0, 85, 0, 0, 86, 0, 0, 87, 0, 0, 88, 0, 0, 89, 0, 0, 90, 0, 0, 91, 0, 0, 92, 0, 0, 93, 0, 0, 94, 0, 0, 95, 0, 0, 96, 0, 0, 97, 0, 0, 98, 0, 0, 99, 0, 0, 100, 0, 0, 101, 0, 0, 102, 0, 0, 103, 0, 0, 104, 0, 0, 105, 0, 0, 106, 0, 0, 107, 0, 0, 108, 0, 0, 109, 0, 0, 110, 0, 0, 111, 0, 0, 112, 0, 0, 113, 0, 0, 114, 0, 0, 115, 0, 0, 116, 0, 0, 117, 0, 0, 118, 0, 0, 119, 0, 0, 120, 0, 0, 65536, 0, 0, 65656, 0, 0, 131072, 0, 0, 131192, 0, 0, 196608, 0, 0, 196728, 0, 0, 262144, 0, 0, 262173, 1, 0, 262174, 0, 0, 262175, 0, 0, 262176, 0, 0, 262177, 2, 0, 262183, 1, 0, 262184, 0, 0, 262187, 0, 0, 262190, 0, 0, 262193, 0, 0, 262196, 0, 0, 262199, 0, 0, 262203, 0, 0, 262207, 0, 0, 262211, 1, 0, 262212, 0, 0, 262213, 0, 0, 262214, 0, 0, 262215, 0, 0, 262216, 2, 0, 262231, 1, 0, 262232, 0, 0, 262233, 0, 0, 262234, 0, 0, 262235, 0, 0, 262236, 0, 0, 262264, 0, 0, 327680, 0, 0, 327708, 1, 0, 327709, 0, 0, 327710, 0, 0, 327711, 0, 0, 327713, 0, 0, 327714, 2, 0, 327719, 0, 0, 327720, 0, 0, 327723, 0, 0, 327724, 3, 0, 327725, 3, 0, 327726, 0, 0, 327727, 3, 0, 327728, 3, 0, 327729, 0, 0, 327730, 3, 0, 327731, 3, 0, 327732, 0, 0, 327733, 3, 0, 327734, 3, 0, 327735, 0, 0, 327736, 3, 0, 327737, 3, 0, 327738, 3, 0, 327739, 0, 0, 327740, 3, 0, 327741, 3, 0, 327742, 3, 0, 327743, 0, 0, 327744, 3, 0, 327745, 3, 0, 327746, 3, 0, 327747, 0, 0, 327752, 0, 0, 327753, 2, 0, 327766, 1, 0, 327767, 0, 0, 327800, 0, 0, 393216, 0, 0, 393243, 1, 0, 393244, 0, 0, 393245, 0, 0, 393246, 0, 0, 393247, 0, 0, 393250, 0, 0, 393251, 2, 0, 393259, 0, 0, 393260, 0, 0, 393261, 0, 0, 393262, 0, 0, 393263, 0, 0, 393264, 0, 0, 393265, 0, 0, 393266, 0, 0, 393267, 0, 0, 393268, 0, 0, 393269, 0, 0, 393270, 0, 0, 393271, 0, 0, 393272, 0, 0, 393273, 0, 0, 393274, 0, 0, 393275, 0, 0, 393276, 0, 0, 393277, 0, 0, 393278, 0, 0, 393279, 0, 0, 393280, 0, 0, 393281, 0, 0, 393282, 0, 0, 393283, 0, 0, 393289, 0, 0, 393290, 2, 0, 393301, 1, 0, 393302, 0, 0, 393336, 0, 0, 458752, 0, 0, 458778, 1, 0, 458779, 0, 0, 458780, 0, 0, 458781, 0, 0, 458782, 0, 0, 458783, 0, 0, 458787, 0, 0, 458788, 2, 0, 458826, 0, 0, 458827, 2, 0, 458836, 1, 0, 458837, 0, 0, 458872, 0, 0, 524288, 0, 0, 524313, 1, 0, 524314, 0, 0, 524315, 0, 0, 524316, 0, 0, 524317, 0, 0, 524318, 0, 0, 524319, 0, 0, 524324, 0, 0, 524325, 2, 0, 524363, 0, 0, 524364, 0, 0, 524365, 0, 0, 524370, 0, 0, 524371, 0, 0, 524372, 0, 0, 524408, 0, 0, 589824, 0, 0, 589825, 0, 0, 589826, 0, 0, 589827, 0, 0, 589828, 0, 0, 589829, 0, 0, 589830, 0, 0, 589831, 0, 0, 589832, 0, 0, 589833, 0, 0, 589834, 0, 0, 589835, 0, 0, 589836, 0, 0, 589837, 0, 0, 589838, 0, 0, 589839, 0, 0, 589840, 0, 0, 589841, 0, 0, 589842, 0, 0, 589843, 0, 0, 589844, 0, 0, 589845, 0, 0, 589846, 0, 0, 589847, 0, 0, 589848, 0, 0, 589849, 0, 0, 589850, 0, 0, 589851, 0, 0, 589852, 0, 0, 589853, 0, 0, 589854, 0, 0, 589855, 0, 0, 589861, 0, 0, 589862, 2, 0, 589901, 0, 0, 589906, 0, 0, 589944, 0, 0, 655360, 0, 0, 655398, 0, 0, 655399, 2, 0, 655437, 0, 0, 655442, 0, 0, 655480, 0, 0, 720896, 0, 0, 720935, 0, 0, 720973, 0, 0, 720978, 0, 0, 721016, 0, 0, 786432, 0, 0, 786471, 0, 0, 786509, 0, 0, 786514, 0, 0, 786552, 0, 0, 851968, 0, 0, 852007, 0, 0, 852008, 3, 0, 852009, 3, 0, 852010, 2, 0, 852045, 0, 0, 852050, 0, 0, 852088, 0, 0, 917504, 0, 0, 917543, 0, 0, 917544, 0, 0, 917545, 0, 0, 917546, 0, 0, 917547, 2, 0, 917581, 0, 0, 917586, 0, 0, 917624, 0, 0, 983040, 0, 0, 983083, 0, 0, 983084, 2, 0, 983117, 0, 0, 983122, 0, 0, 983160, 0, 0, 1048576, 0, 0, 1048620, 0, 0, 1048621, 2, 0, 1048653, 0, 0, 1048658, 0, 0, 1048696, 0, 0, 1114112, 0, 0, 1114157, 0, 0, 1114158, 2, 0, 1114189, 0, 0, 1114194, 0, 0, 1114232, 0, 0, 1179648, 0, 0, 1179694, 0, 0, 1179695, 2, 0, 1179725, 0, 0, 1179730, 0, 0, 1179768, 0, 0, 1245184, 0, 0, 1245231, 0, 0, 1245232, 2, 0, 1245261, 0, 0, 1245266, 0, 0, 1245304, 0, 0, 1310720, 0, 0, 1310768, 0, 0, 1310769, 2, 0, 1310797, 0, 0, 1310802, 0, 0, 1310840, 0, 0, 1376256, 0, 0, 1376305, 0, 0, 1376306, 2, 0, 1376333, 0, 0, 1376338, 0, 0, 1376376, 0, 0, 1441792, 0, 0, 1441842, 0, 0, 1441843, 2, 0, 1441869, 0, 0, 1441874, 0, 0, 1441912, 0, 0, 1507328, 0, 0, 1507379, 0, 0, 1507380, 2, 0, 1507405, 0, 0, 1507408, 3, 0, 1507409, 3, 0, 1507410, 0, 0, 1507448, 0, 0, 1572864, 0, 0, 1572916, 0, 0, 1572917, 2, 0, 1572924, 1, 0, 1572925, 0, 0, 1572941, 0, 0, 1572944, 0, 0, 1572945, 0, 0, 1572946, 0, 0, 1572984, 0, 0, 1638400, 0, 0, 1638453, 0, 0, 1638454, 2, 0, 1638459, 1, 0, 1638460, 0, 0, 1638477, 0, 0, 1638482, 0, 0, 1638520, 0, 0, 1703936, 0, 0, 1703990, 0, 0, 1703994, 1, 0, 1703995, 0, 0, 1704013, 0, 0, 1704018, 0, 0, 1704056, 0, 0, 1769472, 0, 0, 1769529, 1, 0, 1769530, 0, 0, 1769549, 0, 0, 1769554, 0, 0, 1769592, 0, 0, 1835008, 0, 0, 1835064, 1, 0, 1835065, 0, 0, 1835085, 0, 0, 1835090, 0, 0, 1835128, 0, 0, 1900544, 0, 0, 1900599, 1, 0, 1900600, 0, 0, 1900621, 0, 0, 1900626, 0, 0, 1900664, 0, 0, 1966080, 0, 0, 1966134, 1, 0, 1966135, 0, 0, 1966157, 0, 0, 1966162, 0, 0, 1966200, 0, 0, 2031616, 0, 0, 2031669, 1, 0, 2031670, 0, 0, 2031693, 0, 0, 2031698, 0, 0, 2031736, 0, 0, 2097152, 0, 0, 2097204, 1, 0, 2097205, 0, 0, 2097229, 0, 0, 2097234, 0, 0, 2097272, 0, 0, 2162688, 0, 0, 2162739, 1, 0, 2162740, 0, 0, 2162765, 0, 0, 2162770, 0, 0, 2162808, 0, 0, 2228224, 0, 0, 2228274, 1, 0, 2228275, 0, 0, 2228301, 0, 0, 2228306, 0, 0, 2228344, 0, 0, 2293760, 0, 0, 2293809, 1, 0, 2293810, 0, 0, 2293837, 0, 0, 2293842, 0, 0, 2293880, 0, 0, 2359296, 0, 0, 2359344, 1, 0, 2359345, 0, 0, 2359373, 0, 0, 2359374, 3, 0, 2359375, 3, 0, 2359378, 0, 0, 2359416, 0, 0, 2424832, 0, 0, 2424879, 1, 0, 2424880, 0, 0, 2424909, 0, 0, 2424910, 0, 0, 2424911, 0, 0, 2424914, 0, 0, 2424952, 0, 0, 2490368, 0, 0, 2490414, 1, 0, 2490415, 0, 0, 2490445, 0, 0, 2490450, 0, 0, 2490488, 0, 0, 2555904, 0, 0, 2555949, 1, 0, 2555950, 0, 0, 2555981, 0, 0, 2555986, 0, 0, 2556024, 0, 0, 2621440, 0, 0, 2621484, 1, 0, 2621485, 0, 0, 2621517, 0, 0, 2621522, 0, 0, 2621560, 0, 0, 2686976, 0, 0, 2687019, 1, 0, 2687020, 0, 0, 2687053, 0, 0, 2687058, 0, 0, 2687096, 0, 0, 2752512, 0, 0, 2752554, 1, 0, 2752555, 0, 0, 2752589, 0, 0, 2752594, 0, 0, 2752632, 0, 0, 2818048, 0, 0, 2818089, 1, 0, 2818090, 0, 0, 2818125, 0, 0, 2818130, 0, 0, 2818168, 0, 0, 2883584, 0, 0, 2883624, 1, 0, 2883625, 0, 0, 2883661, 0, 0, 2883666, 0, 0, 2883704, 0, 0, 2949120, 0, 0, 2949159, 1, 0, 2949160, 0, 0, 2949197, 0, 0, 2949202, 0, 0, 2949240, 0, 0, 3014656, 0, 0, 3014685, 0, 0, 3014686, 2, 0, 3014694, 1, 0, 3014695, 0, 0, 3014733, 0, 0, 3014738, 0, 0, 3014776, 0, 0, 3080192, 0, 0, 3080222, 0, 0, 3080223, 2, 0, 3080229, 1, 0, 3080230, 0, 0, 3080269, 0, 0, 3080274, 0, 0, 3080312, 0, 0, 3145728, 0, 0, 3145759, 0, 0, 3145760, 2, 0, 3145764, 1, 0, 3145765, 0, 0, 3145805, 0, 0, 3145810, 0, 0, 3145848, 0, 0, 3211264, 0, 0, 3211296, 0, 0, 3211297, 2, 0, 3211300, 0, 0, 3211341, 0, 0, 3211346, 0, 0, 3211384, 0, 0, 3276800, 0, 0, 3276833, 0, 0, 3276834, 2, 0, 3276877, 0, 0, 3276882, 0, 0, 3276920, 0, 0, 3342336, 0, 0, 3342370, 0, 0, 3342371, 2, 0, 3342413, 0, 0, 3342418, 0, 0, 3342456, 0, 0, 3407872, 0, 0, 3407907, 0, 0, 3407908, 2, 0, 3407949, 0, 0, 3407992, 0, 0, 3473408, 0, 0, 3473444, 0, 0, 3473445, 2, 0, 3473485, 0, 0, 3473528, 0, 0, 3538944, 0, 0, 3538981, 0, 0, 3538982, 2, 0, 3539021, 0, 0, 3539064, 0, 0, 3604480, 0, 0, 3604518, 0, 0, 3604519, 2, 0, 3604557, 0, 0, 3604600, 0, 0, 3670016, 0, 0, 3670055, 0, 0, 3670056, 2, 0, 3670093, 0, 0, 3670098, 0, 0, 3670099, 0, 0, 3670100, 0, 0, 3670136, 0, 0, 3735552, 0, 0, 3735592, 0, 0, 3735593, 2, 0, 3735629, 0, 0, 3735630, 3, 0, 3735631, 3, 0, 3735632, 3, 0, 3735633, 3, 0, 3735634, 0, 0, 3735672, 0, 0, 3801088, 0, 0, 3801129, 0, 0, 3801130, 2, 0, 3801165, 0, 0, 3801166, 0, 0, 3801167, 0, 0, 3801168, 0, 0, 3801169, 0, 0, 3801170, 0, 0, 3801208, 0, 0, 3866624, 0, 0, 3866666, 0, 0, 3866667, 2, 0, 3866744, 0, 0, 3932160, 0, 0, 3932203, 0, 0, 3932204, 2, 0, 3932280, 0, 0, 3997696, 0, 0, 3997740, 0, 0, 3997741, 2, 0, 3997816, 0, 0, 4063232, 0, 0, 4063277, 0, 0, 4063278, 2, 0, 4063352, 0, 0, 4128768, 0, 0, 4128814, 0, 0, 4128815, 2, 0, 4128888, 0, 0, 4194304, 0, 0, 4194351, 0, 0, 4194352, 2, 0, 4194424, 0, 0, 4259840, 0, 0, 4259888, 0, 0, 4259889, 2, 0, 4259960, 0, 0, 4325376, 0, 0, 4325425, 0, 0, 4325426, 2, 0, 4325496, 0, 0, 4390912, 0, 0, 4390962, 0, 0, 4390963, 2, 0, 4390977, 1, 0, 4390978, 0, 0, 4391032, 0, 0, 4456448, 0, 0, 4456499, 0, 0, 4456500, 2, 0, 4456512, 1, 0, 4456513, 0, 0, 4456568, 0, 0, 4521984, 0, 0, 4522036, 0, 0, 4522037, 2, 0, 4522047, 1, 0, 4522048, 0, 0, 4522104, 0, 0, 4587520, 0, 0, 4587573, 0, 0, 4587574, 2, 0, 4587582, 1, 0, 4587583, 0, 0, 4587640, 0, 0, 4653056, 0, 0, 4653110, 0, 0, 4653111, 2, 0, 4653117, 1, 0, 4653118, 0, 0, 4653176, 0, 0, 4718592, 0, 0, 4718647, 0, 0, 4718648, 2, 0, 4718652, 1, 0, 4718653, 0, 0, 4718712, 0, 0, 4784128, 0, 0, 4784184, 0, 0, 4784187, 1, 0, 4784188, 0, 0, 4784248, 0, 0, 4849664, 0, 0, 4849722, 1, 0, 4849723, 0, 0, 4849784, 0, 0, 4915200, 0, 0, 4915257, 1, 0, 4915258, 0, 0, 4915320, 0, 0, 4980736, 0, 0, 4980792, 1, 0, 4980793, 0, 0, 4980856, 0, 0, 5046272, 0, 0, 5046327, 1, 0, 5046328, 0, 0, 5046392, 0, 0, 5111808, 0, 0, 5111862, 1, 0, 5111863, 0, 0, 5111928, 0, 0, 5177344, 0, 0, 5177397, 1, 0, 5177398, 0, 0, 5177464, 0, 0, 5242880, 0, 0, 5242932, 1, 0, 5242933, 0, 0, 5243000, 0, 0, 5308416, 0, 0, 5308467, 1, 0, 5308468, 0, 0, 5308536, 0, 0, 5373952, 0, 0, 5374002, 1, 0, 5374003, 0, 0, 5374072, 0, 0, 5439488, 0, 0, 5439537, 1, 0, 5439538, 0, 0, 5439608, 0, 0, 5505024, 0, 0, 5505072, 1, 0, 5505073, 0, 0, 5505144, 0, 0, 5570560, 0, 0, 5570607, 1, 0, 5570608, 0, 0, 5570680, 0, 0, 5636096, 0, 0, 5636142, 1, 0, 5636143, 0, 0, 5636216, 0, 0, 5701632, 0, 0, 5701677, 1, 0, 5701678, 0, 0, 5701752, 0, 0, 5767168, 0, 0, 5767212, 1, 0, 5767213, 0, 0, 5767288, 0, 0, 5832704, 0, 0, 5832747, 1, 0, 5832748, 0, 0, 5832824, 0, 0, 5898240, 0, 0, 5898282, 1, 0, 5898283, 0, 0, 5898360, 0, 0, 5963776, 0, 0, 5963818, 0, 0, 5963896, 0, 0, 6029312, 0, 0, 6029432, 0, 0, 6094848, 0, 0, 6094886, 1, 0, 6094887, 0, 0, 6094888, 2, 0, 6094968, 0, 0, 6160384, 0, 0, 6160504, 0, 0, 6225920, 0, 0, 6225955, 1, 0, 6225956, 0, 0, 6225987, 1, 0, 6225988, 0, 0, 6226006, 0, 0, 6226007, 2, 0, 6226040, 0, 0, 6291456, 0, 0, 6291490, 1, 0, 6291491, 0, 0, 6291492, 0, 0, 6291522, 1, 0, 6291523, 0, 0, 6291524, 0, 0, 6291525, 3, 0, 6291526, 3, 0, 6291527, 3, 0, 6291528, 3, 0, 6291529, 3, 0, 6291530, 3, 0, 6291531, 3, 0, 6291532, 3, 0, 6291533, 3, 0, 6291534, 3, 0, 6291535, 3, 0, 6291536, 3, 0, 6291537, 3, 0, 6291538, 3, 0, 6291539, 3, 0, 6291540, 3, 0, 6291541, 3, 0, 6291542, 0, 0, 6291543, 0, 0, 6291544, 2, 0, 6291576, 0, 0, 6356992, 0, 0, 6356993, 0, 0, 6356994, 0, 0, 6356995, 0, 0, 6356996, 0, 0, 6356997, 0, 0, 6356998, 0, 0, 6356999, 0, 0, 6357000, 0, 0, 6357001, 0, 0, 6357002, 0, 0, 6357003, 0, 0, 6357004, 0, 0, 6357005, 0, 0, 6357006, 0, 0, 6357007, 0, 0, 6357008, 0, 0, 6357009, 0, 0, 6357010, 0, 0, 6357011, 0, 0, 6357012, 0, 0, 6357013, 0, 0, 6357014, 0, 0, 6357015, 0, 0, 6357016, 0, 0, 6357017, 0, 0, 6357018, 0, 0, 6357019, 0, 0, 6357020, 0, 0, 6357021, 0, 0, 6357022, 0, 0, 6357023, 0, 0, 6357024, 0, 0, 6357025, 0, 0, 6357026, 0, 0, 6357027, 0, 0, 6357028, 0, 0, 6357029, 0, 0, 6357030, 0, 0, 6357031, 0, 0, 6357032, 0, 0, 6357033, 0, 0, 6357034, 0, 0, 6357035, 0, 0, 6357036, 0, 0, 6357037, 0, 0, 6357038, 0, 0, 6357039, 0, 0, 6357040, 0, 0, 6357041, 0, 0, 6357042, 0, 0, 6357043, 0, 0, 6357044, 0, 0, 6357045, 0, 0, 6357046, 0, 0, 6357047, 0, 0, 6357048, 0, 0, 6357049, 0, 0, 6357050, 0, 0, 6357051, 0, 0, 6357052, 0, 0, 6357053, 0, 0, 6357054, 0, 0, 6357055, 0, 0, 6357056, 0, 0, 6357057, 0, 0, 6357058, 0, 0, 6357059, 0, 0, 6357060, 0, 0, 6357061, 0, 0, 6357062, 0, 0, 6357063, 0, 0, 6357064, 0, 0, 6357065, 0, 0, 6357066, 0, 0, 6357067, 0, 0, 6357068, 0, 0, 6357069, 0, 0, 6357070, 0, 0, 6357071, 0, 0, 6357072, 0, 0, 6357073, 0, 0, 6357074, 0, 0, 6357075, 0, 0, 6357076, 0, 0, 6357077, 0, 0, 6357078, 0, 0, 6357079, 0, 0, 6357080, 0, 0, 6357081, 0, 0, 6357082, 0, 0, 6357083, 0, 0, 6357084, 0, 0, 6357085, 0, 0, 6357086, 0, 0, 6357087, 0, 0, 6357088, 0, 0, 6357089, 0, 0, 6357090, 0, 0, 6357091, 0, 0, 6357092, 0, 0, 6357093, 0, 0, 6357094, 0, 0, 6357095, 0, 0, 6357096, 0, 0, 6357097, 0, 0, 6357098, 0, 0, 6357099, 0, 0, 6357100, 0, 0, 6357101, 0, 0, 6357102, 0, 0, 6357103, 0, 0, 6357104, 0, 0, 6357105, 0, 0, 6357106, 0, 0, 6357107, 0, 0, 6357108, 0, 0, 6357109, 0, 0, 6357110, 0, 0, 6357111, 0, 0, 6357112, 0, 0 )
[gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST                 �  PNG �PNG

   IHDR           szz�  YIDATX�͗1N�0�[]"�``��'(#R�����K�˰t@Tb�T	q�,�Y��:rͳ����)�_��~v�lU��8�C^) �#�{�ą��}'���3�n��S���eB�ht�G��W����>���1�^�!�4��j�͢:k��w���dbЀy\�q'C��������p4Z�Yy���&\T��u��ﾮ�����X�D��n�ӾM��JT� �{Cm�K��͌|Nf�����S�"��;F�pf3{ P�j�����ٛ�ˀ�DHC�7��0b?��F�3�h���|�L�87���Y�ב7��u?̙	 �d@�����t?��a    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/eyeblock_char.png-254a13f06b923ec013a4de7ef4b4aa3e.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://eyeblock_char.png"
dest_files=[ "res://.import/eyeblock_char.png-254a13f06b923ec013a4de7ef4b4aa3e.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    GDSC   1       U   �     ���Ӷ���   ����������¶   ����������Ŷ   ����������Ӷ   ������Ŷ   ����������������Ҷ��   �Ҷ�   �������������������Ҷ���   ����������������Ķ��   ������������ݶ��   ��������Ҷ��   �������Ӷ���   ��������������������Ҷ��   ��ն   ���������Ӷ�   ��������������Ķ   ��������������ڶ   ���������������Ķ���   �������������������Ҷ���   ���Ҷ���   �������¶���   �������Ӷ���   ���Ӷ���   ����Ķ��   ��������   ���Ӷ���   ��������������Ӷ   ����������������Ķ��   �����Ҷ�   �����������Ķ���   ����Ӷ��   ��������Ӷ��   ���¶���   �����������������������¶���   ����   ������������Ķ��   ��������Ӷ��   �ƶ�   ������������¶��   �������Ӷ���   �����Ķ�   �������Ӷ���   �����������������Ķ�   �������Ӷ���   �������ض���   ��������Ҷ��   ����Ҷ��   �����϶�   ������¶   �i     
                Se esta conectando Jugador        El Jugador         se ha desconectado!      register_player           World         Players       Lobby         El servidor se ha desconectado!             Jugador        conectado!       Creando Servidor...       Servidor Creado e Iniciado!       Conectando a servidor...      res://Player.tscn      �      d         res://World.tscn      network_peer_connected        _player_connected         network_peer_disconnected         _player_disconnected      connected_to_server       _connected_ok         connection_failed         _connected_fail       server_disconnected       _server_disconnected                                                    	   !   
   +      ,      3      8      D      E      K      V      _      c      j      k      q      z      {      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %     &     '     (   !  )   +  *   :  +   ;  ,   C  -   a  .   h  /   i  0   p  1   u  2   y  3   �  4   �  5   �  6   �  7   �  8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F     G   '  H   (  I   /  J   0  K   <  L   I  M   Z  N   [  O   a  P   n  Q   {  R   �  S   �  T   �  U   3YY:�  Y:�  �  YY;�  �  Y;�  NOYY0�  P�  QV�  �8  P�  R�7  P�  QQYY0�  P�  QV�  �  P�  Q�  �8  P�  R�7  P�  QR�  QYY0�	  PQV�  ;�
  �  PQT�  PQ�  �  P�  R�
  R�  Q�  �  PQ�  �  P�
  R�  Q�  Y0�  PQV�  �  PQT�  P�  QYY0�  PQV�  �  PQT�  P�  Q�  )�  �  V�  �  PQT�  PQT�  P�  QT�  P�	  QT�  P�7  P�  QQT�  PQ�  �  T�  PQ�  �  PQT�  PQT�  P�
  QT�  PQ�  �  PQT�  PQT�  P�  QT�  PQ�  �8  P�  QYYD0�  P�  R�  QV�  &�  PQT�  PQV�  �  P�  R�  R�  R�  Q�  )�  �  V�  �  P�  R�  R�  R�  L�  MQ�  �  P�  R�  R�  R�  Q�  �  L�  M�  �  �  P�  R�  L�  MQ�  �8  P�  R�7  P�  L�  MQR�  QYYD0�  P�  QV�  �  PQT�  PQT�  P�  QT�  P�	  QT�  P�7  P�  QQT�  PQ�  �  T�  P�  QYY0�  P�  QV�  �8  P�  Q�  �  �  �  ;�   �!  T�"  PQ�  �   T�#  P�  R�  Q�  �  PQT�  P�   Q�  �8  P�  Q�  �  PQ�  �  P�  R�  QYY0�$  P�%  R�  QV�  �8  P�  Q�  �  �  �  ;�   �!  T�"  PQ�  �   T�&  P�%  R�  Q�  �  PQT�  P�   QYY0�  P�  R�'  QV�  ;�(  �E  P�  QT�)  PQ�  �(  T�*  P�  Q�  �(  T�+  P�7  P�  QQ�  �(  T�'  �'  �  �(  T�,  �  P�   PQ�  �  R�  Q�  �  PQT�  PQT�  P�  QT�  P�	  QT�-  P�(  QYYD0�  PQV�  �  ;�.  �E  P�  QT�)  PQ�  �  PQT�  PQT�-  P�.  Q�  �  PQT�  PQT�  P�
  QT�  PQYY0�/  PQV�  �  PQT�0  P�  RR�  Q�  �  PQT�0  P�  RR�  Q�  �  PQT�0  P�  RR�  Q�  �  PQT�0  P�  RR�  Q�  �  PQT�0  P�  RR�  QY`              GDST                   PNG �PNG

   IHDR           szz�   �IDATX��л!E�gf�V4CBLc�wvY>��)��^!�76>��'" ؁ " �V#��`� f#�x0����x0
Q�7��V��"8q6@���E .BZi\(!4q5 Eh� p�7�\�	� ��1�= k�9� T�k�!��=��"� N\�`$q)�	��%�*�'�E#�D02�B< 3�5�03^B���¬������L/ׇ�    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/solid_block.png-587042015a661a9ddd9102520842b80c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://solid_block.png"
dest_files=[ "res://.import/solid_block.png-587042015a661a9ddd9102520842b80c.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          [gd_resource type="TileSet" load_steps=5 format=2]

[ext_resource path="res://tileSet_soldiblock.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 16, 16 )

[sub_resource type="ConvexPolygonShape2D" id=2]
points = PoolVector2Array( -16, 16, 16, -16, 16, 16 )

[sub_resource type="ConvexPolygonShape2D" id=3]
points = PoolVector2Array( -16, 16, -16, -16, 16, 16 )

[resource]
0/name = "0"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 32, 32 )
0/tile_mode = 0
0/occluder_offset = Vector2( 16, 16 )
0/navigation_offset = Vector2( 16, 16 )
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 16, 16 )
} ]
0/z_index = 0
1/name = "1"
1/texture = ExtResource( 1 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 32, 0, 32, 32 )
1/tile_mode = 0
1/occluder_offset = Vector2( 16, 16 )
1/navigation_offset = Vector2( 16, 16 )
1/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 2 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 16, 16 )
} ]
1/z_index = 0
2/name = "2"
2/texture = ExtResource( 1 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 1, 1, 1, 1 )
2/region = Rect2( 64, 0, 32, 32 )
2/tile_mode = 0
2/occluder_offset = Vector2( 16, 16 )
2/navigation_offset = Vector2( 16, 16 )
2/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 3 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 16, 16 )
} ]
2/z_index = 0
3/name = "3"
3/texture = ExtResource( 1 )
3/tex_offset = Vector2( 0, 0 )
3/modulate = Color( 1, 1, 1, 1 )
3/region = Rect2( 96, 0, 32, 32 )
3/tile_mode = 0
3/occluder_offset = Vector2( 16, 16 )
3/navigation_offset = Vector2( 16, 16 )
3/shapes = [  ]
3/z_index = 0
     GDST�   @            �  PNG �PNG

   IHDR   �   @   ��  VIDATx��=n�@�(���FJg�BBb���qM���H��l!A~�c"�������*���=��;c��j۶G^V�/ooo�����ۥ� Vu]kwz}}vN.��{�&��jj����l�/���\.ng��c� _}�뺇fU[�M�5W��?�M�Q0E�4h�М���o��CJ(�d[6�d=����/�'�	L�:���l6�1��?�h��--TU�|�/ q�Z���cb�@�
�,0i  �`_tli����0�-X|Q1L ��G�SUv�`�� �|�Em-9� p�����s��, 2 `'��/j;U&�� d�>���>ڶun�7���- �,`e �,pL����d_��}L�k �B���G�7�?����	|��48 �y�)#�����{@�12A���0 ���s��A��k�u����'�o��v�$x�z��z��4�enຮ�cp�K^8`(|h�.�
�gp2�M�����,�d�)�C��u�_H=C�L�n�X�$t��`�q��g� ��_�)X@"pD�|��3d�R��6�	�V���3������]�EЀ&p��+��!�m���2�	���z�R��s���,`4@�(�h#H�R��u-���� �<��V��YH=��5E�~�8L �Jޢ�(�f!�I�6�~ 潼��������俒RD�b�~ ��SI�#W=È ����1�``���Jz����A���ѯPY`u8�����'  ��9K����՟+�q�߳���ߢ���U@��ǡ!�B!�B!�B!�B!�B!�B!�B�?ڡ�&1�"    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tileSet_soldiblock.png-03f45d0e3e3c6e7dcf9806d6816a3163.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://tileSet_soldiblock.png"
dest_files=[ "res://.import/tileSet_soldiblock.png-03f45d0e3e3c6e7dcf9806d6816a3163.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     [remap]

path="res://Lobby.gdc"
[remap]

path="res://Player.gdc"
               [remap]

path="res://Spike.gdc"
[remap]

path="res://gamestate.gdc"
            �PNG

   IHDR           szz�   sRGB ���  KIDATX�cd��*��t��120000��Ȏ`D����;M-=����DO˱���K�^�`£�.`��B��F��X��z���,F�'�!DG!��UKT`3�1��_�~�bB���-ߘ��]�A�!�$�\�cs� ��ť��QJ�'�@?��1\x�.�^Y�a��X��*�.<{İ�����bYÞM�ȶ�]�j`e����f16˱�%�����AR�3R|���� o��k��S30��=�iF�p9 �0�IH��%��<`J,��M8x��c�%@��	�=,g`�Sg��� �\}�'l��    IEND�B`�               ECFG	      _global_script_classes             _global_script_class_icons             application/config/name         MultiplayerGame    application/run/main_scene         res://Lobby.tscn   application/boot_splash/image          res://eyeblock_char.png    application/config/icon          res://eyeblock_char.png    autoload/gamestate         *res://gamestate.gd    rendering/threads/thread_model         )   rendering/environment/default_environment          res://default_env.tres                GDPC