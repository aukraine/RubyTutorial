class ItemsMailer < ApplicationMailer
  default from: 'info@railsstore.com',
          template_path: 'mailers/items'

  def item_destroyed(item)
    @item = item
    mail to: 'andre.ukrainets@gmsil.com',
         subject: 'Item was destroyed'
  end

end
