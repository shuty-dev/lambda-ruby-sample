require 'json'

def lambda_handler(event:, context:)
  {
    statusCode: 200,
    body: {
      message: "Hello World!",
      yjit: RubyVM::YJIT.enabled?()
    }.to_json
  }
end