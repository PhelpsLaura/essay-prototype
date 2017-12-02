class ResearchPodsController < ApplicationController

  def show
    @essay = Essay.find(params[:essay_id])
    @research_pod = @essay.research_pods.find(params[:id])
  end

  def new
    @essay = Essay.find(params[:essay_id])
    @research_pod = @essay.research_pods.new
  end

  def create
    @essay = Essay.find(params[:essay_id])
    @research_pod = @essay.research_pods.new(research_pod_params)
    if @research_pod.save
      redirect_to essay_path(@essay)
    else
      render 'new'
    end
  end

  def edit
    @essay = Essay.find(params[:essay_id])
    @research_pod = @essay.research_pods.find(params[:id])
  end

  def update
    @essay = Essay.find(params[:essay_id])
    @research_pod = @essay.research_pods.find(params[:id])
    if @research_pod.update(research_pod_params)
      redirect_to essay_path(@essay)
    else
      render 'edit'
    end
  end

  def destroy
    @essay = Essay.find(params[:id])
    @research_pod = @essay.research_pods.find(params[:id])

    redirect_to essay_path(@essay)
  end

  private
    def research_pod_params
      params.require(:research_pod).permit(:body)
    end
end
