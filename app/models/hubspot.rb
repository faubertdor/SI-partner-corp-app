class Hubspot
  def self.find_current_user
    begin
     Hubspot::Contact.find_by_email(current_user.email)
    catch e
    end
  end
end