# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
makeup = Makeup.create([{ name: 'Boy Brow', price: 22, img_url: "https://cdn.cliqueinc.com/cache/posts/169326/reviewed-glossiers-boy-brow-1603137-1450474724.500x0c.jpg?interlace=true&quality=70", description: "brow gel by Glossier"},
                        { name: "Lip + Cheek ", price: 24, img_url:  "https://www.sephora.com/productimages/sku/s2062446-main-hero-300.jpg", description: "hydrating blush + lip paint"},
                        { name: '"UN" Cover-Up ',price: 36, img_url: "https://typeset-beta.imgix.net/uploads/image/2017/9/5/bf99e693-4a7c-45ab-ac4d-2e2e05245c13-rm4036290_rms_beauty__un_cover-up_000_13855_x1000progressive.jpg", description: "moisturizing concealer" },
                        { name: "Kush Mascara", price: 24, img_url: "https://thenotice.net/wp-content/uploads/2018/05/milk-kush-mascara.jpg", description: "thick high-volume mascara "}])
