var tf = require("@tensorflow/tfjs")

exports.tensor2d = function (values) {
  return tf.tensor2d(values)
}