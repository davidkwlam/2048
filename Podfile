# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'm2048' do
  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!

  # Pods for m2048

  target 'm2048Tests' do
    inherit! :search_paths
    use_frameworks!
    pod 'FBSnapshotTestCase'
    # Pods for testing
  end
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0'
    end
  end
end
