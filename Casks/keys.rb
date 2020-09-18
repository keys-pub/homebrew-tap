cask 'keys' do
    version '0.1.18'
    sha256 'ee9d5cb9fa6a4418be77048c9bcaeed080123f94d61c15070a65121e96a27a23'

    url "https://github.com/keys-pub/app/releases/download/v0.1.18/Keys-0.1.18-mac.zip"
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
