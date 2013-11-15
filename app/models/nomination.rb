class Nomination < ActiveRecord::Base
  belongs_to :receiver, :class_name => "User"
  belongs_to :nominator, :class_name => "User"
  belongs_to :seconder, :class_name => "User"

  def perform!
    case action
    when "Star nomination for"
      receiver.increment_stars!
    when "Remove stars from"
      receiver.decrement_stars!
    when "Board nomination for"
      receiver.activate!
    when "Board removal for"
      receiver.deactivate!
    end
  end

  def map
    {
      "id" => id,
      "reason" => reason,
      "nominator" => nominator.try(:name) || "",
      "receiver" => receiver.try(:name) || "",
      "seconder" => seconder.try(:name) || "",
      "expire" => (created_at + 60.seconds),
      "active" => active,
      "type" => action
    }
  end

  def to_json
    map.to_json
  end
end
