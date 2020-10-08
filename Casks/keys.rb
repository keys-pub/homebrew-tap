cask 'keys' do
    version '0.1.20'
    sha256 'f5e1baa72e20e405086dc5d18f13bed6d83844f9d7f5e0c7e497a30f2f73d0eb'

    url "https://github.com/keys-pub/app/releases/download/v0.1.20/Keys-0.1.20-mac.zip"
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
