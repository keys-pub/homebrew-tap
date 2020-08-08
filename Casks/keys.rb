cask 'keys' do
    version '0.1.11'
    sha256 'fb337886bf68ee81ffa662146bb6c06d62771c8a57fc09a246c77a695d12d5b0'

    url "https://github.com/keys-pub/app/releases/download/v0.1.11/Keys-0.1.11-mac.zip"
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
