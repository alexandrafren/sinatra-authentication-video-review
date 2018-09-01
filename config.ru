require_relative './config/enviornment'

if ActiveRecord::Migrator.needs_migration?
  raise "Migrations are pending. Run db:migrate to resolve this issue."
end
