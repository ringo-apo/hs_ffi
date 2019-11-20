import Foreign.C.Types
import System.Environment
import Control.Applicative

foreign import ccall "plus" h_plus :: CInt -> IO CInt 

plus :: Int -> IO Int
plus = fmap fromIntegral . h_plus . fromIntegral

main :: IO ()
main = do
    print("Input any number.")
    a <- getLine
    let b = (read a :: Int)
    print =<< plus b

