class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '景色' },
    { id: 3, name: '建造物' },
    { id: 4, name: '食べ物' },
    { id: 5, name: 'ホテル' },
    { id: 6, name: 'スポット' },
    { id: 7, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :posts
end
