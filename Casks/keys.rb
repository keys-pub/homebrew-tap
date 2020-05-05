cask 'keys' do
    version '0.0.39'
    sha256 '6ca752835cf9f957bb590db7d8e68496d43445c676cfce80e75b8d8091c8e903'

    url "https://github.com/keys-pub/app/releases/download/v0.0.39/Keys-0.0.39-mac.zip"
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
