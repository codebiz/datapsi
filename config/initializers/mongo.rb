#$connection = Mongo::Connection.from_uri(ENV['MONGOHQ_URL'])
#$db = $connection.db(ENV['MONGOHQ_URL'] =~ /([^\/]+)$/ ? $1 : 
#raise("Please include your db with your MONGOHQ_URL : #{ENV['MONGOHQ_URL'])"))