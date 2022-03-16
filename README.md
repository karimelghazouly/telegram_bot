# README

## Intro
In this read me I am covering how to run the project and my approach, I also included section about what next steps I would take and what I would do If I had more time, these section are mainly to showcase all the knowledge I have in this topic as I was kind of limited and wasted time figuring out how to do things in rails because I am not very professional in this technology, I enjoyed working on this task and I am waiting for your feedback :). 

## Approach
I used this [gem](https://github.com/telegram-bot-rb/telegram-bot) to help in communicating with telegram API.  
I used the webhook approach, and used ngrok to test it locally.  
I used simple MVC for now because it's faster to do.  


## Next Steps
In this section I am writing what would I have done if I had more time.  
- I would finish dockerizing this app.  
- I would write unit tests and integration tests.  
- I would seperate FE and an API to be able to support real time updates.
- I would handle media files in S3.  
- I would support pagination because right now we fetch all messages at once.  
- I would make a nicer UI that is easier to navigate
- I would use a proper database


### Running command
You need first to setup the webhook to your local ngrok.  
```
POST REQUEST
https://api.telegram.org/bot<token>/setWebhook
{
	"url":<ngrok url>
}

```
`TELEGRAM_TOKEN=5230340635:AAG7NqBVWdX1hSioMsajR_s6dM2xhNJVooU rails s`
bot username: @rasayl_bot