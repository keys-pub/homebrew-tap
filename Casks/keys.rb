cask 'keys' do
    version '0.0.38'
    sha256 '663889985c1c9de78ffd8cacc2fca01ca2f122817106262eb783e4fdd67d8152'

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
