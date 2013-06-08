Pod::Spec.new do |s|
  s.name     = 'DMRNotificationView'
  s.version  = '1.0'
  s.platform = :ios
  s.license  = 'MIT'
  s.summary  = 'DMRNotificationView is a simple panel that informs the user about something.'
  s.homepage = 'https://github.com/tursunovic/DMRNotificationView'
  s.author   = { 'Damir Tursunovic' => 'hello@damir.me' }
  s.source   = { :git => 'https://github.com/tursunovic/DMRNotificationView.git' }

  s.description = 'DMRNotificationView is a simple panel that slides down to inform the user about something. It has a title and subtitle (optional). You can set custom tint colors (automatically adds 0.85 transparency to tint color), fonts and dismiss interval.'

  s.source_files = 'DMRNotificationView/*.{h,m}'
  s.requires_arc = true
end
