require 'amazon/aws/search'

include Amazon::AWS
include Amazon::AWS::Search

class AmazonLink
  def self.search(store, keyword)
    search_item = ItemSearch.new(store, {'Keywords' => keyword})
    search_item.response_group = ResponseGroup.new(:Small)
    Request.new.search(search_item)
  end

  private


end
