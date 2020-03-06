cask 'keys' do
    version '0.0.20'
    sha256 '5d0cd801e47e65ea7f3a40de637ee5c0aeecda756426d1f151d34465628fa037'
  
    url "https://github.com/keys-pub/app/releases/download/v#{version}/Keys-#{version}-mac.zip"
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
