class GitDB::Git::Objects::Commit < GitDB::Git::Objects::Base
  
  def raw
    "commit #{data.length}\000#{data}"
  end

  def type
    Git::OBJ_COMMIT
  end

end