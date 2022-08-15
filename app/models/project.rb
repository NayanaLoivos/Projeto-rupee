class Project < ApplicationRecord
    #...herda de < ......
    belongs_to :user
    #default_scope -> { order(duracao:) }
    validates :titulo, presence: true, length: { minimum: 5 }
    validates :descricao, presence: true, length: { minimum: 10 }
    validates :duracao, presence: true
    validates :user_id, presence: true
end
