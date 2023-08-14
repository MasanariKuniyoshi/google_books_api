class BooksController < ApplicationController
  def index
  end

  def search
    @result = GoogleBooksApi.search_by_isbn(params[:isbn])
    if @result["totalItems"] == 0
      flash[:danger] = "本が見つかりませんでした"
      redirect_to books_path
    else
      @result
      render 'index'
    end
  end
end
