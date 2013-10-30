require 'finder'
require_relative './data_source'
require_relative './backup'
require_relative '../interpreter/all'

def backup(directory, find_expression=All.new)
  Backup.instance.data_sources << DataSource.new(directory, find_expression)
end

def to(backup_directory)
  Backup.instance.backup_directory = backup_directory
end

def interval(minutes)
  backup.instance.interval = minutes
end

eval(File.read('backup.pr'))
Backup.instance.run
