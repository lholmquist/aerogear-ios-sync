Pod::Spec.new do |s|
  s.name         = "AeroGearSync"
  s.version      = "0.1.0"
  s.summary      = "An iOS Sync Engine for AeroGear Differential Synchronization"
  s.homepage     = "https://github.com/aerogear/aerogear-sync-server"
  s.license      = 'Apache License, Version 2.0'
  s.author       = "Red Hat, Inc."
  s.source       = { :git => 'https://github.com/danbev/aerogear-ios-sync.git',  :branch => 'master'}
  s.platform     = :ios, 8.0
  s.source_files = 'AeroGearSync/*.{swift}'
  s.dependency  'DiffMatchPatch', '0.1.0'
  s.dependency  'Starscream', '0.9.1'
end