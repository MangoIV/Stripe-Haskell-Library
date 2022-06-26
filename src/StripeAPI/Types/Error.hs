{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Error
module StripeAPI.Types.Error where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import {-# SOURCE #-} StripeAPI.Types.ApiErrors
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.error@ in the specification.
--
-- An error response from the Stripe API
data Error = Error
  { -- | error:
    errorError :: ApiErrors
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Error where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["error" Data.Aeson.Types.ToJSON..= errorError obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["error" Data.Aeson.Types.ToJSON..= errorError obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Error where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Error" (\obj -> GHC.Base.pure Error GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error"))

-- | Create a new 'Error' with all required fields.
mkError ::
  -- | 'errorError'
  ApiErrors ->
  Error
mkError errorError = Error {errorError = errorError}
