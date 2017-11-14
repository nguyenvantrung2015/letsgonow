District.create!([
{name: "Hanoi"},
{name: "Hanoi 2"},
{name: "Hanoi 3"},
{name: "Hanoi 4"}
])

Post.create!([
  {id_user: 1,content: "aa",title: "aa", address_name: "aa", id_district: 1,cost: 2, vehicle:"may" ,like_count:20,view: 5,accept: false},
  {id_user: 1,content: "aa",title: "aa", address_name: "aa", id_district: 1,cost: 2, vehicle:"may" ,like_count:20,view: 5,accept: false},
  {id_user: 1,content: "aa",title: "aa", address_name: "aa", id_district: 1,cost: 2, vehicle:"may" ,like_count:20,view: 5,accept: false},
  {id_user: 1,content: "aa",title: "aa", address_name: "aa", id_district: 1,cost: 2, vehicle:"may" ,like_count:20,view: 5,accept: false},
  {id_user: 1,content: "aa",title: "aa", address_name: "aa", id_district: 1,cost: 2, vehicle:"may" ,like_count:20,view: 5,accept: false},
  {id_user: 1,content: "aa",title: "aa", address_name: "aa", id_district: 1,cost: 2, vehicle:"may" ,like_count:20,view: 5,accept: false},
  {id_user: 1,content: "aa",title: "aa", address_name: "aa", id_district: 1,cost: 2, vehicle:"may" ,like_count:20,view: 5,accept: false},
  {id_user: 1,content: "aa",title: "aa", address_name: "aa", id_district: 1,cost: 2, vehicle:"may" ,like_count:20,view: 5,accept: false},
  {id_user: 1,content: "aa",title: "aa", address_name: "aa", id_district: 1,cost: 2, vehicle:"may" ,like_count:20,view: 5,accept: false},
  {id_user: 1,content: "aa",title: "aa", address_name: "aa", id_district: 1,cost: 2, vehicle:"may" ,like_count:20,view: 5,accept: false},
  {id_user: 1,content: "aa",title: "aa", address_name: "aa", id_district: 1,cost: 2, vehicle:"may" ,like_count:20,view: 5,accept: false}  
])
SavedPost.create!([
{id_post: 1,id_user:1},
{id_post: 2,id_user:1},
{id_post: 3,id_user:1},
{id_post: 4,id_user:1},
{id_post: 5,id_user:1},
{id_post: 6,id_user:1},
{id_post: 7,id_user:1}

  ])
Comment.create!([
  {id_post: 1,id_user:1,comment: "aaaa",seen: false},
  {id_post: 1,id_user:1,comment: "1aaaa",seen: false},
  {id_post: 1,id_user:1,comment: "2aaaa",seen: false},
  {id_post: 1,id_user:1,comment: "3aaaa",seen: false}
  ])
Image.create!([
  {id_post: 1,image: "aa"},
  {id_post: 2,image: "aa"}
  ])

