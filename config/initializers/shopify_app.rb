shop_url = "https://#{ENV["SHOPIFY_API_KEY"]}:#{ENV["SHOPIFY_PASSWORD"]}@#{ENV["SHOPIFY_NAME"]}.myshopify.com"
ShopifyAPI::Base.site = shop_url
ShopifyAPI::Base.api_version = ENV["SHOPIFY_API_VERSION"]
ShopifyAPI::Session.setup(api_key: ENV['shopify_api_key'], secret: ENV['shopify_secret_key'])

ShopifyApp.configure do |config|
  config.application_name = "my-demo-store-partners-1234"
  config.api_key = ENV['shopify_api_key']
  config.secret = ENV['shopify_secret_key']
  config.old_secret = ""
  config.scope = "read_products" # Consult this page for more scope options:
                                 # https://help.shopify.com/en/api/getting-started/authentication/oauth/scopes
  config.embedded_app = true
  config.after_authenticate_job = false
  config.api_version = "2019-10"
  config.session_repository = Shop
end

# ShopifyApp::Utils.fetch_known_api_versions                        # Uncomment to fetch known api versions from shopify servers on boot
# ShopifyAPI::ApiVersion.version_lookup_mode = :raise_on_unknown    # Uncomment to raise an error if attempting to use an api version that was not previously known
