const express = require('express')
const app = express()
const port = process.env.PORT || 3000

app.get('/', (request, response) => {
  const date = new Date()
  const time = date.getHours() + ":" + date.getMinutes() + ":" + date.getMilliseconds()
  response.send(`Server time is ${time}.`)
})
  
app.listen(port, (error) => {
  if (error) {
    return console.log('Error: ', error)
  }
  console.log(`Server is listening on ${port}.`)
})
