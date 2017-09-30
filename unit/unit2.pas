unit Unit2;

interface

type

{ TAncestor : Предок }

TAncestor = class
private
protected
public
 // Виртуальная процедура
 procedure SetMyField(Value: string); virtual; abstract;
 function GetMyField: string; virtual; abstract;
end;

{ TMyClass : Наследник }

TMyClass = class(TAncestor)
private
 FMyField: string;
public
 // Перекрытие виртуальной процедуры
 procedure SetMyField(Value: string); override;
 function GetMyField: string; override;
end;


implementation

{ TMyClass }

procedure TMyClass.SetMyField(Value: string);
begin
  FMyField:=Value;
end;

function TMyClass.GetMyField: string;
begin
  result:=FMyField;
end;

end.

