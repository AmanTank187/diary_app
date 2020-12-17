require 'pg'

class Diary

  def self.show
    connection = PG.connect(dbname: 'diary_entry')
    result = connection.exec("SELECT * FROM entries")
    result.map { |body| body['body'] }


  end
end
