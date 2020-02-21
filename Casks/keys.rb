cask 'keys' do
    version '0.0.16'
    sha256 'e382d84acc7ddd8a4fb36bd71bfb1bbf503a8538e6b359229c888deca09bb97b'
  
    url "https://github.com/keys-pub/app/releases/download/v#{version}/Keys-#{version}-mac.zip"
    appcast 'https://github.com/keys-pub/app/releases.atom'
    name 'Keys'
    homepage 'https://keys.pub'

    auto_updates true
    depends_on macos: '>= :sierra'
  
    app 'Keys.app'

    uninstall delete: [
        '/usr/local/bin/keys'
    ]

    zap trash: [
        '~/Library/Application Support/Keys',
        '~/Library/Caches/Keys',
        '~/Library/Logs/Keys',
        '~/Library/Preferences/pub.Keys.plist',
    ]
end
