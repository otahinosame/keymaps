kbd = Keyboard.new

kbd.init_pins(
  [ 20, 19, 18, 17, 16 ],
  [ 8, 7, 6, 2, 3, 4, 5, 10, 15, 14, 13, 12, 11, 9, 21 ]
)

kbd.add_layer :default, %i[
  KC_ESC    KC_1      KC_2      KC_3      KC_4      KC_5      KC_6      KC_7      KC_8      KC_9      KC_0      KC_MINS   KC_EQL    KC_INT3   KC_BSPC
  KC_TAB    KC_Q      KC_W      KC_E      KC_R      KC_T      KC_Y      KC_U      KC_I      KC_O      KC_P      KC_RBRC   KC_BSLS   KC_LBRC   KC_DEL
  KC_LCTL   KC_A      KC_S      KC_D      KC_F      KC_G      KC_H      KC_J      KC_K      KC_L      KC_SCOLON KC_QUOT   XXXXXXX   KC_ENT    KC_PGUP
  KC_LSFT   XXXXXXX   KC_Z      KC_X      KC_C      KC_V      KC_B      KC_N      KC_M      KC_COMM   KC_DOT    KC_SLSH   KC_INT1   XXXXXXX   KC_PGDN
  KC_LCTL   KC_LGUI   KC_LALT   XXXXXXX   LNG2_LALT SPC_PUNC XXXXXXX BSPC_FUNC LNG1_RCTL KC_RALT KC_RCTL  KC_LEFT   KC_DOWN   KC_UP     KC_RGHT
]

kbd.add_layer :func, %i[
  KC_GRAVE  KC_F1     KC_F2     KC_F3     KC_F4     KC_F5     KC_F6     KC_F7     KC_F8     KC_F9     KC_F10    KC_F11    KC_F12    KC_SYSREQ   XXXXXXX
  KC_TAB    XXXXXXX   KC_F2     KC_F3     KC_F4     KC_F5     KC_GRAVE  KC_HOME   KC_UP     KC_END    KC_MENU   XXXXXXX   XXXXXXX   XXXXXXX   KC_PSCREEN
  KC_LCTL   KC_F5     KC_F6     KC_F7     KC_F8     KC_F9     AUP       KC_LEFT   KC_DOWN   KC_RIGHT   KC_ENT   XXXXXXX   XXXXXXX   XXXXXXX   KC_PAUSE
  KC_LSFT   KC_F9     KC_F10    KC_F11    KC_F12    KC PSCREEN XXXXXXX  XXXXXXX   KC_DEL    KC_PGUP    KC_PGDN  KC_MENU   XXXXXXX   XXXXXXX   KC_INS
  _______   _______   KC_LALT   XXXXXXX   _______   KC_ENT    XXXXXXX   XXXXXXX   _______   _______   _______   KC_HOME   KC_PGDN   KC_PGUP   KC_END
]
kbd.add_layer :punc, %i[
  KC_GRAVE  KC_F1     KC_F2     KC_F3     KC_F4     KC_F5     KC_F6     KC_F7     KC_F8     KC_F9     KC_F10    KC_F11    KC_F12    XXXXXXX   XXXXXXX
  KC_TAB    KC_1      KC_2      KC_3      KC_4      KC_5      KC_6      KC_7      KC_8      KC_9      KC_0      XXXXXXX   XXXXXXX   XXXXXXX   KC_PSCREEN
  KC_LCTL   KC_ASTER  KC_RBRC   KC_BSLS   KC_LPRN   KC_LBRC   AUP       KC_LEFT   KC_DOWN   KC_RIGHT  KC_BSPC   XXXXXXX   XXXXXXX   XXXXXXX   KC_PAUSE
  KC_LSFT   XXXXXXX   XXXXXXX   XXXXXXX   XXXXXXX   XXXXXXX   KC_INT1   SRO       KC_SLSH   KC_COMM   KC_DOT    KC_SLSH   KC_INT1   XXXXXXX   KC_INS
  _______   _______   KC_LALT   XXXXXXX   _______   XXXXXXX   XXXXXXX   KC_DEL   _______   _______   _______   KC_HOME   KC_PGDN   KC_PGUP   KC_END
]

# kbd.add_layer :punc, [
#   :KC_LSFT & :KC_MINS, :KC_F1,  :KC_F2,   :KC_F3,   :KC_F4,   :KC_F5,   :KC_F6,   :KC_F7,   :KC_F8,   :KC_F9,   :KC_F10,   :KC_F11,  :KC_F12,   :XXXXXXX,  :XXXXXXX,
#   :KC_TAB,   :XXXXXXX, :XXXXXXX   :XXXXXXX,   :XXXXXXX,   :XXXXXXX,   :XXXXXXX,   :XXXXXXX,   :XXXXXXX, :XXXXXXX,:XXXXXXX,:XXXXXXX, :XXXXXXX,   :XXXXXXX,   :XXXXXXX,
#   :KC_LCTL,  :XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,  :XXXXXXX,:XXXXXXX,
#   :KC_LSFT,  :XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,  :XXXXXXX,:XXXXXXX,
#   :_______,  :XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,:XXXXXXX,  :XXXXXXX,:XXXXXXX
# ]

kbd.define_mode_key :LNG1_FUNC, [ :KC_LANG1, :func, 300, nil ]
kbd.define_mode_key :LNG2_FUNC, [ :KC_LANG2, :func, 300, nil ]
kbd.define_mode_key :SPC_FUNC, [ :KC_SPACE, :func, 300, 150 ]
kbd.define_mode_key :SPC_PUNC, [ :KC_SPACE, :punc, 300, 150 ]
kbd.define_mode_key :BSPC_FUNC, [ :KC_BSPACE, :func, 300, 150 ]
kbd.define_mode_key :LNG2_LALT, [ :KC_LANG2, :KC_LALT, 150, 150 ]
kbd.define_mode_key :LNG1_RCTL, [ :KC_LANG1, :KC_RCTL, 150, 150 ]
kbd.define_mode_key :AUP, [%i[KC_LALT KC_UP], nil, 150, 150 ]
kbd.define_mode_key :SRO, [%i[KC_LSFT KC_INT1], nil, 150, 150 ]

kbd.start!
