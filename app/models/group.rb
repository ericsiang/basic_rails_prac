class Group < ApplicationRecord
    has_many :event_groupships # 複數 多對多
    has_many :events, :through => :event_groupships # 複數 多對多
end
