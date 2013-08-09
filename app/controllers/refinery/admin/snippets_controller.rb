module ::Refinery
  module Admin
    class SnippetsController < ::Refinery::AdminController

      crudify :'refinery/snippet', :xhr_paging => true
      
      def create
        if (@snippet = Refinery::Snippet.create(params[:snippet])).valid?
          (request.xhr? ? flash.now : flash).notice = t(
            'refinery.crudify.created',
            :what => "#{@snippet.title}"
          )

          unless request.xhr?
            redirect_to (params[:continue_editing] =~ /1/ ? refinery.edit_admin_snippet_path(@snippet) : refinery.admin_snippets_url)
          else
            response = Hash.new
            response['redirect'] = refinery.edit_admin_snippet_path(@snippet) if params[:continue_editing]
            render :json => response
          end

        else
          unless request.xhr?
            render :action => 'new'
          else
            html_snippets = Hash.new
            html_snippets['flash_container'] = render_to_string(:partial => "/shared/admin/error_messages",
              :locals => {
                :object => @snippet,
                :include_object_name => true
              })
            render :json => {'snippets' => html_snippets}
          end
        end
      end

      # TODO: statistics or other stuff
=begin
      def stats
        options = ::Refinery::Crud.default_options(Refinery::Snippet) #.merge(options)
        @snippets = Refinery::Snippet.where(options[:search_conditions] || options[:conditions]).includes(options[:include].map(&:to_sym)).order(options[:order])
        @snippets = @snippets.with_query(params[:search]) if searching?    
        
        if options[:per_page].present?
          paginate_per_page = options[:per_page]
        elsif Refinery::Snippet.methods.map(&:to_sym).include?(:per_page)
          paginate_per_page = Refinery::Snippet.per_page
        end
            
        @snippets = @snippets.paginate(:page => params[:page], :per_page => paginate_per_page)
        
        render_partial_response?
        #        
        #    if request.xhr?
        #      render :text => render_to_string(:partial => '#{plural_name}', :layout => false).html_safe,
        #             :layout => 'refinery/flash' and return false
        #    end
        #      
      end
=end     
    end
  end
end
