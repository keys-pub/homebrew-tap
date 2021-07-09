cask 'keys' do
    version '0.2.4'
    sha256 '3c93fedaf700786afcd610a4c26111e26c13eef8f545fb89cf6dabdb249f0a47'

    url "https://github.com/keys-pub/app/releases/download/v0.2.4/Keys-0.2.4-mac.zip"
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
