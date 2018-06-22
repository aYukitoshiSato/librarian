# "id" integer NOT NULL PRIMARY KEY,
# "name" varchar DEFAULT NULL,
# "birthday" date DEFAULT NULL,
# "email" varchar DEFAULT NULL,
# "created_at" datetime NOT NULL,
# "updated_at" datetime NOT NULL,
# "password_digest" varchar DEFAULT NULL

class User < ApplicationRecord
  has_secure_password

  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates :password, {presence: true}
end
