#
class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :members, class_name: 'User',
                                    foreign_key: 'group_id',
                                    join_table: :groups_members
end
