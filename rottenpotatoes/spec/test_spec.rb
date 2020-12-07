require 'rails_helper'

RSpec.describe "Movies", type: :request do
  describe "GET /movies/director/1" do
    it "works!" do
      Movie.create!(id: 1, title: "Aladdin", rating: "G", description: nil, director: nil)
      get search_director_path({id: 1})
      expect(response).to redirect_to(movies_url)
    end
  end
end

RSpec.describe "Movies", type: :request do
  describe "GET /movies/director/2" do
    it "works! well" do
      Movie.create!(id: 1, title: "Aladdin", rating: "G", description: nil, director: "Me")
      Movie.create!(id: 2, title: "Aladin1", rating: "G", description: nil, director: "Him")
      Movie.create!(id: 3, title: "Aladin2", rating: "G", description: nil, director: "Me")
      Movie.create!(id: 4, title: "Aladin3", rating: "G", description: nil, director: "Him")
      Movie.create!(id: 5, title: "Aladin4", rating: "G", description: nil, director: "Me")
      get search_director_path({id: 2})
      expect(response).to be_success
      expect(response.body).not_to include("Aladdin")
      expect(response.body).not_to include("Aladin2")
      expect(response.body).not_to include("Aladin4")
      expect(response.body).to include("Aladin1")
      expect(response.body).to include("Aladin3")
    end
  end
end

RSpec.describe "Movies", type: :request do
  describe "GET /movies/director/1" do
    it "works! well" do
      Movie.create!(id: 1, title: "Aladdin", rating: "G", description: nil, director: "Me")
      Movie.create!(id: 2, title: "Aladdin1", rating: "G", description: nil, director: "Him")
      Movie.create!(id: 3, title: "Aladdin2", rating: "G", description: nil, director: "Me")
      Movie.create!(id: 4, title: "Aladdin3", rating: "G", description: nil, director: "Him")
      Movie.create!(id: 5, title: "Aladdin4", rating: "G", description: nil, director: "Me")
      get search_director_path({id: 1})
      expect(response).to be_success
      expect(response.body).to include("Aladdin")
      expect(response.body).to include("Aladdin2")
      expect(response.body).to include("Aladdin4")
      expect(response.body).not_to include("Aladdin1")
      expect(response.body).not_to include("Aladdin3")
    end
  end
end


RSpec.describe "Movies", type: :request do
  describe "GET /movies/director/1" do
    it "works!" do
      Movie.create!(id: 1, title: "Aladdin", rating: "G", description: nil, director: nil)
      get search_director_path({id: 1})
      expect(response).to redirect_to(movies_url)
    end
  end
end

RSpec.describe "Movies", type: :request do
  describe "GET /movies" do
    it "works!" do
      Movie.create!(id: 1, title: "Aladdin", rating: "G", description: nil, director: nil)
      get movies_path
      expect(response).to be_success
    end
  end
end

RSpec.describe "Movies", type: :request do
  describe "GET /movies/1" do
    it "works!" do
      Movie.create!(id: 1, title: "Aladdin", rating: "G", description: nil, director: nil)
      get edit_movie_path({id: 1})
      expect(response).to be_success
    end
  end
end

RSpec.describe "Movies", type: :request do
  describe "GET /movies/1" do
    it "works!" do
      Movie.create!(id: 1, title: "Aladdin", rating: "G", description: nil, director: nil)
      get movies_path({id: 1})
      expect(response).to be_success
    end
  end
end

RSpec.describe "Movies", type: :request do
  describe "GET /movies/1" do
    it "works!" do
      Movie.create!(id: 1, title: "Aladdin", rating: "G", description: nil, director: nil)
      get edit_movie_path({id: 1})
      expect(response).to be_success
    end
  end
end

RSpec.describe MoviesHelper do
  include MoviesHelper
  context "whatever you want" do
      it "whatever you want" do
          oddness(1)
          oddness(2)
      end
  end
end

RSpec.describe "Movies", type: :request do
  describe "POST /movies" do
    it "works!" do
      Movie.create!(id: 1, title: "Aladdin", rating: "G", description: nil, director: nil)
      delete movie_path({id: 1})
    end
  end
end

RSpec.describe "Movies", type: :request do
  describe "POST /movies" do
    it "works!" do
      Movie.create!(id: 1, title: "Aladdin", rating: "G", description: nil, director: nil)
      put movie_path({id: 1, movie: {title: "King Kong", rating: "G", description: nil, director: nil}})
    end
  end
end

RSpec.describe "Movies", type: :request do
  describe "POST /movies" do
    it "works!" do
      post movies_path({movie: {title: "King Kong", rating: "G", description: nil, director: nil}})
    end
  end
end


