cask 'keys' do
    version '0.1.14'
    sha256 '2c6f811796927020b295edcf080b419cfd3b3d3b91b43511bb55ba6497c1e446'

    url "https://github.com/keys-pub/app/releases/download/v0.1.14/Keys-0.1.14-mac.zip"
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
