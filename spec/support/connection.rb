require "active_record"

def db_config
  {
    adapter: "postgresql",
    host:     ENV.fetch("PGHOST", "localhost"),
    port:     ENV.fetch("PGPORT", "5432"),
    database: ENV.fetch("TEST_DATABASE", "pg_enum_test"),
    username: ENV.fetch("TEST_USER") { ENV.fetch("USER", "pg_enum") },
    password: ENV["TEST_PASSWORD"]
  }
end

ActiveRecord::Base.establish_connection(db_config)
