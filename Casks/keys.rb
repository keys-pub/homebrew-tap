cask 'keys' do
    version '0.2.3'
    sha256 '8936749be5d6cd2639554c906e9d04865fb0b6b4c4ba89e21ef8ebab48b18bb8'

    url "https://github.com/keys-pub/app/releases/download/v0.2.3/Keys-0.2.3-mac.zip"
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
