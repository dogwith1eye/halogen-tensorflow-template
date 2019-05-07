module App.Foreign.Tensorflow where

import Data.ArrayBuffer.Types (Float32Array, Int32Array, Uint8Array)

data TypedArray =
  Float32Array
  | Int32Array
  | Uint8Array

data TensorLike2D =
    TypedArray
    | Array Number
    | Array (Array Number)
    | Array Boolean
    | Array (Array Boolean)
    | Array String
    | Array (Array String)

tensor2d :: TensorLike2D -> Tensor Rank2d
tensor2d value = do
  texture <- createTexture
  let pixels = newUint8Array (width * height * 4)