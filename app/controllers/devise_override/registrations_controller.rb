class DeviseOverride::RegistrationsController < Devise::RegistrationsController
  def create
    super # this calls Devise::RegistrationsController#create as usual
    # after creating a new user, create a profile that has
    # the profile.user_id field set to the user_id of the user jsut created
    if resource.save
        @wish_list = WishList.new
        @wish_list.user_id = resource.id
        @wish_list.save
    end
  end

  def destroy
    super
    if resource.destroy
        @wish_list = WishList.find(user_id: resource.id)
        @wish_list.destroy
    end
  end
end
