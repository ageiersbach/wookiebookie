#Add ActiveAdmin to WookieBookie

Apart from following the [ActiveAdmin](http://activeadmin.info/documentation.html) docs to the letter, there were a couple twists that I experienced with the install. The first error I encountered was:

    couldn't find file 'jquery-ui'


Which turned out to be due to jquery-rails removing 'jquery-ui' from their gem. They recommended using the gem 'jquery-ui-rails', but this also turned out not to work, since they named their jquery-ui file 'jqueryui', so ActiveAdmin still throws an error. So, as a temporary fix, I downgraded my version of jquery-rails to '< 3.0.0', which fixed this error. Given the large number of package managers for javascript these days, I might end up setting up my own asset management configuration.

The second error I encountered was:

  uninitialized constant DashboardController  # this was at localhost:3000, which was a little odd

ActiveAdmin added its routes to the top of my `config/routes.rb` file, so I needed to move my `root :to => races#index` to the very top.

Apart from this, it was a very easy installation.

##Next, add a resource!

For WookieBookie, I decided to add a blog to track my changespecs. This might even become open to the public if I can prove to myself that it's worth keeping up with. With that in mind, I created a very basic model, *Post*.

    rails g scaffold Post title:string body:text

    rake db:migrate
    
    rails g active_admin:resource Post

The above three commands automatically generated the Posts interface I will need for the blog. I can change my regular app to only serve up the index and the show routes for Posts. To do this, I became a little bit fancy. I wanted to have prettier urls than the basic rails look for the blog. Something like 'wookiebookie/blog/my-first-post' instead of 'wookiebookie/blog/1'. To do this, I removed the basic 'resources :posts' from the routes file, and added the following:

    get 'blog', to: 'posts#index'
    match 'blog/:title', to: 'posts#show'

The params that get sent to posts#show now are { title: 'some-title' }. This means I can't really take advantage of the Rails' url helpers here. I'm overriding default behavior. I could get this to work by overriding `#to_param` on Post, but that would create problems for my ActiveAdmin interface to posts!  

The next thing I did was add a 'Publish' action on my posts in the admin interface, so I could have working drafts that would not be displayed to the public before they were ready. ActiveAdmin made this pretty easy:

    member_action :publish, :method => :put do 
      post = Post.find(params[:id])
      post.published = DateTime.now
      post.save!
      redirect_to admin_posts_path
    end

    index do
      ..
      actions do |post|
        link_to "Publish", publish_admin_post_path(post), method: 'put' unless post.published
      end
    end

 This added a nice interface where I could have the option to hit publish on an post only if I hadn't already published it.
