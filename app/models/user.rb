class User < ApplicationRecord
    #falamos que o usuario tem muitos projetos, e que quando seja deletado, vai deletar os projetos associados.
    has_many :projects, dependent: :destroy
    before_save { self.email = email.downcase } #lowercase antes de salvar no db pq alguns db's consideram case sensitive para o index
    validates :name, presence: true, length: {maximum: 50}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum: 255},
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: true

    has_secure_password

    validates :password, presence: true, length: { minimum: 6 }
end

