unit Model.classs.Helper;
interface
uses Controls,System.SysUtils;

Type
  TCaptionHelper = record helper for TCaption
    function ToCurrency:Currency;
  end;

  TStrHelper = record helper for String
    function ToCurrency:Currency;
  end;

implementation

{ TCaptionHelper }

function TCaptionHelper.Tocurrency: Currency;
begin
  Result := StrToCurr(Self);
end;

{ TStrHelper }

function TStrHelper.ToCurrency: Currency;
begin
   Result := StrToCurr(Self)
end;

end.
