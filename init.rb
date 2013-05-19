module Heroku::Command
  class Neo4j < BaseWithApp
    def backup
      puts ENV.inspect
    end
  end
end


Heroku::Command::Help.group('Neo4j') do |group|
  group.command 'neo4j:backup <database>', 'Fire a backup for your database'
end

