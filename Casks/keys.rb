cask 'keys' do
    version '0.0.21'
    sha256 '0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5'

    url "https://github.com/keys-pub/app/releases/download/v0.0.21/Keys-0.0.21-mac.zip"
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
