class Project < ApplicationRecord
    #...herda de < ......
    validates :titulo, presence: true, length: { minimum: 5 }
    validates :descricao, presence: true, length: { minimum: 10 }
    validates :duracao, presence: true
end
