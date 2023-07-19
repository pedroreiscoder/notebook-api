class Contact < ApplicationRecord
    belongs_to :kind

    def as_json(options={})
        super(include: :kind)
    end
end
