{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema IssuingTransactionFlightDataLeg
module StripeAPI.Types.IssuingTransactionFlightDataLeg where

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

-- | Defines the object schema located at @components.schemas.issuing_transaction_flight_data_leg@ in the specification.
data IssuingTransactionFlightDataLeg = IssuingTransactionFlightDataLeg
  { -- | arrival_airport_code: The three-letter IATA airport code of the flight\'s destination.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    issuingTransactionFlightDataLegArrivalAirportCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | carrier: The airline carrier code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    issuingTransactionFlightDataLegCarrier :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | departure_airport_code: The three-letter IATA airport code that the flight departed from.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    issuingTransactionFlightDataLegDepartureAirportCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | flight_number: The flight number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    issuingTransactionFlightDataLegFlightNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | service_class: The flight\'s service class.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    issuingTransactionFlightDataLegServiceClass :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | stopover_allowed: Whether a stopover is allowed on this flight.
    issuingTransactionFlightDataLegStopoverAllowed :: (GHC.Maybe.Maybe GHC.Types.Bool)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON IssuingTransactionFlightDataLeg where
  toJSON obj = Data.Aeson.Types.Internal.object ("arrival_airport_code" Data.Aeson.Types.ToJSON..= issuingTransactionFlightDataLegArrivalAirportCode obj : "carrier" Data.Aeson.Types.ToJSON..= issuingTransactionFlightDataLegCarrier obj : "departure_airport_code" Data.Aeson.Types.ToJSON..= issuingTransactionFlightDataLegDepartureAirportCode obj : "flight_number" Data.Aeson.Types.ToJSON..= issuingTransactionFlightDataLegFlightNumber obj : "service_class" Data.Aeson.Types.ToJSON..= issuingTransactionFlightDataLegServiceClass obj : "stopover_allowed" Data.Aeson.Types.ToJSON..= issuingTransactionFlightDataLegStopoverAllowed obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("arrival_airport_code" Data.Aeson.Types.ToJSON..= issuingTransactionFlightDataLegArrivalAirportCode obj) GHC.Base.<> (("carrier" Data.Aeson.Types.ToJSON..= issuingTransactionFlightDataLegCarrier obj) GHC.Base.<> (("departure_airport_code" Data.Aeson.Types.ToJSON..= issuingTransactionFlightDataLegDepartureAirportCode obj) GHC.Base.<> (("flight_number" Data.Aeson.Types.ToJSON..= issuingTransactionFlightDataLegFlightNumber obj) GHC.Base.<> (("service_class" Data.Aeson.Types.ToJSON..= issuingTransactionFlightDataLegServiceClass obj) GHC.Base.<> ("stopover_allowed" Data.Aeson.Types.ToJSON..= issuingTransactionFlightDataLegStopoverAllowed obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON IssuingTransactionFlightDataLeg where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingTransactionFlightDataLeg" (\obj -> (((((GHC.Base.pure IssuingTransactionFlightDataLeg GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "arrival_airport_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "departure_airport_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "flight_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "service_class")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "stopover_allowed"))

-- | Create a new 'IssuingTransactionFlightDataLeg' with all required fields.
mkIssuingTransactionFlightDataLeg :: IssuingTransactionFlightDataLeg
mkIssuingTransactionFlightDataLeg =
  IssuingTransactionFlightDataLeg
    { issuingTransactionFlightDataLegArrivalAirportCode = GHC.Maybe.Nothing,
      issuingTransactionFlightDataLegCarrier = GHC.Maybe.Nothing,
      issuingTransactionFlightDataLegDepartureAirportCode = GHC.Maybe.Nothing,
      issuingTransactionFlightDataLegFlightNumber = GHC.Maybe.Nothing,
      issuingTransactionFlightDataLegServiceClass = GHC.Maybe.Nothing,
      issuingTransactionFlightDataLegStopoverAllowed = GHC.Maybe.Nothing
    }
