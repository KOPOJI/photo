RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method &:current_user

  ## == Cancan ==
  config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.model 'User' do
    list do
      field :username do
        label 'Логин'
      end
      field :sign_in_count do
        label 'Количество входов'
      end
      field :last_sign_in_at do
        label 'Последний раз входил'
      end
      field :group_id do
        label 'Группа'
      end
    end
  end
  config.model 'Album' do
    list do
      field :name do
        label 'Название'
      end
      field :album_url do
        label 'Адрес альбома'
      end
      field :description do
        label 'Описание альбома'
      end
      field :image do
        label 'Обложка'
      end
      field :status do
        label 'Видимый'
      end
    end
  end
  config.model 'Image' do
    list do
      field :name do
        label 'Название'
      end
      field :image do
        label 'Адрес изображения'
      end
      field :description do
        label 'Описание изображения'
      end
      field :album do
        label 'Альбом'
      end
      field :status do
        label 'Видимая'
      end
    end
  end

  config.actions do
    dashboard
    index
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
