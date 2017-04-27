
let earl_str = "http://www.w3.org/ns/earl#";;
let earl = Iri.of_string earl_str ;;
let earl_ s = Iri.of_string (earl_str ^ s);;

let c_Assertion = earl_ "Assertion" ;;
let c_Assertor = earl_ "Assertor" ;;
let c_CannotTell = earl_ "CannotTell" ;;
let c_Fail = earl_ "Fail" ;;
let c_NotApplicable = earl_ "NotApplicable" ;;
let c_NotTested = earl_ "NotTested" ;;
let c_OutcomeValue = earl_ "OutcomeValue" ;;
let c_Pass = earl_ "Pass" ;;
let c_Software = earl_ "Software" ;;
let c_TestCase = earl_ "TestCase" ;;
let c_TestCriterion = earl_ "TestCriterion" ;;
let c_TestMode = earl_ "TestMode" ;;
let c_TestRequirement = earl_ "TestRequirement" ;;
let c_TestResult = earl_ "TestResult" ;;
let c_TestSubject = earl_ "TestSubject" ;;
let assertedBy = earl_ "assertedBy" ;;
let info = earl_ "info" ;;
let mainAssertor = earl_ "mainAssertor" ;;
let mode = earl_ "mode" ;;
let outcome = earl_ "outcome" ;;
let pointer = earl_ "pointer" ;;
let result = earl_ "result" ;;
let subject = earl_ "subject" ;;
let test = earl_ "test" ;;

module Open = struct
  let earl_c_Assertion = c_Assertion
  let earl_c_Assertor = c_Assertor
  let earl_c_CannotTell = c_CannotTell
  let earl_c_Fail = c_Fail
  let earl_c_NotApplicable = c_NotApplicable
  let earl_c_NotTested = c_NotTested
  let earl_c_OutcomeValue = c_OutcomeValue
  let earl_c_Pass = c_Pass
  let earl_c_Software = c_Software
  let earl_c_TestCase = c_TestCase
  let earl_c_TestCriterion = c_TestCriterion
  let earl_c_TestMode = c_TestMode
  let earl_c_TestRequirement = c_TestRequirement
  let earl_c_TestResult = c_TestResult
  let earl_c_TestSubject = c_TestSubject
  let earl_assertedBy = assertedBy
  let earl_info = info
  let earl_mainAssertor = mainAssertor
  let earl_mode = mode
  let earl_outcome = outcome
  let earl_pointer = pointer
  let earl_result = result
  let earl_subject = subject
  let earl_test = test
end

class from ?sub g =
  let sub = match sub with None -> g.Rdf_graph.name() | Some iri -> iri in
  let sub = Rdf_term.Iri sub in
  object(self)
  method assertedBy = g.Rdf_graph.objects_of ~sub ~pred: assertedBy
  method assertedBy_opt = match self#assertedBy with [] -> None | x::_ -> Some x
  method assertedBy_iris = Rdf_graph.only_iris (self#assertedBy)
  method assertedBy_opt_iri = match self#assertedBy_iris with [] -> None | x::_ -> Some x
  method info = Rdf_graph.literal_objects_of g ~sub ~pred: info
  method info_opt = match self#info with [] -> None | x::_ -> Some x
  method mainAssertor = g.Rdf_graph.objects_of ~sub ~pred: mainAssertor
  method mainAssertor_opt = match self#mainAssertor with [] -> None | x::_ -> Some x
  method mainAssertor_iris = Rdf_graph.only_iris (self#mainAssertor)
  method mainAssertor_opt_iri = match self#mainAssertor_iris with [] -> None | x::_ -> Some x
  method mode = g.Rdf_graph.objects_of ~sub ~pred: mode
  method mode_opt = match self#mode with [] -> None | x::_ -> Some x
  method mode_iris = Rdf_graph.only_iris (self#mode)
  method mode_opt_iri = match self#mode_iris with [] -> None | x::_ -> Some x
  method outcome = g.Rdf_graph.objects_of ~sub ~pred: outcome
  method outcome_opt = match self#outcome with [] -> None | x::_ -> Some x
  method outcome_iris = Rdf_graph.only_iris (self#outcome)
  method outcome_opt_iri = match self#outcome_iris with [] -> None | x::_ -> Some x
  method pointer = g.Rdf_graph.objects_of ~sub ~pred: pointer
  method pointer_opt = match self#pointer with [] -> None | x::_ -> Some x
  method pointer_iris = Rdf_graph.only_iris (self#pointer)
  method pointer_opt_iri = match self#pointer_iris with [] -> None | x::_ -> Some x
  method result = g.Rdf_graph.objects_of ~sub ~pred: result
  method result_opt = match self#result with [] -> None | x::_ -> Some x
  method result_iris = Rdf_graph.only_iris (self#result)
  method result_opt_iri = match self#result_iris with [] -> None | x::_ -> Some x
  method subject = g.Rdf_graph.objects_of ~sub ~pred: subject
  method subject_opt = match self#subject with [] -> None | x::_ -> Some x
  method subject_iris = Rdf_graph.only_iris (self#subject)
  method subject_opt_iri = match self#subject_iris with [] -> None | x::_ -> Some x
  method test = g.Rdf_graph.objects_of ~sub ~pred: test
  method test_opt = match self#test with [] -> None | x::_ -> Some x
  method test_iris = Rdf_graph.only_iris (self#test)
  method test_opt_iri = match self#test_iris with [] -> None | x::_ -> Some x
  end
