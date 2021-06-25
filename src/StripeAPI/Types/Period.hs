{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Period
module StripeAPI.Types.Period where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.period@ in the specification.
data Period = Period
  { -- | end: The end date of this usage period. All usage up to and including this point in time is included.
    periodEnd :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | start: The start date of this usage period. All usage after this point in time is included.
    periodStart :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Period where
  toJSON obj = Data.Aeson.Types.Internal.object ("end" Data.Aeson.Types.ToJSON..= periodEnd obj : "start" Data.Aeson.Types.ToJSON..= periodStart obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("end" Data.Aeson.Types.ToJSON..= periodEnd obj) GHC.Base.<> ("start" Data.Aeson.Types.ToJSON..= periodStart obj))

instance Data.Aeson.Types.FromJSON.FromJSON Period where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Period" (\obj -> (GHC.Base.pure Period GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "start"))

-- | Create a new 'Period' with all required fields.
mkPeriod :: Period
mkPeriod =
  Period
    { periodEnd = GHC.Maybe.Nothing,
      periodStart = GHC.Maybe.Nothing
    }
