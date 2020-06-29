cask 'keys' do
    version '0.0.48'
    sha256 'ad04126b1dee2780723d37fe3651bc3e7b91b5b9da7622676e2e3af9461563ad'

    url "https://github.com/keys-pub/app/releases/download/v0.0.48/Keys-0.0.48-mac.zip"
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
