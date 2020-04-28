cask 'keys' do
    version '0.0.37'
    sha256 'fd3473cef4f1d438b30829b89ee8a9eb17868c40cc9a40ea7ead9bcb7d817385'

    url "https://github.com/keys-pub/app/releases/download/v0.0.37/Keys-0.0.37-mac.zip"
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
