class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate
  belongs_to :kind
  has_many :phones
  has_one :address

  link(:self) { contact_url(object.id) }
end
