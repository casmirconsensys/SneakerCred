module.exports = function(callback) {
  console.log("hello world")

  callback("insert error here")

  process.exit()
}
