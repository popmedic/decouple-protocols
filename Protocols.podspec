Pod::Spec.new do |spec|
  spec.name         = "Protocols"
  spec.version      = "0.0.2"
  spec.summary      = "Protocols."

  spec.description  = "decouple the protocols"

  spec.homepage     = "https://gitlab.spectrumxg.com/Scardina/swift_decoupling_by_protocol_framework"
  spec.author       = { "Yo Mama" => "yo.mama@charter.com" }
  spec.platform     = :ios, "11.0"

  spec.source       = { :git => 'https://github.com/popmedic/decouple-protocols.git',
                        :tag => spec.version.to_s }
  spec.source_files = "Protocols/*.{swift,h}"
end

