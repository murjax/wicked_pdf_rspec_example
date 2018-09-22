class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def show
    respond_to do |format|
      format.html { redirect_to document_path(@document, format: :pdf) }
      format.pdf do
        render pdf: 'document', page_size: 'Letter', margin: { top: 0, left: 5, right: 5, bottom: 0 }, locals: { document: @document }
      end
    end

  end

  def create
    @document = Document.new(document_params)

    if @document.save
      redirect_to @document, notice: 'Document was successfully created.'
    else
      render :new
    end
  end

  def update
    if @document.update(document_params)
      redirect_to @document, notice: 'Document was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @document.destroy
    redirect_to documents_url, notice: 'Document was successfully destroyed.'
  end

  private
    def set_document
      @document = Document.find(params[:id])
    end

    def document_params
      params.require(:document).permit(:name, :body)
    end
end
