class TobaccoCipherController < ApplicationController
  def check_cipher
    if TobaccoCipher.where(cipher: cipher_params[:cipher]).exists?
      flash[:notice] = t(:notice)
    else
      flash[:error] = t(:error)
    end
    redirect_to root_path :action => 'check_cipher'
  end

  private

  def cipher_params
    params.require(:cipher).permit(:cipher)
  end
end
