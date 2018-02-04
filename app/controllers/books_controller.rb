class BooksController < ApplicationController

  def index
    @books = Book.all

    respond_to do |format|
      format.html
      format.csv do
        render plain: Book.generate_csv(@books)
      end
      format.json { render json: @books }
      format.text
    end

    # respond_to do |format|
    #   format.html
    #   format.xml { render :xml => @people.to_xml }
    # end
  end

end
