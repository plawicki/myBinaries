class BeansController < ApplicationController
  before_action :set_bean, only: [:show, :edit, :update, :destroy]
  before_filter :authorize_blogger!, :except => [:index, :show]


  
  # GET /beans
  # GET /beans.json
  def index
    @beans = Bean.order(:created_at).page(params[:page])

  end

  # GET /beans/1
  # GET /beans/1.json
  def show
  end

  # GET /beans/new
  def new
    @bean = Bean.new
  end

  # GET /beans/1/edit
  def edit
  end

  # GET /gists/show
  def search
     @beans = Bean.search(params[:lang],params[:desc])
     @beans = Kaminari.paginate_array(@beans).page(params[:page])
  end

  # POST /beans
  # POST /beans.json
  def create
    @bean = Bean.new(change_lang(bean_params))

    respond_to do |format|
      if @bean.save
        format.html { redirect_to @bean, notice: 'Bean was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bean }
      else
        format.html { render action: 'new' }
        format.json { render json: @bean.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beans/1
  # PATCH/PUT /beans/1.json
  def update
    respond_to do |format|
      if @bean.update(change_lang(bean_params))
        format.html { redirect_to @bean, notice: 'Bean was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bean.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beans/1
  # DELETE /beans/1.json
  def destroy
    @bean.destroy
    respond_to do |format|
      format.html { redirect_to beans_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bean
      @bean = Bean.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bean_params
      params.require(:bean).permit(:snippet, :lang, :description)
    end

    #Pygments validating lang
    def not_allowed?(lang)
      allowed = Pygments.lexers.flatten.select.with_index{|a,i| (i+1) % 2 == 0}
      allowed = allowed.map{|a| a[:aliases][0]}
      allowed = allowed.delete_if{|a| (/-cpp/ =~ a || /-objc/ =~ a)}
      allowed = allowed.sort

      good = false
      allowed.each do |l|

        if l == lang
          good = true
          break
        end

      end


      !good
    end

    def change_lang(gists)
     
      if not_allowed?(gists[:lang])
        gists[:lang] = "text"
      end

      return gists
    end
end
