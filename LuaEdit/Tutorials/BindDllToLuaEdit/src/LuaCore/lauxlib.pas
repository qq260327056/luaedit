(*
** $Id: lauxlib.pas,v 1.1 2005-11-26 15:19:46 jfgoulet Exp $
** Auxiliary functions for building Lua libraries
** See Copyright Notice in lua.h
*)
unit lauxlib;

{$IFNDEF lauxlib_h}
{$DEFINE lauxlib_h}
{$ENDIF}

interface

uses
  lua;


type
  luaL_reg = record
    name: PChar;
    func: lua_CFunction;
  end;
  PluaL_reg = ^luaL_reg;

procedure luaL_openlib(L: Plua_State; libname: PChar;
                               R: PluaL_reg; Nup: Integer);
  cdecl external 'lua.dll';
function luaL_getmetafield(L: Plua_State; Obj: Integer; const E: PChar): Integer;
  cdecl external 'lua.dll';
function luaL_callmeta(L: Plua_State; Obj: Integer; const E: PChar): Integer;
  cdecl external 'lua.dll';
function luaL_typerror(L: Plua_State; NArg: Integer; const TName: PChar): Integer;
  cdecl external 'lua.dll';
function luaL_argerror(L: Plua_State; NumArg: Integer; const ExtraMsg: PChar): Integer;
  cdecl external 'lua.dll';
function luaL_checklstring(L: Plua_State; NumArg: Integer; S: Psize_t): PChar;
  cdecl external 'lua.dll';
function luaL_optlstring(L: Plua_State; NumArg: Integer;
                                           const Def: PChar; S: Psize_t): PChar;
  cdecl external 'lua.dll';
function luaL_checknumber(L: Plua_State; NumArg: Integer): lua_Number;
  cdecl external 'lua.dll';
function luaL_optnumber(L: Plua_State; NArg: Integer; Def: Lua_Number): lua_Number;
  cdecl external 'lua.dll';

procedure luaL_checkstack(L: Plua_State; SZ: Integer; const Msg: PChar);
  cdecl external 'lua.dll';
procedure luaL_checktype(L: Plua_State; NArg: Integer; T: Integer);
  cdecl external 'lua.dll';
procedure luaL_checkany(L: Plua_State; NArg: Integer);
  cdecl external 'lua.dll';

function   luaL_newmetatable(L: Plua_State; const TName: PChar): Integer;
  cdecl external 'lua.dll';
procedure  luaL_getmetatable(L: Plua_State; const TName: PChar);
  cdecl external 'lua.dll';
function luaL_checkudata(L: Plua_State; UD: Integer; const TName: PChar): Pointer;
  cdecl external 'lua.dll';

procedure luaL_where(L: Plua_State; LVL: Integer);
  cdecl external 'lua.dll';
function luaL_error(L: Plua_State; const Fmt: PChar): Integer; varargs;
  cdecl external 'lua.dll';

function luaL_findstring(const ST: PChar; lst: array of PChar): Integer;
  cdecl external 'lua.dll';

function luaL_ref(L: Plua_State; T: Integer): Integer;
  cdecl external 'lua.dll';
procedure luaL_unref(L: Plua_State; T: Integer; Ref: Integer);
  cdecl external 'lua.dll';

function luaL_getn(L: Plua_State; T: Integer): Integer;
  cdecl external 'lua.dll';
procedure luaL_setn(L: Plua_State; T: Integer; N: Integer);
  cdecl external 'lua.dll';

function luaL_loadfile(L: Plua_State; const FileName: PChar): Integer;
  cdecl external 'lua.dll';
function luaL_loadbuffer(L: Plua_State; const Buff: PChar; SZ: size_t;
                                const Name: PChar): Integer;
  cdecl external 'lua.dll';



(*
** ===============================================================
** some useful macros
** ===============================================================
*)

function luaL_argcheck(L: Plua_State; Cond: Boolean; NumArg: Integer; const ExtraMsg: PChar): Integer;
function luaL_checkstring(L: Plua_State; N: Integer): PChar;
function luaL_optstring(L: Plua_State; N: Integer; const D: PChar): PChar;
function luaL_checkint(L: Plua_State; N: Integer): Integer;
function luaL_checklong(L: Plua_State; N: Integer): Integer;
function luaL_optint(L: Plua_State; N: Integer; D: Lua_Number): Integer;
function luaL_optlong(L: Plua_State; N: Integer; D: Lua_Number): Integer;

(*
** {======================================================
** Generic Buffer manipulation
** =======================================================
*)


{$IFNDEF BUFSIZ}
const
  BUFSIZ = 1024;
{$ENDIF}

{$IFNDEF LUAL_BUFFERSIZE}
const
  LUAL_BUFFERSIZE = BUFSIZ;
{$ENDIF}

type
  luaL_Buffer = record
    P: PChar;    (* current position in buffer *)
    lvl: Integer; (* number of strings in the stack(level) *)
    L: Plua_State;
    buffer: array [0..LUAL_BUFFERSIZE - 1] of Char;
  end;
  PluaL_Buffer = ^luaL_Buffer;

procedure luaL_putchar(B: PluaL_Buffer; C: Char);

function luaL_addsize(B: PLuaL_Buffer; N: Integer): PChar;

procedure luaL_buffinit(L: Plua_State; B: PluaL_Buffer);
  cdecl external 'lua.dll';
function luaL_prepbuffer(B: PluaL_Buffer): PChar;
  cdecl external 'lua.dll';
procedure luaL_addlstring(B: PluaL_Buffer; const S: PChar; L: size_t);
  cdecl external 'lua.dll';
procedure luaL_addstring(B: PluaL_Buffer; const S: PChar);
  cdecl external 'lua.dll';
procedure luaL_addvalue(B: PluaL_Buffer);
  cdecl external 'lua.dll';
procedure luaL_pushresult(B: PluaL_Buffer);
  cdecl external 'lua.dll';


(* }====================================================== *)



(*
** Compatibility macros and functions
*)

function lua_dofile(L: Plua_State; const FileName: PChar): Integer;
  cdecl external 'lua.dll';
function lua_dostring(L: Plua_State; const Str: PChar): Integer;
  cdecl external 'lua.dll';
function lua_dobuffer(L: Plua_State; const Buff: PChar; SZ: size_t;
                               const N: PChar): Integer;
  cdecl external 'lua.dll';

function luaL_check_lstr(L: Plua_State; NumArg: Integer; S: Psize_t): PChar;
function luaL_opt_lstr(L: Plua_State; NumArg: Integer;
                                           const Def: PChar; S: Psize_t): PChar;
function luaL_check_number(L: Plua_State; NumArg: Integer): lua_Number;
function luaL_opt_number(L: Plua_State; NArg: Integer; Def: Lua_Number): lua_Number;
procedure luaL_arg_check(L: Plua_State; Cond: Boolean; NumArg: Integer; const ExtraMsg: PChar);
function luaL_check_string(L: Plua_State; N: Integer): PChar;
function luaL_opt_string(L: Plua_State; N: Integer; const D: PChar): PChar;
function luaL_check_int(L: Plua_State; N: Integer): Integer;
function luaL_check_long(L: Plua_State; N: Integer): Integer;
function luaL_opt_int(L: Plua_State; N: Integer; D: Lua_Number): Integer;
function luaL_opt_long(L: Plua_State; N: Integer; D: Lua_Number): Integer;

implementation

function luaL_argcheck(L: Plua_State; Cond: Boolean; NumArg: Integer; const ExtraMsg: PChar): Integer;
begin
 Result := 0;
 if(not Cond) then
   Result := luaL_argerror(L, NumArg, ExtraMsg)
end;

function luaL_checkstring(L: Plua_State; N: Integer): PChar;
begin
  Result := luaL_checklstring(L, N, nil);
end;

function luaL_optstring(L: Plua_State; N: Integer; const D: PChar): PChar;
begin
  Result := luaL_optlstring(L, N, D, nil);
end;

function luaL_checkint(L: Plua_State; N: Integer): Integer;
begin
  Result := Trunc(luaL_checknumber(L, N));
end;

function luaL_checklong(L: Plua_State; N: Integer): Integer;
begin
  Result := Trunc(luaL_checknumber(L, N));
end;

function luaL_optint(L: Plua_State; N: Integer; D: Lua_Number): Integer;
begin
  Result := Trunc(luaL_optnumber(L, N, D));
end;

function luaL_optlong(L: Plua_State; N: Integer; D: Lua_Number): Integer;
begin
  Result := Trunc(luaL_optnumber(L, N, D));
end;

procedure luaL_putchar(B: PluaL_Buffer; C: Char);
begin
  if ((B.P <= @B.Buffer[High(B.Buffer)]) or (luaL_prepbuffer(B) <> #0)) then
  begin
    B.P^ := C;
    Inc(B.P);
  end;
end;

function luaL_addsize(B: PLuaL_Buffer; N: Integer): PChar;
begin
  Inc(B.P, N);
  Result := B.P;
end;


function luaL_check_lstr(L: Plua_State; NumArg: Integer; S: Psize_t): PChar;
begin
  Result := luaL_checklstring(L, NumArg, S);
end;

function luaL_opt_lstr(L: Plua_State; NumArg: Integer;
                                           const Def: PChar; S: Psize_t): PChar;
begin
  Result := luaL_optlstring(L, NumArg, Def, S);
end;

function luaL_check_number(L: Plua_State; NumArg: Integer): lua_Number;
begin
  Result := luaL_checknumber(L, NumArg);
end;

function luaL_opt_number(L: Plua_State; NArg: Integer; Def: Lua_Number): lua_Number;
begin
  Result := luaL_optnumber(L, NArg, Def);
end;

procedure luaL_arg_check(L: Plua_State; Cond: Boolean; NumArg: Integer; const ExtraMsg: PChar);
begin
  luaL_argcheck(L, Cond, NumArg, ExtraMsg);
end;

function luaL_check_string(L: Plua_State; N: Integer): PChar;
begin
  Result := luaL_checkstring(L, N);
end;

function luaL_opt_string(L: Plua_State; N: Integer; const D: PChar): PChar;
begin
  Result := luaL_optstring(L, N, D);
end;

function luaL_check_int(L: Plua_State; N: Integer): Integer;
begin
  Result := luaL_checkint(L, N);
end;

function luaL_check_long(L: Plua_State; N: Integer): Integer;
begin
  Result := luaL_checklong(L, N);
end;

function luaL_opt_int(L: Plua_State; N: Integer; D: Lua_Number): Integer;
begin
  Result := luaL_optint(L, N, D);
end;

function luaL_opt_long(L: Plua_State; N: Integer; D: Lua_Number): Integer;
begin
  Result := luaL_optlong(L, N, D);
end;

end.
