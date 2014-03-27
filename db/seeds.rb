User.create!([
  {email: "kopojiq@mail.ru", username: "Admin", encrypted_password: "$2a$10$heE1w5m009vuBR0w/i8f..Fnj5GewkvnZdrGOLTMBrr0BUCEhQpbC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: "2014-03-27 12:46:07", sign_in_count: 2, current_sign_in_at: "2014-03-27 12:46:07", last_sign_in_at: "2014-03-27 12:43:04", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2014-03-27 12:42:58", confirmation_sent_at: "2014-03-27 12:42:19", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, group_id: 1}
])
Album.create!([
  {name: "Test album", album_url: "test_album", description: "Test album for test", image: "", status: true, user_id: 1}
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
