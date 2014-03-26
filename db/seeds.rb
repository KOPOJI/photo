User.create!([
  {email: "kopojiq@mail.ru", username: "", encrypted_password: "$2a$10$tunGbyEGS4gehpu5NUdkP.3ylZgJeGErEw1kVzoRayR13AwvBg3fO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: "2014-03-26 11:09:42", sign_in_count: 1, current_sign_in_at: "2014-03-26 11:09:42", last_sign_in_at: "2014-03-26 11:09:42", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2014-03-26 11:09:24", confirmation_sent_at: "2014-03-26 11:08:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, group_id: 4}
])
Group.create!([
  {group: "Администратор"},
  {group: "Супер-Модератор"},
  {group: "Модератор"},
  {group: "Пользователь"},
  {group: "Гость"},
  {group: "Заблокированный пользователь"}
])
Profile.create!([
  {name: nil, interests: nil, exp: nil, about_me: nil, signature: nil, user_id: 1}
])
