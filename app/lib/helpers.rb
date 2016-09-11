module SinatraTests
  class Helpers
    def show_404
      status 404
      @page_name = '404'
      @page_title = 'Oops error 404'
      erb :'404', :layout => :main,
                  :layout_options => {:views => settings.layouts_dir}
    end
  end
end
