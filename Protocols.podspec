Pod::Spec.new do |spec|
  spec.name         = "Protocols"
  spec.version      = "0.0.1"
  spec.summary      = "Protocols."
  spec.swift_version = "5.1"

  spec.description  = "stuff"

  spec.homepage     = "https://gitlab.spectrumxg.com/Scardina/swift_decoupling_by_protocol_framework"
  spec.author             = { "Yo Mama" => "yo.mama@charter.com" }
  spec.platform     = :ios, "11.0"

  spec.source       = { :http => 'file://Protocols.zip' }
  spec.source_files = "Protocols/**/*"
end

