(**************************************************************************)
(*                                                                        *)
(*    Copyright (c) 2014 - 2016.                                          *)
(*    Dynamic Ledger Solutions, Inc. <contact@tezos.com>                  *)
(*                                                                        *)
(*    All rights reserved. No warranty, explicit or implicit, provided.   *)
(*                                                                        *)
(**************************************************************************)

(* module Make(Param : sig val name: string end)() = struct *)

module V1 = struct
  include Environment.Make(struct let name = "proto.alpha" end)()

  let __cast (type error) (module X : PACKED_PROTOCOL) =
    (module X : Protocol_sigs.PACKED_PROTOCOL)

end
