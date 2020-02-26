cask 'keys' do
    version '0.0.17'
    sha256 '0a74dded6ece86a768be66601f6e8ddab612e905ad806a9c94827b25c7cb1f50'
  
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
