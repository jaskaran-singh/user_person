module UsersHelper
  def edit_link
        puts "the params helper#{params}"
    @user = User.find(params[:id])
      @person = @user.persons.build(:user_id=>@user.id)
      render 'edit'
  end
  def new_link
    puts "i am in new link with params#{params}"
    @user= User.new
    @person = @user.persons.build
    render :partial=>'new_form'
  end
   
end
