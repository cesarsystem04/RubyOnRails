class ArticlesController < ApplicationController
 
#Meotodo para inicializar la creacion del articulo
    def new
        
    end
    
def create
#Genera la variable @article y toma como valor la referencia a un Objeto del COnstructor Article
 
#Aqui sw define y se usa la variable de @articles que se usa dentro de la funcion de Crear
  @article = Article.new(article_params) 
  @article.save
  redirect_to @article
end
   
def show
    @article = Article.find(params[:id])
end
    
def muestra
   @article = Article,find(parmas[:id]) 
end
    
private
  def article_params
    params.require(:article).permit(:title, :text)
  end
    
end
