cask 'keys' do
    version '0.0.39'
    sha256 '973c0025a0ba3c0afda8351646d260e6b4409c9956dae8521c10b885f347df98'

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
