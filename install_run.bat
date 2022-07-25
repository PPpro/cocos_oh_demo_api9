set pack_local_path=C:\Users\pp\Desktop\cocos_oh_demo_api9\entry\build\default\outputs\default\entry-default-signed.hap

hdc_std uninstall ohos.example.myapplication
hdc_std install -r %pack_local_path%

hdc_std shell aa start -a com.example.entry.MainAbility  -b  ohos.example.myapplication
hdc_std hilog -b D -D 00000>./log.txt