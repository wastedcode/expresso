module TableDefinitionHelpers
  def guid(*args)
    options = args.extract_options!
    column(args.first, 'char(36) binary', options)
  end
end

class ActiveRecord::ConnectionAdapters::TableDefinition
  include TableDefinitionHelpers
end
