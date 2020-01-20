Hello you have made it to my application

before we get into it here is a link to the other side of this coin 
: https://github.com/averagealloy/deaddit_client

ok now that we have gotten that out of the way what am I doing here 

well for starters this is an api (application program interface) 
it uses and ins written in ruby and uses the rails framework with the api flag

controllers- 
    -posts controller
     this handels the all of the crud functions for a post I am only using a couple of them
    but I plan on making this application more functional later down the road. also in the post controller each method has accessed to the comments 

    -comments controller 
     in this controller it has all the crud functions for comments and it is simallar to posts well but for comments 

models 
    -post 
        in this model it has a relationship for post. 
        a post has many comments 

    -comment 
        in this model ther is aslo a relationship but this time for comments. a comment bellongs to a post 


config
    -initalizers
        -cors
            in the cors file is just allowing other programs to use this api. I do this by setting the origin to '*'


    -routes
        in my routes file I specify what I am looking for for insatance I need to go to the api and in that api file I need to go to the number 1 version of it called (num1) then I can get to my RESTful routes. to see all of the routes I have I can type in rails routes in my console 


DB
    -migrations 
         I didnt expect to get my tables right on    the first try thats why there are some  miogrations in there. 2 to creat tables. 1 to add the content tag and another to remove the body tag.


    -schema 
        in my schema it reflects the migrations that I had made. so for the posts table I have 
        content that is a string and title that is aswell a string. then moving on to the comments table it has a post_id which is an integer. and a string of the comment itself. 
        ***** bothe tables have two values one for updated at and one for created at so if I wanted to I could look at the when a user made that post or a comment 

    -seeds 
        nothing was in this file i would rather just make comment and post in the console my self 


gemfile 

    some notable additions 

        -rack cors 
            this allows for other websites to use this api.

        -pry
            I added pry because nothing works the first time and even if it did I would want it to valitdate what I am working on. 
