FactoryBot.define do
  factory :post do
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec','fixtures','dummy.png'), 'image/png') }
  end
end