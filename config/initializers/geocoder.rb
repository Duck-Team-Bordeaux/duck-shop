Geocoder.configure(
  # Geocoding options
<<<<<<< HEAD
  # timeout: 3,                 # geocoding service timeout (secs)
  lookup: :geoapify,         # name of geocoding service (symbol)
  # ip_lookup: :ipinfo_io,      # name of IP address geocoding service (symbol)
=======
  # timeout: 10,                # geocoding service timeout (secs)
  lookup: :geoapify,         # name of geocoding service (symbol)
  # ip_lookup: :telize,         # name of IP address geocoding service (symbol)
>>>>>>> 0a727669348db4fe51862534a43e863de93707c2
  # language: :en,              # ISO-639 language code
  # use_https: false,           # use HTTPS for lookup requests? (if supported)
  # http_proxy: nil,            # HTTP proxy server (user:pass@host:port)
  # https_proxy: nil,           # HTTPS proxy server (user:pass@host:port)
<<<<<<< HEAD
  api_key: ENV['GEOPIFY_API_KEY'],               # API key for geocoding service
=======
  api_key: ENV["MAPBOX_API_KEY"],               # API key for geocoding service
>>>>>>> 0a727669348db4fe51862534a43e863de93707c2
  # cache: nil,                 # cache object (must respond to #[], #[]=, and #del)

  # Exceptions that should not be rescued by default
  # (if you want to implement custom error handling);
  # supports SocketError and Timeout::Error
  # always_raise: [],

  # Calculation options
  units: :km                     # :km for kilometers or :mi for miles
  # distances: :linear          # :spherical or :linear

  # Cache configuration
  # cache_options: {
  #   expiration: 2.days,
  #   prefix: 'geocoder:'
  # }
)
