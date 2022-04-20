class Weather < ActiveHash::Base
  self.data = [
    { id: 1, name: '快晴' },
    { id: 2, name: '晴れ' },
    { id: 3, name: '曇り' },
    { id: 4, name: '雨' },
    { id: 5, name: '大雨' },
    { id: 6, name: '晴れのち曇り' },
    { id: 7, name: '晴れのち雨' },
    { id: 8, name: '曇りのち晴れ' },
    { id: 9, name: '曇りのち雨' },
    { id: 10, name: '雨のち晴れ' },
    { id: 11, name: '雨のち曇り' }
  ]

  include ActiveHash::Associations
  has_many :tasks
end
