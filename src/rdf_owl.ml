
let owl_str = "http://www.w3.org/2002/07/owl#";;
let owl = Iri.of_string owl_str ;;
let owl_ s = Iri.of_string (owl_str ^ s);;

let c_AllDifferent = owl_ "AllDifferent" ;;
let c_AllDisjointClasses = owl_ "AllDisjointClasses" ;;
let c_AllDisjointProperties = owl_ "AllDisjointProperties" ;;
let c_Annotation = owl_ "Annotation" ;;
let c_AnnotationProperty = owl_ "AnnotationProperty" ;;
let c_AsymmetricProperty = owl_ "AsymmetricProperty" ;;
let c_Axiom = owl_ "Axiom" ;;
let c_Class = owl_ "Class" ;;
let c_DataRange = owl_ "DataRange" ;;
let c_DatatypeProperty = owl_ "DatatypeProperty" ;;
let c_DeprecatedClass = owl_ "DeprecatedClass" ;;
let c_DeprecatedProperty = owl_ "DeprecatedProperty" ;;
let c_FunctionalProperty = owl_ "FunctionalProperty" ;;
let c_InverseFunctionalProperty = owl_ "InverseFunctionalProperty" ;;
let c_IrreflexiveProperty = owl_ "IrreflexiveProperty" ;;
let c_NamedIndividual = owl_ "NamedIndividual" ;;
let c_NegativePropertyAssertion = owl_ "NegativePropertyAssertion" ;;
let c_Nothing = owl_ "Nothing" ;;
let c_ObjectProperty = owl_ "ObjectProperty" ;;
let c_Ontology = owl_ "Ontology" ;;
let c_OntologyProperty = owl_ "OntologyProperty" ;;
let c_ReflexiveProperty = owl_ "ReflexiveProperty" ;;
let c_Restriction = owl_ "Restriction" ;;
let c_SymmetricProperty = owl_ "SymmetricProperty" ;;
let c_Thing = owl_ "Thing" ;;
let c_TransitiveProperty = owl_ "TransitiveProperty" ;;
let allValuesFrom = owl_ "allValuesFrom" ;;
let annotatedProperty = owl_ "annotatedProperty" ;;
let annotatedSource = owl_ "annotatedSource" ;;
let annotatedTarget = owl_ "annotatedTarget" ;;
let assertionProperty = owl_ "assertionProperty" ;;
let backwardCompatibleWith = owl_ "backwardCompatibleWith" ;;
let bottomDataProperty = owl_ "bottomDataProperty" ;;
let bottomObjectProperty = owl_ "bottomObjectProperty" ;;
let cardinality = owl_ "cardinality" ;;
let complementOf = owl_ "complementOf" ;;
let datatypeComplementOf = owl_ "datatypeComplementOf" ;;
let deprecated = owl_ "deprecated" ;;
let differentFrom = owl_ "differentFrom" ;;
let disjointUnionOf = owl_ "disjointUnionOf" ;;
let disjointWith = owl_ "disjointWith" ;;
let distinctMembers = owl_ "distinctMembers" ;;
let equivalentClass = owl_ "equivalentClass" ;;
let equivalentProperty = owl_ "equivalentProperty" ;;
let hasKey = owl_ "hasKey" ;;
let hasSelf = owl_ "hasSelf" ;;
let hasValue = owl_ "hasValue" ;;
let incompatibleWith = owl_ "incompatibleWith" ;;
let intersectionOf = owl_ "intersectionOf" ;;
let inverseOf = owl_ "inverseOf" ;;
let maxCardinality = owl_ "maxCardinality" ;;
let maxQualifiedCardinality = owl_ "maxQualifiedCardinality" ;;
let members = owl_ "members" ;;
let minCardinality = owl_ "minCardinality" ;;
let minQualifiedCardinality = owl_ "minQualifiedCardinality" ;;
let onClass = owl_ "onClass" ;;
let onDataRange = owl_ "onDataRange" ;;
let onDatatype = owl_ "onDatatype" ;;
let onProperties = owl_ "onProperties" ;;
let onProperty = owl_ "onProperty" ;;
let oneOf = owl_ "oneOf" ;;
let priorVersion = owl_ "priorVersion" ;;
let propertyChainAxiom = owl_ "propertyChainAxiom" ;;
let propertyDisjointWith = owl_ "propertyDisjointWith" ;;
let qualifiedCardinality = owl_ "qualifiedCardinality" ;;
let sameAs = owl_ "sameAs" ;;
let someValuesFrom = owl_ "someValuesFrom" ;;
let sourceIndividual = owl_ "sourceIndividual" ;;
let targetIndividual = owl_ "targetIndividual" ;;
let targetValue = owl_ "targetValue" ;;
let topDataProperty = owl_ "topDataProperty" ;;
let topObjectProperty = owl_ "topObjectProperty" ;;
let unionOf = owl_ "unionOf" ;;
let versionInfo = owl_ "versionInfo" ;;
let withRestrictions = owl_ "withRestrictions" ;;

module Open = struct
  let owl_c_AllDifferent = c_AllDifferent
  let owl_c_AllDisjointClasses = c_AllDisjointClasses
  let owl_c_AllDisjointProperties = c_AllDisjointProperties
  let owl_c_Annotation = c_Annotation
  let owl_c_AnnotationProperty = c_AnnotationProperty
  let owl_c_AsymmetricProperty = c_AsymmetricProperty
  let owl_c_Axiom = c_Axiom
  let owl_c_Class = c_Class
  let owl_c_DataRange = c_DataRange
  let owl_c_DatatypeProperty = c_DatatypeProperty
  let owl_c_DeprecatedClass = c_DeprecatedClass
  let owl_c_DeprecatedProperty = c_DeprecatedProperty
  let owl_c_FunctionalProperty = c_FunctionalProperty
  let owl_c_InverseFunctionalProperty = c_InverseFunctionalProperty
  let owl_c_IrreflexiveProperty = c_IrreflexiveProperty
  let owl_c_NamedIndividual = c_NamedIndividual
  let owl_c_NegativePropertyAssertion = c_NegativePropertyAssertion
  let owl_c_Nothing = c_Nothing
  let owl_c_ObjectProperty = c_ObjectProperty
  let owl_c_Ontology = c_Ontology
  let owl_c_OntologyProperty = c_OntologyProperty
  let owl_c_ReflexiveProperty = c_ReflexiveProperty
  let owl_c_Restriction = c_Restriction
  let owl_c_SymmetricProperty = c_SymmetricProperty
  let owl_c_Thing = c_Thing
  let owl_c_TransitiveProperty = c_TransitiveProperty
  let owl_allValuesFrom = allValuesFrom
  let owl_annotatedProperty = annotatedProperty
  let owl_annotatedSource = annotatedSource
  let owl_annotatedTarget = annotatedTarget
  let owl_assertionProperty = assertionProperty
  let owl_backwardCompatibleWith = backwardCompatibleWith
  let owl_bottomDataProperty = bottomDataProperty
  let owl_bottomObjectProperty = bottomObjectProperty
  let owl_cardinality = cardinality
  let owl_complementOf = complementOf
  let owl_datatypeComplementOf = datatypeComplementOf
  let owl_deprecated = deprecated
  let owl_differentFrom = differentFrom
  let owl_disjointUnionOf = disjointUnionOf
  let owl_disjointWith = disjointWith
  let owl_distinctMembers = distinctMembers
  let owl_equivalentClass = equivalentClass
  let owl_equivalentProperty = equivalentProperty
  let owl_hasKey = hasKey
  let owl_hasSelf = hasSelf
  let owl_hasValue = hasValue
  let owl_incompatibleWith = incompatibleWith
  let owl_intersectionOf = intersectionOf
  let owl_inverseOf = inverseOf
  let owl_maxCardinality = maxCardinality
  let owl_maxQualifiedCardinality = maxQualifiedCardinality
  let owl_members = members
  let owl_minCardinality = minCardinality
  let owl_minQualifiedCardinality = minQualifiedCardinality
  let owl_onClass = onClass
  let owl_onDataRange = onDataRange
  let owl_onDatatype = onDatatype
  let owl_onProperties = onProperties
  let owl_onProperty = onProperty
  let owl_oneOf = oneOf
  let owl_priorVersion = priorVersion
  let owl_propertyChainAxiom = propertyChainAxiom
  let owl_propertyDisjointWith = propertyDisjointWith
  let owl_qualifiedCardinality = qualifiedCardinality
  let owl_sameAs = sameAs
  let owl_someValuesFrom = someValuesFrom
  let owl_sourceIndividual = sourceIndividual
  let owl_targetIndividual = targetIndividual
  let owl_targetValue = targetValue
  let owl_topDataProperty = topDataProperty
  let owl_topObjectProperty = topObjectProperty
  let owl_unionOf = unionOf
  let owl_versionInfo = versionInfo
  let owl_withRestrictions = withRestrictions
end

class from ?sub g =
  let sub = match sub with None -> g.Rdf_graph.name() | Some iri -> iri in
  let sub = Rdf_term.Iri sub in
  object(self)
  method allValuesFrom = g.Rdf_graph.objects_of ~sub ~pred: allValuesFrom
  method allValuesFrom_opt = match self#allValuesFrom with [] -> None | x::_ -> Some x
  method allValuesFrom_iris = Rdf_graph.only_iris (self#allValuesFrom)
  method allValuesFrom_opt_iri = match self#allValuesFrom_iris with [] -> None | x::_ -> Some x
  method annotatedProperty = g.Rdf_graph.objects_of ~sub ~pred: annotatedProperty
  method annotatedProperty_opt = match self#annotatedProperty with [] -> None | x::_ -> Some x
  method annotatedProperty_iris = Rdf_graph.only_iris (self#annotatedProperty)
  method annotatedProperty_opt_iri = match self#annotatedProperty_iris with [] -> None | x::_ -> Some x
  method annotatedSource = g.Rdf_graph.objects_of ~sub ~pred: annotatedSource
  method annotatedSource_opt = match self#annotatedSource with [] -> None | x::_ -> Some x
  method annotatedSource_iris = Rdf_graph.only_iris (self#annotatedSource)
  method annotatedSource_opt_iri = match self#annotatedSource_iris with [] -> None | x::_ -> Some x
  method annotatedTarget = g.Rdf_graph.objects_of ~sub ~pred: annotatedTarget
  method annotatedTarget_opt = match self#annotatedTarget with [] -> None | x::_ -> Some x
  method annotatedTarget_iris = Rdf_graph.only_iris (self#annotatedTarget)
  method annotatedTarget_opt_iri = match self#annotatedTarget_iris with [] -> None | x::_ -> Some x
  method assertionProperty = g.Rdf_graph.objects_of ~sub ~pred: assertionProperty
  method assertionProperty_opt = match self#assertionProperty with [] -> None | x::_ -> Some x
  method assertionProperty_iris = Rdf_graph.only_iris (self#assertionProperty)
  method assertionProperty_opt_iri = match self#assertionProperty_iris with [] -> None | x::_ -> Some x
  method backwardCompatibleWith = g.Rdf_graph.objects_of ~sub ~pred: backwardCompatibleWith
  method backwardCompatibleWith_opt = match self#backwardCompatibleWith with [] -> None | x::_ -> Some x
  method backwardCompatibleWith_iris = Rdf_graph.only_iris (self#backwardCompatibleWith)
  method backwardCompatibleWith_opt_iri = match self#backwardCompatibleWith_iris with [] -> None | x::_ -> Some x
  method bottomDataProperty = Rdf_graph.literal_objects_of g ~sub ~pred: bottomDataProperty
  method bottomDataProperty_opt = match self#bottomDataProperty with [] -> None | x::_ -> Some x
  method bottomObjectProperty = g.Rdf_graph.objects_of ~sub ~pred: bottomObjectProperty
  method bottomObjectProperty_opt = match self#bottomObjectProperty with [] -> None | x::_ -> Some x
  method bottomObjectProperty_iris = Rdf_graph.only_iris (self#bottomObjectProperty)
  method bottomObjectProperty_opt_iri = match self#bottomObjectProperty_iris with [] -> None | x::_ -> Some x
  method cardinality = g.Rdf_graph.objects_of ~sub ~pred: cardinality
  method cardinality_opt = match self#cardinality with [] -> None | x::_ -> Some x
  method cardinality_iris = Rdf_graph.only_iris (self#cardinality)
  method cardinality_opt_iri = match self#cardinality_iris with [] -> None | x::_ -> Some x
  method complementOf = g.Rdf_graph.objects_of ~sub ~pred: complementOf
  method complementOf_opt = match self#complementOf with [] -> None | x::_ -> Some x
  method complementOf_iris = Rdf_graph.only_iris (self#complementOf)
  method complementOf_opt_iri = match self#complementOf_iris with [] -> None | x::_ -> Some x
  method datatypeComplementOf = Rdf_graph.literal_objects_of g ~sub ~pred: datatypeComplementOf
  method datatypeComplementOf_opt = match self#datatypeComplementOf with [] -> None | x::_ -> Some x
  method deprecated = g.Rdf_graph.objects_of ~sub ~pred: deprecated
  method deprecated_opt = match self#deprecated with [] -> None | x::_ -> Some x
  method deprecated_iris = Rdf_graph.only_iris (self#deprecated)
  method deprecated_opt_iri = match self#deprecated_iris with [] -> None | x::_ -> Some x
  method differentFrom = g.Rdf_graph.objects_of ~sub ~pred: differentFrom
  method differentFrom_opt = match self#differentFrom with [] -> None | x::_ -> Some x
  method differentFrom_iris = Rdf_graph.only_iris (self#differentFrom)
  method differentFrom_opt_iri = match self#differentFrom_iris with [] -> None | x::_ -> Some x
  method disjointUnionOf = g.Rdf_graph.objects_of ~sub ~pred: disjointUnionOf
  method disjointUnionOf_opt = match self#disjointUnionOf with [] -> None | x::_ -> Some x
  method disjointUnionOf_iris = Rdf_graph.only_iris (self#disjointUnionOf)
  method disjointUnionOf_opt_iri = match self#disjointUnionOf_iris with [] -> None | x::_ -> Some x
  method disjointWith = g.Rdf_graph.objects_of ~sub ~pred: disjointWith
  method disjointWith_opt = match self#disjointWith with [] -> None | x::_ -> Some x
  method disjointWith_iris = Rdf_graph.only_iris (self#disjointWith)
  method disjointWith_opt_iri = match self#disjointWith_iris with [] -> None | x::_ -> Some x
  method distinctMembers = g.Rdf_graph.objects_of ~sub ~pred: distinctMembers
  method distinctMembers_opt = match self#distinctMembers with [] -> None | x::_ -> Some x
  method distinctMembers_iris = Rdf_graph.only_iris (self#distinctMembers)
  method distinctMembers_opt_iri = match self#distinctMembers_iris with [] -> None | x::_ -> Some x
  method equivalentClass = g.Rdf_graph.objects_of ~sub ~pred: equivalentClass
  method equivalentClass_opt = match self#equivalentClass with [] -> None | x::_ -> Some x
  method equivalentClass_iris = Rdf_graph.only_iris (self#equivalentClass)
  method equivalentClass_opt_iri = match self#equivalentClass_iris with [] -> None | x::_ -> Some x
  method equivalentProperty = g.Rdf_graph.objects_of ~sub ~pred: equivalentProperty
  method equivalentProperty_opt = match self#equivalentProperty with [] -> None | x::_ -> Some x
  method equivalentProperty_iris = Rdf_graph.only_iris (self#equivalentProperty)
  method equivalentProperty_opt_iri = match self#equivalentProperty_iris with [] -> None | x::_ -> Some x
  method hasKey = g.Rdf_graph.objects_of ~sub ~pred: hasKey
  method hasKey_opt = match self#hasKey with [] -> None | x::_ -> Some x
  method hasKey_iris = Rdf_graph.only_iris (self#hasKey)
  method hasKey_opt_iri = match self#hasKey_iris with [] -> None | x::_ -> Some x
  method hasSelf = g.Rdf_graph.objects_of ~sub ~pred: hasSelf
  method hasSelf_opt = match self#hasSelf with [] -> None | x::_ -> Some x
  method hasSelf_iris = Rdf_graph.only_iris (self#hasSelf)
  method hasSelf_opt_iri = match self#hasSelf_iris with [] -> None | x::_ -> Some x
  method hasValue = g.Rdf_graph.objects_of ~sub ~pred: hasValue
  method hasValue_opt = match self#hasValue with [] -> None | x::_ -> Some x
  method hasValue_iris = Rdf_graph.only_iris (self#hasValue)
  method hasValue_opt_iri = match self#hasValue_iris with [] -> None | x::_ -> Some x
  method incompatibleWith = g.Rdf_graph.objects_of ~sub ~pred: incompatibleWith
  method incompatibleWith_opt = match self#incompatibleWith with [] -> None | x::_ -> Some x
  method incompatibleWith_iris = Rdf_graph.only_iris (self#incompatibleWith)
  method incompatibleWith_opt_iri = match self#incompatibleWith_iris with [] -> None | x::_ -> Some x
  method intersectionOf = g.Rdf_graph.objects_of ~sub ~pred: intersectionOf
  method intersectionOf_opt = match self#intersectionOf with [] -> None | x::_ -> Some x
  method intersectionOf_iris = Rdf_graph.only_iris (self#intersectionOf)
  method intersectionOf_opt_iri = match self#intersectionOf_iris with [] -> None | x::_ -> Some x
  method inverseOf = g.Rdf_graph.objects_of ~sub ~pred: inverseOf
  method inverseOf_opt = match self#inverseOf with [] -> None | x::_ -> Some x
  method inverseOf_iris = Rdf_graph.only_iris (self#inverseOf)
  method inverseOf_opt_iri = match self#inverseOf_iris with [] -> None | x::_ -> Some x
  method maxCardinality = g.Rdf_graph.objects_of ~sub ~pred: maxCardinality
  method maxCardinality_opt = match self#maxCardinality with [] -> None | x::_ -> Some x
  method maxCardinality_iris = Rdf_graph.only_iris (self#maxCardinality)
  method maxCardinality_opt_iri = match self#maxCardinality_iris with [] -> None | x::_ -> Some x
  method maxQualifiedCardinality = g.Rdf_graph.objects_of ~sub ~pred: maxQualifiedCardinality
  method maxQualifiedCardinality_opt = match self#maxQualifiedCardinality with [] -> None | x::_ -> Some x
  method maxQualifiedCardinality_iris = Rdf_graph.only_iris (self#maxQualifiedCardinality)
  method maxQualifiedCardinality_opt_iri = match self#maxQualifiedCardinality_iris with [] -> None | x::_ -> Some x
  method members = g.Rdf_graph.objects_of ~sub ~pred: members
  method members_opt = match self#members with [] -> None | x::_ -> Some x
  method members_iris = Rdf_graph.only_iris (self#members)
  method members_opt_iri = match self#members_iris with [] -> None | x::_ -> Some x
  method minCardinality = g.Rdf_graph.objects_of ~sub ~pred: minCardinality
  method minCardinality_opt = match self#minCardinality with [] -> None | x::_ -> Some x
  method minCardinality_iris = Rdf_graph.only_iris (self#minCardinality)
  method minCardinality_opt_iri = match self#minCardinality_iris with [] -> None | x::_ -> Some x
  method minQualifiedCardinality = g.Rdf_graph.objects_of ~sub ~pred: minQualifiedCardinality
  method minQualifiedCardinality_opt = match self#minQualifiedCardinality with [] -> None | x::_ -> Some x
  method minQualifiedCardinality_iris = Rdf_graph.only_iris (self#minQualifiedCardinality)
  method minQualifiedCardinality_opt_iri = match self#minQualifiedCardinality_iris with [] -> None | x::_ -> Some x
  method onClass = g.Rdf_graph.objects_of ~sub ~pred: onClass
  method onClass_opt = match self#onClass with [] -> None | x::_ -> Some x
  method onClass_iris = Rdf_graph.only_iris (self#onClass)
  method onClass_opt_iri = match self#onClass_iris with [] -> None | x::_ -> Some x
  method onDataRange = Rdf_graph.literal_objects_of g ~sub ~pred: onDataRange
  method onDataRange_opt = match self#onDataRange with [] -> None | x::_ -> Some x
  method onDatatype = Rdf_graph.literal_objects_of g ~sub ~pred: onDatatype
  method onDatatype_opt = match self#onDatatype with [] -> None | x::_ -> Some x
  method onProperties = g.Rdf_graph.objects_of ~sub ~pred: onProperties
  method onProperties_opt = match self#onProperties with [] -> None | x::_ -> Some x
  method onProperties_iris = Rdf_graph.only_iris (self#onProperties)
  method onProperties_opt_iri = match self#onProperties_iris with [] -> None | x::_ -> Some x
  method onProperty = g.Rdf_graph.objects_of ~sub ~pred: onProperty
  method onProperty_opt = match self#onProperty with [] -> None | x::_ -> Some x
  method onProperty_iris = Rdf_graph.only_iris (self#onProperty)
  method onProperty_opt_iri = match self#onProperty_iris with [] -> None | x::_ -> Some x
  method oneOf = g.Rdf_graph.objects_of ~sub ~pred: oneOf
  method oneOf_opt = match self#oneOf with [] -> None | x::_ -> Some x
  method oneOf_iris = Rdf_graph.only_iris (self#oneOf)
  method oneOf_opt_iri = match self#oneOf_iris with [] -> None | x::_ -> Some x
  method priorVersion = g.Rdf_graph.objects_of ~sub ~pred: priorVersion
  method priorVersion_opt = match self#priorVersion with [] -> None | x::_ -> Some x
  method priorVersion_iris = Rdf_graph.only_iris (self#priorVersion)
  method priorVersion_opt_iri = match self#priorVersion_iris with [] -> None | x::_ -> Some x
  method propertyChainAxiom = g.Rdf_graph.objects_of ~sub ~pred: propertyChainAxiom
  method propertyChainAxiom_opt = match self#propertyChainAxiom with [] -> None | x::_ -> Some x
  method propertyChainAxiom_iris = Rdf_graph.only_iris (self#propertyChainAxiom)
  method propertyChainAxiom_opt_iri = match self#propertyChainAxiom_iris with [] -> None | x::_ -> Some x
  method propertyDisjointWith = g.Rdf_graph.objects_of ~sub ~pred: propertyDisjointWith
  method propertyDisjointWith_opt = match self#propertyDisjointWith with [] -> None | x::_ -> Some x
  method propertyDisjointWith_iris = Rdf_graph.only_iris (self#propertyDisjointWith)
  method propertyDisjointWith_opt_iri = match self#propertyDisjointWith_iris with [] -> None | x::_ -> Some x
  method qualifiedCardinality = g.Rdf_graph.objects_of ~sub ~pred: qualifiedCardinality
  method qualifiedCardinality_opt = match self#qualifiedCardinality with [] -> None | x::_ -> Some x
  method qualifiedCardinality_iris = Rdf_graph.only_iris (self#qualifiedCardinality)
  method qualifiedCardinality_opt_iri = match self#qualifiedCardinality_iris with [] -> None | x::_ -> Some x
  method sameAs = g.Rdf_graph.objects_of ~sub ~pred: sameAs
  method sameAs_opt = match self#sameAs with [] -> None | x::_ -> Some x
  method sameAs_iris = Rdf_graph.only_iris (self#sameAs)
  method sameAs_opt_iri = match self#sameAs_iris with [] -> None | x::_ -> Some x
  method someValuesFrom = g.Rdf_graph.objects_of ~sub ~pred: someValuesFrom
  method someValuesFrom_opt = match self#someValuesFrom with [] -> None | x::_ -> Some x
  method someValuesFrom_iris = Rdf_graph.only_iris (self#someValuesFrom)
  method someValuesFrom_opt_iri = match self#someValuesFrom_iris with [] -> None | x::_ -> Some x
  method sourceIndividual = g.Rdf_graph.objects_of ~sub ~pred: sourceIndividual
  method sourceIndividual_opt = match self#sourceIndividual with [] -> None | x::_ -> Some x
  method sourceIndividual_iris = Rdf_graph.only_iris (self#sourceIndividual)
  method sourceIndividual_opt_iri = match self#sourceIndividual_iris with [] -> None | x::_ -> Some x
  method targetIndividual = g.Rdf_graph.objects_of ~sub ~pred: targetIndividual
  method targetIndividual_opt = match self#targetIndividual with [] -> None | x::_ -> Some x
  method targetIndividual_iris = Rdf_graph.only_iris (self#targetIndividual)
  method targetIndividual_opt_iri = match self#targetIndividual_iris with [] -> None | x::_ -> Some x
  method targetValue = Rdf_graph.literal_objects_of g ~sub ~pred: targetValue
  method targetValue_opt = match self#targetValue with [] -> None | x::_ -> Some x
  method topDataProperty = Rdf_graph.literal_objects_of g ~sub ~pred: topDataProperty
  method topDataProperty_opt = match self#topDataProperty with [] -> None | x::_ -> Some x
  method topObjectProperty = g.Rdf_graph.objects_of ~sub ~pred: topObjectProperty
  method topObjectProperty_opt = match self#topObjectProperty with [] -> None | x::_ -> Some x
  method topObjectProperty_iris = Rdf_graph.only_iris (self#topObjectProperty)
  method topObjectProperty_opt_iri = match self#topObjectProperty_iris with [] -> None | x::_ -> Some x
  method unionOf = g.Rdf_graph.objects_of ~sub ~pred: unionOf
  method unionOf_opt = match self#unionOf with [] -> None | x::_ -> Some x
  method unionOf_iris = Rdf_graph.only_iris (self#unionOf)
  method unionOf_opt_iri = match self#unionOf_iris with [] -> None | x::_ -> Some x
  method versionInfo = g.Rdf_graph.objects_of ~sub ~pred: versionInfo
  method versionInfo_opt = match self#versionInfo with [] -> None | x::_ -> Some x
  method versionInfo_iris = Rdf_graph.only_iris (self#versionInfo)
  method versionInfo_opt_iri = match self#versionInfo_iris with [] -> None | x::_ -> Some x
  method withRestrictions = g.Rdf_graph.objects_of ~sub ~pred: withRestrictions
  method withRestrictions_opt = match self#withRestrictions with [] -> None | x::_ -> Some x
  method withRestrictions_iris = Rdf_graph.only_iris (self#withRestrictions)
  method withRestrictions_opt_iri = match self#withRestrictions_iris with [] -> None | x::_ -> Some x
  end
