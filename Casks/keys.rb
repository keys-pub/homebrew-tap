cask 'keys' do
    version '0.0.20'
    sha256 '5d91ba34e103313aef6364ca96aa329dd3abd9d749d1ff27b6d2097389423d60'
  
    url "https://github.com/keys-pub/app/releases/download/v#{version}/Keys-#{version}-mac.zip"
    name 'Keys'
    homepage 'https://keys.pub'

    auto_updates true
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
