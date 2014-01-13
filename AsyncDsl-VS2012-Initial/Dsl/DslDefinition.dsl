<?xml version="1.0" encoding="utf-8"?>
<Dsl dslVersion="1.0.0.0" Id="8d7244d7-79ee-4fa8-80e5-88c5fa0c4bed" Description="Description for DmitriNesteruk.AsyncDsl.AsyncDsl" Name="AsyncDsl" DisplayName="AsyncDsl" Namespace="DmitriNesteruk.AsyncDsl" ProductName="AsyncDsl" CompanyName="DmitriNesteruk" PackageGuid="dbd49cd6-6d2b-4955-bc30-e4b5e7001b28" PackageNamespace="DmitriNesteruk.AsyncDsl" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="e0278eca-cfcc-4b07-ac1a-8fe72b24985d" Description="The root in which all other elements are embedded. Appears as a diagram." Name="ExampleModel" DisplayName="Example Model" Namespace="DmitriNesteruk.AsyncDsl">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Process" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasProcesses.Processes</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Comment" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasComments.Comments</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="95948b91-1ed0-40c1-bf64-e4fa377a80db" Description="Description for DmitriNesteruk.AsyncDsl.Process" Name="Process" DisplayName="Process" Namespace="DmitriNesteruk.AsyncDsl">
      <Properties>
        <DomainProperty Id="281419aa-149c-4f32-b263-03bd6587d336" Description="Description for DmitriNesteruk.AsyncDsl.Process.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="FlowElement" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ProcessHasFlowElements.FlowElements</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="de51e196-736f-4610-b64f-09087876557a" Description="Description for DmitriNesteruk.AsyncDsl.Comment" Name="Comment" DisplayName="Comment" Namespace="DmitriNesteruk.AsyncDsl">
      <Properties>
        <DomainProperty Id="7724a5a8-bbd2-4868-807a-29ce496edb72" Description="Description for DmitriNesteruk.AsyncDsl.Comment.Text" Name="Text" DisplayName="Text">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="5800d883-5c35-4e30-beda-460737baf9ea" Description="Description for DmitriNesteruk.AsyncDsl.FlowElement" Name="FlowElement" DisplayName="Flow Element" InheritanceModifier="Abstract" Namespace="DmitriNesteruk.AsyncDsl" />
    <DomainClass Id="6c3e39b6-398b-43fe-b6e7-66fa26564b6d" Description="Description for DmitriNesteruk.AsyncDsl.Operation" Name="Operation" DisplayName="Operation" Namespace="DmitriNesteruk.AsyncDsl">
      <BaseClass>
        <DomainClassMoniker Name="FlowElement" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="bbe04d49-7901-407c-95af-5a14437c5715" Description="Description for DmitriNesteruk.AsyncDsl.Operation.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="93500539-893a-4929-952f-8c4c566d3e35" Description="Describe the operation - this will be emitted as a comment." Name="Description" DisplayName="Description">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="b8c7f41d-2df8-432d-878b-b90d283b2a4c" Description="Description for DmitriNesteruk.AsyncDsl.Start" Name="Start" DisplayName="Start" Namespace="DmitriNesteruk.AsyncDsl">
      <BaseClass>
        <DomainClassMoniker Name="FlowElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="173b67c5-b4ae-4308-8f86-8a0f210c89e1" Description="Description for DmitriNesteruk.AsyncDsl.Finish" Name="Finish" DisplayName="Finish" Namespace="DmitriNesteruk.AsyncDsl">
      <BaseClass>
        <DomainClassMoniker Name="FlowElement" />
      </BaseClass>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="e7ccee0d-6ebe-4e86-81db-8595e85de029" Description="Description for DmitriNesteruk.AsyncDsl.ExampleModelHasProcesses" Name="ExampleModelHasProcesses" DisplayName="Example Model Has Processes" Namespace="DmitriNesteruk.AsyncDsl" IsEmbedding="true">
      <Source>
        <DomainRole Id="785685f4-7d2b-42b1-aabe-8e6df8eec006" Description="Description for DmitriNesteruk.AsyncDsl.ExampleModelHasProcesses.ExampleModel" Name="ExampleModel" DisplayName="Example Model" PropertyName="Processes" Multiplicity="OneMany" PropertyDisplayName="Processes">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="d124c519-db11-49bb-be22-9aaa8a0c71c4" Description="Description for DmitriNesteruk.AsyncDsl.ExampleModelHasProcesses.Process" Name="Process" DisplayName="Process" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropagatesCopy="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="Process" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="464c5fc9-56e2-427f-b010-9e6c6690f742" Description="Description for DmitriNesteruk.AsyncDsl.ProcessHasFlowElements" Name="ProcessHasFlowElements" DisplayName="Process Has Flow Elements" Namespace="DmitriNesteruk.AsyncDsl" IsEmbedding="true">
      <Source>
        <DomainRole Id="2001baf8-9d86-4f65-bd8c-3ab5894249fc" Description="Description for DmitriNesteruk.AsyncDsl.ProcessHasFlowElements.Process" Name="Process" DisplayName="Process" PropertyName="FlowElements" PropertyDisplayName="Flow Elements">
          <RolePlayer>
            <DomainClassMoniker Name="Process" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="c0aa7afc-09f3-4008-bc2e-00f8a43ee30e" Description="Description for DmitriNesteruk.AsyncDsl.ProcessHasFlowElements.FlowElement" Name="FlowElement" DisplayName="Flow Element" PropertyName="Process" Multiplicity="One" PropagatesDelete="true" PropagatesCopy="true" PropertyDisplayName="Process">
          <RolePlayer>
            <DomainClassMoniker Name="FlowElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="5b3ab30b-6849-4013-95a7-db81e5bcc3ec" Description="Description for DmitriNesteruk.AsyncDsl.OperationReferencesComments" Name="OperationReferencesComments" DisplayName="Operation References Comments" Namespace="DmitriNesteruk.AsyncDsl">
      <Source>
        <DomainRole Id="14a08ff8-7f52-4188-aa49-9d1ca14465fc" Description="Description for DmitriNesteruk.AsyncDsl.OperationReferencesComments.Operation" Name="Operation" DisplayName="Operation" PropertyName="Comments" PropertyDisplayName="Comments">
          <RolePlayer>
            <DomainClassMoniker Name="Operation" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="1476e99e-1513-46fb-adf5-e883a7557454" Description="Description for DmitriNesteruk.AsyncDsl.OperationReferencesComments.Comment" Name="Comment" DisplayName="Comment" PropertyName="Operations" PropertyDisplayName="Operations">
          <RolePlayer>
            <DomainClassMoniker Name="Comment" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="66d57efd-dedb-4dc9-abdc-4726193b29aa" Description="Description for DmitriNesteruk.AsyncDsl.ExampleModelHasComments" Name="ExampleModelHasComments" DisplayName="Example Model Has Comments" Namespace="DmitriNesteruk.AsyncDsl" IsEmbedding="true">
      <Source>
        <DomainRole Id="9254e74c-1d8f-4a40-8f40-21534466ba20" Description="Description for DmitriNesteruk.AsyncDsl.ExampleModelHasComments.ExampleModel" Name="ExampleModel" DisplayName="Example Model" PropertyName="Comments" PropertyDisplayName="Comments">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="d1e6dbc4-72f9-4b11-bc26-00f453571618" Description="Description for DmitriNesteruk.AsyncDsl.ExampleModelHasComments.Comment" Name="Comment" DisplayName="Comment" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropagatesCopy="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="Comment" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="46117c11-4f87-4e96-a2cb-9d4b83433583" Description="Description for DmitriNesteruk.AsyncDsl.FlowElementBlocks" Name="FlowElementBlocks" DisplayName="Flow Element Blocks" Namespace="DmitriNesteruk.AsyncDsl">
      <Source>
        <DomainRole Id="5d5382dd-1956-44a9-8aa8-3f9d39047fde" Description="Description for DmitriNesteruk.AsyncDsl.FlowElementBlocks.SourceFlowElement" Name="SourceFlowElement" DisplayName="Source Flow Element" PropertyName="TargetFlowElements" PropertyDisplayName="Target Flow Elements">
          <RolePlayer>
            <DomainClassMoniker Name="FlowElement" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="e17cbb66-c84c-45cf-a5ba-c23d2caa49c1" Description="Description for DmitriNesteruk.AsyncDsl.FlowElementBlocks.TargetFlowElement" Name="TargetFlowElement" DisplayName="Target Flow Element" PropertyName="SourceFlowElements" PropertyDisplayName="Source Flow Elements">
          <RolePlayer>
            <DomainClassMoniker Name="FlowElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="7b7bfcc1-d71c-4088-a72c-4b336ec3eecb" Description="Description for DmitriNesteruk.AsyncDsl.FlowElementContinuations" Name="FlowElementContinuations" DisplayName="Flow Element Continuations" Namespace="DmitriNesteruk.AsyncDsl">
      <Source>
        <DomainRole Id="1d2a0827-c5d7-45f5-9491-4d7de915f9b8" Description="Description for DmitriNesteruk.AsyncDsl.FlowElementContinuations.SourceFlowElement" Name="SourceFlowElement" DisplayName="Source Flow Element" PropertyName="TargetContinuationFlowElements" PropertyDisplayName="Target Continuation Flow Elements">
          <RolePlayer>
            <DomainClassMoniker Name="FlowElement" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="a29b7688-6083-43bb-ad8e-df8d1f28ea75" Description="Description for DmitriNesteruk.AsyncDsl.FlowElementContinuations.TargetFlowElement" Name="TargetFlowElement" DisplayName="Target Flow Element" PropertyName="SourceContinuationFlowElements" PropertyDisplayName="Source Continuation Flow Elements">
          <RolePlayer>
            <DomainClassMoniker Name="FlowElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
  </Types>
  <Shapes>
    <SwimLane Id="c18ca640-c95b-4d97-8227-ed66175a125b" Description="Description for DmitriNesteruk.AsyncDsl.ThreadSwimLane" Name="ThreadSwimLane" DisplayName="Thread Swim Lane" Namespace="DmitriNesteruk.AsyncDsl" FixedTooltipText="Thread Swim Lane" HeaderFillColor="192, 192, 255" InitialWidth="0" InitialHeight="0">
      <Decorators>
        <SwimLaneHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
          <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
        </SwimLaneHasDecorators>
      </Decorators>
    </SwimLane>
    <GeometryShape Id="fa11954b-1ed2-4a31-b68e-351bf0a1a5e6" Description="Description for DmitriNesteruk.AsyncDsl.CommentShape" Name="CommentShape" DisplayName="Comment Shape" Namespace="DmitriNesteruk.AsyncDsl" FixedTooltipText="Comment Shape" FillColor="255, 255, 192" InitialHeight="1" OutlineDashStyle="Dash" FillGradientMode="Vertical" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="TextDecorator" DisplayName="Text Decorator" DefaultText="TextDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="1f7b64dd-3da8-41dc-bb73-43745ded8107" Description="Description for DmitriNesteruk.AsyncDsl.OperationShape" Name="OperationShape" DisplayName="Operation Shape" Namespace="DmitriNesteruk.AsyncDsl" FixedTooltipText="Operation Shape" FillColor="255, 224, 192" InitialHeight="1" FillGradientMode="Vertical" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <ImageShape Id="5614be73-0d6d-4467-b0af-fbb6484adb00" Description="Description for DmitriNesteruk.AsyncDsl.StartShape" Name="StartShape" DisplayName="Start Shape" Namespace="DmitriNesteruk.AsyncDsl" FixedTooltipText="Start Shape" InitialHeight="1" Image="Resources\Start.emf" />
    <ImageShape Id="63f8424c-7b6b-4194-aa31-546c709a3a72" Description="Description for DmitriNesteruk.AsyncDsl.FinishShape" Name="FinishShape" DisplayName="Finish Shape" Namespace="DmitriNesteruk.AsyncDsl" FixedTooltipText="Finish Shape" InitialHeight="1" Image="Resources\Finish.emf" />
  </Shapes>
  <Connectors>
    <Connector Id="347305d9-10e9-409c-af0a-2a11bd66704f" Description="Description for DmitriNesteruk.AsyncDsl.FinishToStartConnector" Name="FinishToStartConnector" DisplayName="Finish To Start Connector" Namespace="DmitriNesteruk.AsyncDsl" FixedTooltipText="Finish To Start Connector" TargetEndStyle="FilledArrow" RoutingStyle="Straight" />
    <Connector Id="8c62bd9e-f380-4ef2-a2c1-42e79ea6648e" Description="Description for DmitriNesteruk.AsyncDsl.CommentConnector" Name="CommentConnector" DisplayName="Comment Connector" Namespace="DmitriNesteruk.AsyncDsl" FixedTooltipText="Comment Connector" />
    <Connector Id="b8a6b867-c12e-4f1b-b4ab-6d7b45b74b44" Description="Description for DmitriNesteruk.AsyncDsl.StartToStartConnector" Name="StartToStartConnector" DisplayName="Start To Start Connector" Namespace="DmitriNesteruk.AsyncDsl" FixedTooltipText="Start To Start Connector" DashStyle="Dash" TargetEndStyle="FilledArrow" RoutingStyle="Straight" />
  </Connectors>
  <XmlSerializationBehavior Name="AsyncDslSerializationBehavior" Namespace="DmitriNesteruk.AsyncDsl">
    <ClassData>
      <XmlClassData TypeName="ExampleModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelMoniker" ElementName="exampleModel" MonikerTypeName="ExampleModelMoniker">
        <DomainClassMoniker Name="ExampleModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="processes">
            <DomainRelationshipMoniker Name="ExampleModelHasProcesses" />
          </XmlRelationshipData>
          <XmlRelationshipData RoleElementName="comments">
            <DomainRelationshipMoniker Name="ExampleModelHasComments" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="AsyncDslDiagram" MonikerAttributeName="" MonikerElementName="minimalLanguageDiagramMoniker" ElementName="minimalLanguageDiagram" MonikerTypeName="AsyncDslDiagramMoniker">
        <DiagramMoniker Name="AsyncDslDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="ThreadSwimLane" MonikerAttributeName="" MonikerElementName="threadSwimLaneMoniker" ElementName="threadSwimLane" MonikerTypeName="ThreadSwimLaneMoniker">
        <SwimLaneMoniker Name="ThreadSwimLane" />
      </XmlClassData>
      <XmlClassData TypeName="Process" MonikerAttributeName="" SerializeId="true" MonikerElementName="processMoniker" ElementName="process" MonikerTypeName="ProcessMoniker">
        <DomainClassMoniker Name="Process" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Process/Name" />
          </XmlPropertyData>
          <XmlRelationshipData RoleElementName="flowElements">
            <DomainRelationshipMoniker Name="ProcessHasFlowElements" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasProcesses" MonikerAttributeName="" MonikerElementName="exampleModelHasProcessesMoniker" ElementName="exampleModelHasProcesses" MonikerTypeName="ExampleModelHasProcessesMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasProcesses" />
      </XmlClassData>
      <XmlClassData TypeName="Comment" MonikerAttributeName="" SerializeId="true" MonikerElementName="commentMoniker" ElementName="comment" MonikerTypeName="CommentMoniker">
        <DomainClassMoniker Name="Comment" />
        <ElementData>
          <XmlPropertyData XmlName="text">
            <DomainPropertyMoniker Name="Comment/Text" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="CommentShape" MonikerAttributeName="" MonikerElementName="commentShapeMoniker" ElementName="commentShape" MonikerTypeName="CommentShapeMoniker">
        <GeometryShapeMoniker Name="CommentShape" />
      </XmlClassData>
      <XmlClassData TypeName="FlowElement" MonikerAttributeName="" MonikerElementName="flowElementMoniker" ElementName="flowElement" MonikerTypeName="FlowElementMoniker">
        <DomainClassMoniker Name="FlowElement" />
        <ElementData>
          <XmlRelationshipData RoleElementName="targetFlowElements">
            <DomainRelationshipMoniker Name="FlowElementBlocks" />
          </XmlRelationshipData>
          <XmlRelationshipData RoleElementName="targetContinuationFlowElements">
            <DomainRelationshipMoniker Name="FlowElementContinuations" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ProcessHasFlowElements" MonikerAttributeName="" MonikerElementName="processHasFlowElementsMoniker" ElementName="processHasFlowElements" MonikerTypeName="ProcessHasFlowElementsMoniker">
        <DomainRelationshipMoniker Name="ProcessHasFlowElements" />
      </XmlClassData>
      <XmlClassData TypeName="Operation" MonikerAttributeName="" SerializeId="true" MonikerElementName="operationMoniker" ElementName="operation" MonikerTypeName="OperationMoniker">
        <DomainClassMoniker Name="Operation" />
        <ElementData>
          <XmlRelationshipData RoleElementName="comments">
            <DomainRelationshipMoniker Name="OperationReferencesComments" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Operation/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="description">
            <DomainPropertyMoniker Name="Operation/Description" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="OperationShape" MonikerAttributeName="" MonikerElementName="operationShapeMoniker" ElementName="operationShape" MonikerTypeName="OperationShapeMoniker">
        <GeometryShapeMoniker Name="OperationShape" />
      </XmlClassData>
      <XmlClassData TypeName="FinishToStartConnector" MonikerAttributeName="" MonikerElementName="finishToStartConnectorMoniker" ElementName="finishToStartConnector" MonikerTypeName="FinishToStartConnectorMoniker">
        <ConnectorMoniker Name="FinishToStartConnector" />
      </XmlClassData>
      <XmlClassData TypeName="StartShape" MonikerAttributeName="" MonikerElementName="startShapeMoniker" ElementName="startShape" MonikerTypeName="StartShapeMoniker">
        <ImageShapeMoniker Name="StartShape" />
      </XmlClassData>
      <XmlClassData TypeName="Start" MonikerAttributeName="" SerializeId="true" MonikerElementName="startMoniker" ElementName="start" MonikerTypeName="StartMoniker">
        <DomainClassMoniker Name="Start" />
      </XmlClassData>
      <XmlClassData TypeName="FinishShape" MonikerAttributeName="" MonikerElementName="finishShapeMoniker" ElementName="finishShape" MonikerTypeName="FinishShapeMoniker">
        <ImageShapeMoniker Name="FinishShape" />
      </XmlClassData>
      <XmlClassData TypeName="Finish" MonikerAttributeName="" SerializeId="true" MonikerElementName="finishMoniker" ElementName="finish" MonikerTypeName="FinishMoniker">
        <DomainClassMoniker Name="Finish" />
      </XmlClassData>
      <XmlClassData TypeName="CommentConnector" MonikerAttributeName="" MonikerElementName="commentConnectorMoniker" ElementName="commentConnector" MonikerTypeName="CommentConnectorMoniker">
        <ConnectorMoniker Name="CommentConnector" />
      </XmlClassData>
      <XmlClassData TypeName="OperationReferencesComments" MonikerAttributeName="" MonikerElementName="operationReferencesCommentsMoniker" ElementName="operationReferencesComments" MonikerTypeName="OperationReferencesCommentsMoniker">
        <DomainRelationshipMoniker Name="OperationReferencesComments" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasComments" MonikerAttributeName="" MonikerElementName="exampleModelHasCommentsMoniker" ElementName="exampleModelHasComments" MonikerTypeName="ExampleModelHasCommentsMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasComments" />
      </XmlClassData>
      <XmlClassData TypeName="FlowElementBlocks" MonikerAttributeName="" MonikerElementName="flowElementBlocksMoniker" ElementName="flowElementBlocks" MonikerTypeName="FlowElementBlocksMoniker">
        <DomainRelationshipMoniker Name="FlowElementBlocks" />
      </XmlClassData>
      <XmlClassData TypeName="StartToStartConnector" MonikerAttributeName="" MonikerElementName="startToStartConnectorMoniker" ElementName="startToStartConnector" MonikerTypeName="StartToStartConnectorMoniker">
        <ConnectorMoniker Name="StartToStartConnector" />
      </XmlClassData>
      <XmlClassData TypeName="FlowElementContinuations" MonikerAttributeName="" MonikerElementName="flowElementContinuationsMoniker" ElementName="flowElementContinuations" MonikerTypeName="FlowElementContinuationsMoniker">
        <DomainRelationshipMoniker Name="FlowElementContinuations" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="AsyncDslExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="OperationReferencesCommentsBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="OperationReferencesComments" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Operation" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Comment" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="FlowElementBlocksBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FlowElementBlocks" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FlowElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FlowElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="FlowElementContinuationsBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FlowElementContinuations" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FlowElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FlowElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="79453052-ce44-4a83-b1ac-cbb5084926ee" Description="Description for DmitriNesteruk.AsyncDsl.AsyncDslDiagram" Name="AsyncDslDiagram" DisplayName="Minimal Language Diagram" Namespace="DmitriNesteruk.AsyncDsl">
    <Class>
      <DomainClassMoniker Name="ExampleModel" />
    </Class>
    <ShapeMaps>
      <SwimLaneMap>
        <DomainClassMoniker Name="Process" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasProcesses.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ThreadSwimLane/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Process/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <SwimLane>
          <SwimLaneMoniker Name="ThreadSwimLane" />
        </SwimLane>
      </SwimLaneMap>
      <ShapeMap>
        <DomainClassMoniker Name="Operation" />
        <ParentElementPath>
          <DomainPath>ProcessHasFlowElements.Process/!Process</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="OperationShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Operation/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="OperationShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Start" />
        <ParentElementPath>
          <DomainPath>ProcessHasFlowElements.Process/!Process</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="StartShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Finish" />
        <ParentElementPath>
          <DomainPath>ProcessHasFlowElements.Process/!Process</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="FinishShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Comment" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasComments.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <GeometryShapeMoniker Name="CommentShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="CommentConnector" />
        <DomainRelationshipMoniker Name="OperationReferencesComments" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="FinishToStartConnector" />
        <DomainRelationshipMoniker Name="FlowElementBlocks" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="StartToStartConnector" />
        <DomainRelationshipMoniker Name="FlowElementContinuations" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer FileExtension="async" EditorGuid="98738429-9eb7-479f-af23-a3ccccc9086e">
    <RootClass>
      <DomainClassMoniker Name="ExampleModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="AsyncDslSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="AsyncDsl">
      <ElementTool Name="Process" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Process" Tooltip="Creates a swimlane for a thread. All placed tasks will execute within it." HelpKeyword="Process">
        <DomainClassMoniker Name="Process" />
      </ElementTool>
      <ElementTool Name="Comment" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Comment" Tooltip="Comment" HelpKeyword="Comment">
        <DomainClassMoniker Name="Comment" />
      </ElementTool>
      <ElementTool Name="Operation" ToolboxIcon="Resources\Operation.bmp" Caption="Operation" Tooltip="Denotes an asynchronous operation." HelpKeyword="Operation">
        <DomainClassMoniker Name="Operation" />
      </ElementTool>
      <ConnectionTool Name="FinishToStartConnector" ToolboxIcon="Resources\FinishToStartBitmap.bmp" Caption="Finish to Start" Tooltip="Indicates that the source operation must finish before the target one can start." HelpKeyword="FinishToStartConnector">
        <ConnectionBuilderMoniker Name="AsyncDsl/FlowElementBlocksBuilder" />
      </ConnectionTool>
      <ElementTool Name="Start" ToolboxIcon="Resources\Start.bmp" Caption="Start" Tooltip="Indicates the starting point for an asynchronous algorithm." HelpKeyword="Start">
        <DomainClassMoniker Name="Start" />
      </ElementTool>
      <ElementTool Name="Finish" ToolboxIcon="Resources\Finish.bmp" Caption="Finish" Tooltip="Indicates the finish point for the asynchronous algorithm." HelpKeyword="Finish">
        <DomainClassMoniker Name="Finish" />
      </ElementTool>
      <ConnectionTool Name="CommentConnection" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="Comment Connection" Tooltip="Comment Connection" HelpKeyword="CommentConnection">
        <ConnectionBuilderMoniker Name="AsyncDsl/OperationReferencesCommentsBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="StartToStartConnector" ToolboxIcon="Resources\StartToStartBitmap.bmp" Caption="Start To Start" Tooltip="Indicates that the source operation must start for the target operation to start." HelpKeyword="StartToStartConnector">
        <ConnectionBuilderMoniker Name="AsyncDsl/FlowElementContinuationsBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="AsyncDslDiagram" />
  </Designer>
  <Explorer ExplorerGuid="ed7b1112-3d69-4f6b-accc-196fb7235e2e" Title="AsyncDsl Explorer">
    <ExplorerBehaviorMoniker Name="AsyncDsl/AsyncDslExplorer" />
  </Explorer>
</Dsl>