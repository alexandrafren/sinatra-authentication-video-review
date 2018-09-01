require_relative './config/enviornment'

require './config/enviornment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run db:migrate to resolve this issue.'
end

use Rack::MethodOverride
use SessionsController
use PostsController
run ApplicationController
