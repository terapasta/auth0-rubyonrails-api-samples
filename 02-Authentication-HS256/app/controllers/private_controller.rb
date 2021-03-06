class PrivateController < ActionController::API
  include Secured

  def private
    render json: { message: 'All good. You only get this message if you\'re authenticated.' }
  end

  def private_scoped
    render json: { message: 'All good. You only get this message if you\'re authenticated and have a scope of read:messages.' }
  end
end
