class MoviePolicy < BasePolicy

  
  def edit
    record.is_owner?
  end

  def update
    record.is_owner?
  end

  def destroy
    record.is_owner?
  end




end