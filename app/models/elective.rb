require 'elasticsearch/model'
 
class Elective < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
end
Elective.import #Syncing
