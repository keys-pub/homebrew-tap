cask 'keys' do
    version '0.0.16'
    sha256 '351ffa35830f5dc0e4c6506c2cc52ed5cb7b45e8745723657d6d833462e5c9bb'
  
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
