{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema FinancialReportingFinanceReportRunRunParameters
module StripeAPI.Types.FinancialReportingFinanceReportRunRunParameters where

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

-- | Defines the object schema located at @components.schemas.financial_reporting_finance_report_run_run_parameters@ in the specification.
data FinancialReportingFinanceReportRunRunParameters = FinancialReportingFinanceReportRunRunParameters
  { -- | columns: The set of output columns requested for inclusion in the report run.
    financialReportingFinanceReportRunRunParametersColumns :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | connected_account: Connected account ID by which to filter the report run.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    financialReportingFinanceReportRunRunParametersConnectedAccount :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | currency: Currency of objects to be included in the report run.
    financialReportingFinanceReportRunRunParametersCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | interval_end: Ending timestamp of data to be included in the report run (exclusive).
    financialReportingFinanceReportRunRunParametersIntervalEnd :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | interval_start: Starting timestamp of data to be included in the report run.
    financialReportingFinanceReportRunRunParametersIntervalStart :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | payout: Payout ID by which to filter the report run.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    financialReportingFinanceReportRunRunParametersPayout :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | reporting_category: Category of balance transactions to be included in the report run.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    financialReportingFinanceReportRunRunParametersReportingCategory :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | timezone: Defaults to \`Etc\/UTC\`. The output timezone for all timestamps in the report. A list of possible time zone values is maintained at the [IANA Time Zone Database](http:\/\/www.iana.org\/time-zones). Has no effect on \`interval_start\` or \`interval_end\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    financialReportingFinanceReportRunRunParametersTimezone :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON FinancialReportingFinanceReportRunRunParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("columns" Data.Aeson.Types.ToJSON..= financialReportingFinanceReportRunRunParametersColumns obj : "connected_account" Data.Aeson.Types.ToJSON..= financialReportingFinanceReportRunRunParametersConnectedAccount obj : "currency" Data.Aeson.Types.ToJSON..= financialReportingFinanceReportRunRunParametersCurrency obj : "interval_end" Data.Aeson.Types.ToJSON..= financialReportingFinanceReportRunRunParametersIntervalEnd obj : "interval_start" Data.Aeson.Types.ToJSON..= financialReportingFinanceReportRunRunParametersIntervalStart obj : "payout" Data.Aeson.Types.ToJSON..= financialReportingFinanceReportRunRunParametersPayout obj : "reporting_category" Data.Aeson.Types.ToJSON..= financialReportingFinanceReportRunRunParametersReportingCategory obj : "timezone" Data.Aeson.Types.ToJSON..= financialReportingFinanceReportRunRunParametersTimezone obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("columns" Data.Aeson.Types.ToJSON..= financialReportingFinanceReportRunRunParametersColumns obj) GHC.Base.<> (("connected_account" Data.Aeson.Types.ToJSON..= financialReportingFinanceReportRunRunParametersConnectedAccount obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= financialReportingFinanceReportRunRunParametersCurrency obj) GHC.Base.<> (("interval_end" Data.Aeson.Types.ToJSON..= financialReportingFinanceReportRunRunParametersIntervalEnd obj) GHC.Base.<> (("interval_start" Data.Aeson.Types.ToJSON..= financialReportingFinanceReportRunRunParametersIntervalStart obj) GHC.Base.<> (("payout" Data.Aeson.Types.ToJSON..= financialReportingFinanceReportRunRunParametersPayout obj) GHC.Base.<> (("reporting_category" Data.Aeson.Types.ToJSON..= financialReportingFinanceReportRunRunParametersReportingCategory obj) GHC.Base.<> ("timezone" Data.Aeson.Types.ToJSON..= financialReportingFinanceReportRunRunParametersTimezone obj))))))))

instance Data.Aeson.Types.FromJSON.FromJSON FinancialReportingFinanceReportRunRunParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "FinancialReportingFinanceReportRunRunParameters" (\obj -> (((((((GHC.Base.pure FinancialReportingFinanceReportRunRunParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "columns")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "connected_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval_start")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payout")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reporting_category")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "timezone"))

-- | Create a new 'FinancialReportingFinanceReportRunRunParameters' with all required fields.
mkFinancialReportingFinanceReportRunRunParameters :: FinancialReportingFinanceReportRunRunParameters
mkFinancialReportingFinanceReportRunRunParameters =
  FinancialReportingFinanceReportRunRunParameters
    { financialReportingFinanceReportRunRunParametersColumns = GHC.Maybe.Nothing,
      financialReportingFinanceReportRunRunParametersConnectedAccount = GHC.Maybe.Nothing,
      financialReportingFinanceReportRunRunParametersCurrency = GHC.Maybe.Nothing,
      financialReportingFinanceReportRunRunParametersIntervalEnd = GHC.Maybe.Nothing,
      financialReportingFinanceReportRunRunParametersIntervalStart = GHC.Maybe.Nothing,
      financialReportingFinanceReportRunRunParametersPayout = GHC.Maybe.Nothing,
      financialReportingFinanceReportRunRunParametersReportingCategory = GHC.Maybe.Nothing,
      financialReportingFinanceReportRunRunParametersTimezone = GHC.Maybe.Nothing
    }
