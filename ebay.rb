require 'rubygems'
require 'rebay'
require 'pry'
require 'bundler'
Bundler.setup(:default, :rake)

Rebay::Api.configure do |rebay|
  rebay.app_id = 'LorenzoL-603c-4864-b171-64c67f2f70fc'
end

finder = Rebay::Finding.new
response = finder.find_completed_items({:keywords => ['lcd'],'paginationInput.entriesPerPage' => 100 ,'paginationInput.pageNumber' => 100})
first = response.response["findCompletedItemsResponse"]["searchResult"]["item"][0]

binding.pry

