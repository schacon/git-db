require 'stringio'

class GitDB::Objects::Entry < GitDB::Objects::Base

  attr_reader :sha, :permissions, :name

  def initialize(sha, permissions, name)
    @sha = sha
    @permissions = permissions
    @name = name
  end

  def properties
    [:permissions, :name]
  end

  def to_hash
    { :sha => sha, :permissions => permissions, :name => name }
  end

  def to_json
    to_hash.to_json
  end

private ######################################################################

end
