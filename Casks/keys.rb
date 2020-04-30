cask 'keys' do
    version '0.0.38'
    sha256 '322f95bd190f407a91d8235633d9560768c5386b6fff1090c472b6625e697076'

    url "https://github.com/keys-pub/app/releases/download/v0.0.38/Keys-0.0.38-mac.zip"
    name 'Keys'
    homepage 'https://keys.pub'

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
