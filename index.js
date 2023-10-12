import express from "express"

const app = express()


app.get("/", (req, res) => {
    res.send("hello from 3000 port")
})

app.listen(3000, () => {
    console.log("Server is running ~!~");
})