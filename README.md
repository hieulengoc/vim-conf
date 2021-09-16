# Some steps for setting up new macbook:

1. After copying dot files:
- brew install --HEAD universal-ctags/universal-ctags/universal-ctags go zsh
2. Start vim and:
- PlugInstall
- GoInstallBinaries
3. To map the tilda key correctly, choose the US keyboard instead of US International PC (for German layout keyboard)
4. Create a remap key [script](https://stackoverflow.com/questions/6442364/running-script-upon-login-mac): `cat remap_keys.sh`
```
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000064,"HIDKeyboardModifierMappingDst":0x700000035},{"HIDKeyboardModifierMappingSrc":0x700000035,"HIDKeyboardModifierMappingDst":0x700000064}]}'
```
5. Create plist file: `cat ~/Library/LaunchAgents/com.user.loginscript.plist`
```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
   <key>Label</key>
   <string>com.user.loginscript</string>
   <key>ProgramArguments</key>
   <array><string>/path/to/executable/script.sh</string></array>
   <key>RunAtLoad</key>
   <true/>
</dict>
</plist>
```
6. Run `launchctl load ~/Library/LaunchAgents/com.user.loginscript.plist`
