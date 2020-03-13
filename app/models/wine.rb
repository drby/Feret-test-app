class Wine < ApplicationRecord
searchkick

  # searchkick word_start: [:designation, :winery]

  # def search_data
  #   {
  #     designation: designation,
  #     winery: winery,
  #     description: description,
  #     province: province,
  #     region_1: region_1,
  #     variety: variety
  #   }
  # end
end
