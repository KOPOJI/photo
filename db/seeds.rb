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
