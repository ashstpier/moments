User.create(username: "ashstpier", password: "password", password_confirmation: "password", email: "user@example.com")

Card.create(user_id: 1, name: "Katie's Hen Do", date: Time.now(), cover_image: File.open(File.join(Rails.root, 'dummy.jpg')), description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue congue sem vitae posuere. Nunc ut imperdiet quam, at semper velit. Integer quis nunc pulvinar, rhoncus est nec, feugiat augue. Praesent non rhoncus neque. Sed ut ultrices enim, ac aliquam sem. Maecenas ac erat ac ante fermentum euismod. Nulla in ultricies nisl. Nullam rutrum volutpat ante, vitae eleifend urna tincidunt sed. Integer fringilla dui massa, vitae dignissim enim rhoncus a. Etiam consectetur posuere maximus.")
Card.create(user_id: 1, name: "Trip to Thailand", date: Time.now(), cover_image: File.open(File.join(Rails.root, 'dummy.jpg')), description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue congue sem vitae posuere. Nunc ut imperdiet quam, at semper velit. Integer quis nunc pulvinar, rhoncus est nec, feugiat augue. Praesent non rhoncus neque. Sed ut ultrices enim, ac aliquam sem. Maecenas ac erat ac ante fermentum euismod. Nulla in ultricies nisl. Nullam rutrum volutpat ante, vitae eleifend urna tincidunt sed. Integer fringilla dui massa, vitae dignissim enim rhoncus a. Etiam consectetur posuere maximus.")
Card.create(user_id: 1, name: "Glastonbury", date: Time.now(), cover_image: File.open(File.join(Rails.root, 'dummy.jpg')), description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue congue sem vitae posuere. Nunc ut imperdiet quam, at semper velit. Integer quis nunc pulvinar, rhoncus est nec, feugiat augue. Praesent non rhoncus neque. Sed ut ultrices enim, ac aliquam sem. Maecenas ac erat ac ante fermentum euismod. Nulla in ultricies nisl. Nullam rutrum volutpat ante, vitae eleifend urna tincidunt sed. Integer fringilla dui massa, vitae dignissim enim rhoncus a. Etiam consectetur posuere maximus.")
Card.create(user_id: 1, name: "Sarah's wedding", date: Time.now(), cover_image: File.open(File.join(Rails.root, 'dummy.jpg')), description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue congue sem vitae posuere. Nunc ut imperdiet quam, at semper velit. Integer quis nunc pulvinar, rhoncus est nec, feugiat augue. Praesent non rhoncus neque. Sed ut ultrices enim, ac aliquam sem. Maecenas ac erat ac ante fermentum euismod. Nulla in ultricies nisl. Nullam rutrum volutpat ante, vitae eleifend urna tincidunt sed. Integer fringilla dui massa, vitae dignissim enim rhoncus a. Etiam consectetur posuere maximus.")
Card.create(user_id: 1, name: "Secret Cinema Star Wars", date: Time.now(), cover_image: File.open(File.join(Rails.root, 'dummy.jpg')), description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue congue sem vitae posuere. Nunc ut imperdiet quam, at semper velit. Integer quis nunc pulvinar, rhoncus est nec, feugiat augue. Praesent non rhoncus neque. Sed ut ultrices enim, ac aliquam sem. Maecenas ac erat ac ante fermentum euismod. Nulla in ultricies nisl. Nullam rutrum volutpat ante, vitae eleifend urna tincidunt sed. Integer fringilla dui massa, vitae dignissim enim rhoncus a. Etiam consectetur posuere maximus.")
Card.create(user_id: 1, name: "Camping with the guys", date: Time.now(), cover_image: File.open(File.join(Rails.root, 'dummy.jpg')), description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue congue sem vitae posuere. Nunc ut imperdiet quam, at semper velit. Integer quis nunc pulvinar, rhoncus est nec, feugiat augue. Praesent non rhoncus neque. Sed ut ultrices enim, ac aliquam sem. Maecenas ac erat ac ante fermentum euismod. Nulla in ultricies nisl. Nullam rutrum volutpat ante, vitae eleifend urna tincidunt sed. Integer fringilla dui massa, vitae dignissim enim rhoncus a. Etiam consectetur posuere maximus.")

Location.create(card_id: 1, geojson: "[{\"type\":\"Feature\",\"geometry\":{\"type\":\"Point\",\"coordinates\":[-122.44468688964844,37.72836644908416]},\"properties\":{\"marker-size\":\"large\",\"marker-color\":\"#FF4E50\",\"markerId\":5,\"name\":\"San Fransisco\"}},{\"type\":\"Feature\",\"geometry\":{\"type\":\"Point\",\"coordinates\":[-122.44573295116425,37.72772153624739]},\"properties\":{\"marker-size\":\"large\",\"marker-color\":\"#FF4E50\",\"markerId\":1,\"name\":\"test\"}}]")
Location.create(card_id: 2, geojson: "[{\"type\":\"Feature\",\"geometry\":{\"type\":\"Point\",\"coordinates\":[-122.44468688964844,37.72836644908416]},\"properties\":{\"marker-size\":\"large\",\"marker-color\":\"#FF4E50\",\"markerId\":5,\"name\":\"San Fransisco\"}},{\"type\":\"Feature\",\"geometry\":{\"type\":\"Point\",\"coordinates\":[-122.44573295116425,37.72772153624739]},\"properties\":{\"marker-size\":\"large\",\"marker-color\":\"#FF4E50\",\"markerId\":1,\"name\":\"test\"}}]")
Location.create(card_id: 3, geojson: "[{\"type\":\"Feature\",\"geometry\":{\"type\":\"Point\",\"coordinates\":[-122.44468688964844,37.72836644908416]},\"properties\":{\"marker-size\":\"large\",\"marker-color\":\"#FF4E50\",\"markerId\":5,\"name\":\"San Fransisco\"}},{\"type\":\"Feature\",\"geometry\":{\"type\":\"Point\",\"coordinates\":[-122.44573295116425,37.72772153624739]},\"properties\":{\"marker-size\":\"large\",\"marker-color\":\"#FF4E50\",\"markerId\":1,\"name\":\"test\"}}]")
Location.create(card_id: 4, geojson: "[{\"type\":\"Feature\",\"geometry\":{\"type\":\"Point\",\"coordinates\":[-122.44468688964844,37.72836644908416]},\"properties\":{\"marker-size\":\"large\",\"marker-color\":\"#FF4E50\",\"markerId\":5,\"name\":\"San Fransisco\"}},{\"type\":\"Feature\",\"geometry\":{\"type\":\"Point\",\"coordinates\":[-122.44573295116425,37.72772153624739]},\"properties\":{\"marker-size\":\"large\",\"marker-color\":\"#FF4E50\",\"markerId\":1,\"name\":\"test\"}}]")
Location.create(card_id: 5, geojson: "[{\"type\":\"Feature\",\"geometry\":{\"type\":\"Point\",\"coordinates\":[-122.44468688964844,37.72836644908416]},\"properties\":{\"marker-size\":\"large\",\"marker-color\":\"#FF4E50\",\"markerId\":5,\"name\":\"San Fransisco\"}},{\"type\":\"Feature\",\"geometry\":{\"type\":\"Point\",\"coordinates\":[-122.44573295116425,37.72772153624739]},\"properties\":{\"marker-size\":\"large\",\"marker-color\":\"#FF4E50\",\"markerId\":1,\"name\":\"test\"}}]")
Location.create(card_id: 6, geojson: "[{\"type\":\"Feature\",\"geometry\":{\"type\":\"Point\",\"coordinates\":[-122.44468688964844,37.72836644908416]},\"properties\":{\"marker-size\":\"large\",\"marker-color\":\"#FF4E50\",\"markerId\":5,\"name\":\"San Fransisco\"}},{\"type\":\"Feature\",\"geometry\":{\"type\":\"Point\",\"coordinates\":[-122.44573295116425,37.72772153624739]},\"properties\":{\"marker-size\":\"large\",\"marker-color\":\"#FF4E50\",\"markerId\":1,\"name\":\"test\"}}]")