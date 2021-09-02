class Event < ApplicationRecord
    validates_presence_of :name,:description

    has_many :attendees # 複數 多對一
    belongs_to :category, :optional => true # 單數 一對多 、:optional => true 表示允許 event 沒有 category 的情況。
    has_one :location, :dependent => :destroy # 單數  一對一、:dependent => :destroy 表示當物件刪除時，也會順便刪除依賴它的資料
    has_many :event_groupships # 複數 多對多
    has_many :groups, :through => :event_groupships # 複數 多對多
end
