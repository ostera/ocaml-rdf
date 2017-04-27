
let acl_str = "http://www.w3.org/ns/auth/acl#";;
let acl = Iri.of_string acl_str ;;
let acl_ s = Iri.of_string (acl_str ^ s);;

let c_Access = acl_ "Access" ;;
let c_Append = acl_ "Append" ;;
let c_Authorization = acl_ "Authorization" ;;
let c_Control = acl_ "Control" ;;
let c_Read = acl_ "Read" ;;
let c_Write = acl_ "Write" ;;
let accessControl = acl_ "accessControl" ;;
let accessTo = acl_ "accessTo" ;;
let accessToClass = acl_ "accessToClass" ;;
let agent = acl_ "agent" ;;
let agentClass = acl_ "agentClass" ;;
let agentGroup = acl_ "agentGroup" ;;
let defaultForNew = acl_ "defaultForNew" ;;
let delegates = acl_ "delegates" ;;
let mode = acl_ "mode" ;;
let owner = acl_ "owner" ;;

module Open = struct
  let acl_c_Access = c_Access
  let acl_c_Append = c_Append
  let acl_c_Authorization = c_Authorization
  let acl_c_Control = c_Control
  let acl_c_Read = c_Read
  let acl_c_Write = c_Write
  let acl_accessControl = accessControl
  let acl_accessTo = accessTo
  let acl_accessToClass = accessToClass
  let acl_agent = agent
  let acl_agentClass = agentClass
  let acl_agentGroup = agentGroup
  let acl_defaultForNew = defaultForNew
  let acl_delegates = delegates
  let acl_mode = mode
  let acl_owner = owner
end

class from ?sub g =
  let sub = match sub with None -> Rdf_term.Iri (g.Rdf_graph.name()) | Some t -> t in
  object(self)
  method accessControl = g.Rdf_graph.objects_of ~sub ~pred: accessControl
  method accessControl_opt = match self#accessControl with [] -> None | x::_ -> Some x
  method accessControl_iris = Rdf_graph.only_iris (self#accessControl)
  method accessControl_opt_iri = match self#accessControl_iris with [] -> None | x::_ -> Some x
  method accessTo = g.Rdf_graph.objects_of ~sub ~pred: accessTo
  method accessTo_opt = match self#accessTo with [] -> None | x::_ -> Some x
  method accessTo_iris = Rdf_graph.only_iris (self#accessTo)
  method accessTo_opt_iri = match self#accessTo_iris with [] -> None | x::_ -> Some x
  method accessToClass = g.Rdf_graph.objects_of ~sub ~pred: accessToClass
  method accessToClass_opt = match self#accessToClass with [] -> None | x::_ -> Some x
  method accessToClass_iris = Rdf_graph.only_iris (self#accessToClass)
  method accessToClass_opt_iri = match self#accessToClass_iris with [] -> None | x::_ -> Some x
  method agent = g.Rdf_graph.objects_of ~sub ~pred: agent
  method agent_opt = match self#agent with [] -> None | x::_ -> Some x
  method agent_iris = Rdf_graph.only_iris (self#agent)
  method agent_opt_iri = match self#agent_iris with [] -> None | x::_ -> Some x
  method agentClass = g.Rdf_graph.objects_of ~sub ~pred: agentClass
  method agentClass_opt = match self#agentClass with [] -> None | x::_ -> Some x
  method agentClass_iris = Rdf_graph.only_iris (self#agentClass)
  method agentClass_opt_iri = match self#agentClass_iris with [] -> None | x::_ -> Some x
  method agentGroup = g.Rdf_graph.objects_of ~sub ~pred: agentGroup
  method agentGroup_opt = match self#agentGroup with [] -> None | x::_ -> Some x
  method agentGroup_iris = Rdf_graph.only_iris (self#agentGroup)
  method agentGroup_opt_iri = match self#agentGroup_iris with [] -> None | x::_ -> Some x
  method defaultForNew = g.Rdf_graph.objects_of ~sub ~pred: defaultForNew
  method defaultForNew_opt = match self#defaultForNew with [] -> None | x::_ -> Some x
  method defaultForNew_iris = Rdf_graph.only_iris (self#defaultForNew)
  method defaultForNew_opt_iri = match self#defaultForNew_iris with [] -> None | x::_ -> Some x
  method delegates = g.Rdf_graph.objects_of ~sub ~pred: delegates
  method delegates_opt = match self#delegates with [] -> None | x::_ -> Some x
  method delegates_iris = Rdf_graph.only_iris (self#delegates)
  method delegates_opt_iri = match self#delegates_iris with [] -> None | x::_ -> Some x
  method mode = g.Rdf_graph.objects_of ~sub ~pred: mode
  method mode_opt = match self#mode with [] -> None | x::_ -> Some x
  method mode_iris = Rdf_graph.only_iris (self#mode)
  method mode_opt_iri = match self#mode_iris with [] -> None | x::_ -> Some x
  method owner = g.Rdf_graph.objects_of ~sub ~pred: owner
  method owner_opt = match self#owner with [] -> None | x::_ -> Some x
  method owner_iris = Rdf_graph.only_iris (self#owner)
  method owner_opt_iri = match self#owner_iris with [] -> None | x::_ -> Some x
  end
