module Heroku::Command
  class Neo4j < BaseWithApp
    def backup
       ENV.each_pair do |key, value|
         puts "#{key}: #{value}"
       end
       puts '---'
       puts heroku.config_vars(app)
    end
  end
end


Heroku::Command::Help.group('Neo4j') do |group|
  group.command 'neo4j:backup <database>', 'Fire a backup for your database'
end

