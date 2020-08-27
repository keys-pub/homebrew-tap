cask 'keys' do
    version '0.1.13'
    sha256 'a722ff80440b55b974c65845784dbd50e82ec8cab6c06603acb835f3f53f4c44'

    url "https://github.com/keys-pub/app/releases/download/v0.1.13/Keys-0.1.13-mac.zip"
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
