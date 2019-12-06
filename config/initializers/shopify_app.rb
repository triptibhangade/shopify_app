shop_url = "https://#{ENV["SHOPIFY_API_KEY"]}:#{ENV["SHOPIFY_PASSWORD"]}@#{ENV["SHOPIFY_NAME"]}.myshopify.com"
ShopifyAPI::Base.site = shop_url
ShopifyAPI::Base.api_version = ENV["SHOPIFY_API_VERSION"]
ShopifyAPI::Session.setup(api_key: ENV['shopify_api_key'], secret: ENV['shopify_secret_key'])