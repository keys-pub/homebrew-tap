cask 'keys' do
    version '0.1.15'
    sha256 '9907bb07cdf9ba7f010e23eb906dcbd1f994903472b53de095661022b4780730'

    url "https://github.com/keys-pub/app/releases/download/v0.1.15/Keys-0.1.15-mac.zip"
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
