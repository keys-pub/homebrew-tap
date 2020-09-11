cask 'keys' do
    version '0.1.16'
    sha256 '908a911d908c22aca724e99df9024c9a58d6445c127ee64aa6a18e144c11ff02'

    url "https://github.com/keys-pub/app/releases/download/v0.1.16/Keys-0.1.16-mac.zip"
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
