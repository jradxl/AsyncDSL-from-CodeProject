﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;

namespace DmitriNesteruk.AsyncDsl
{
	/// <summary>
	/// Helper class used to create and initialize toolbox items for this DSL.
	/// </summary>
	/// <remarks>
	/// Double-derived class to allow easier code customization.
	/// </remarks>
	public partial class AsyncDslToolboxHelper : AsyncDslToolboxHelperBase 
	{
		/// <summary>
		/// Constructs a new AsyncDslToolboxHelper.
		/// </summary>
		public AsyncDslToolboxHelper(global::System.IServiceProvider serviceProvider)
			: base(serviceProvider) { }
	}
	
	/// <summary>
	/// Helper class used to create and initialize toolbox items for this DSL.
	/// </summary>
	public abstract class AsyncDslToolboxHelperBase
	{
		/// <summary>
		/// Toolbox item filter string used to identify AsyncDsl toolbox items.  
		/// </summary>
		/// <remarks>
		/// See the MSDN documentation for the ToolboxItemFilterAttribute class for more information on toolbox
		/// item filters.
		/// </remarks>
		public const string ToolboxFilterString = "AsyncDsl.1.0";
		/// <summary>
		/// Toolbox item filter string used to identify FinishToStartConnector connector tool.
		/// </summary>
		public const string FinishToStartConnectorFilterString = "FinishToStartConnector.1.0";
		/// <summary>
		/// Toolbox item filter string used to identify CommentConnection connector tool.
		/// </summary>
		public const string CommentConnectionFilterString = "CommentConnection.1.0";
		/// <summary>
		/// Toolbox item filter string used to identify StartToStartConnector connector tool.
		/// </summary>
		public const string StartToStartConnectorFilterString = "StartToStartConnector.1.0";

		private global::System.IServiceProvider sp;
		
		/// <summary>
		/// Constructs a new AsyncDslToolboxHelperBase.
		/// </summary>
		protected AsyncDslToolboxHelperBase(global::System.IServiceProvider serviceProvider)
		{
			if(serviceProvider == null) throw new global::System.ArgumentNullException("serviceProvider");
			
			this.sp = serviceProvider;
		}
		
		/// <summary>
		/// Serivce provider used to access services from the hosting environment.
		/// </summary>
		protected global::System.IServiceProvider ServiceProvider
		{
			get
			{
				return this.sp;
			}
		}

		/// <summary>
		/// Returns the display name of the tab that should be opened by default when the editor is opened.
		/// </summary>
		public static string DefaultToolboxTabName
		{
			get
			{
				return global::DmitriNesteruk.AsyncDsl.AsyncDslDomainModel.SingletonResourceManager.GetString("AsyncDslToolboxTab", global::System.Globalization.CultureInfo.CurrentUICulture);
			}
		}
		
		
		/// <summary>
		/// Returns the toolbox items count in the default tool box tab.
		/// </summary>
		public static int DefaultToolboxTabToolboxItemsCount
		{
			get
			{
				return 8;
			}
		}
		

		/// <summary>
		/// Returns a list of toolbox items for use with this DSL.
		/// </summary>
		public virtual global::System.Collections.Generic.IList<DslDesign::ModelingToolboxItem> CreateToolboxItems()
		{
			global::System.Collections.Generic.List<DslDesign::ModelingToolboxItem> toolboxItems = new global::System.Collections.Generic.List<DslDesign::ModelingToolboxItem>();
			
			// Create store and load domain models.
			using(DslModeling::Store store = new DslModeling::Store(this.ServiceProvider))
			{
				store.LoadDomainModels(typeof(DslDiagrams::CoreDesignSurfaceDomainModel),
					typeof(global::DmitriNesteruk.AsyncDsl.AsyncDslDomainModel));
				global::System.Resources.ResourceManager resourceManager = global::DmitriNesteruk.AsyncDsl.AsyncDslDomainModel.SingletonResourceManager;
				global::System.Globalization.CultureInfo resourceCulture = global::System.Globalization.CultureInfo.CurrentUICulture;
			
				// Open transaction so we can create model elements corresponding to toolbox items.
				using(DslModeling::Transaction t = store.TransactionManager.BeginTransaction("CreateToolboxItems"))
				{

					// Add Process shape tool.
					toolboxItems.Add(new DslDesign::ModelingToolboxItem(
						"ProcessToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						1, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("ProcessToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("ProcessToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"AsyncDslToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("AsyncDslToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"Process", // F1 help keyword for the toolbox item.
						resourceManager.GetString("ProcessToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::DmitriNesteruk.AsyncDsl.Process.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						}));

					// Add Comment shape tool.
					toolboxItems.Add(new DslDesign::ModelingToolboxItem(
						"CommentToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						2, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("CommentToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("CommentToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"AsyncDslToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("AsyncDslToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"Comment", // F1 help keyword for the toolbox item.
						resourceManager.GetString("CommentToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::DmitriNesteruk.AsyncDsl.Comment.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						}));

					// Add Operation shape tool.
					toolboxItems.Add(new DslDesign::ModelingToolboxItem(
						"OperationToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						3, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("OperationToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("OperationToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"AsyncDslToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("AsyncDslToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"Operation", // F1 help keyword for the toolbox item.
						resourceManager.GetString("OperationToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::DmitriNesteruk.AsyncDsl.Operation.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						}));

					// Add FinishToStartConnector connector tool.
					toolboxItems.Add(new DslDesign::ModelingToolboxItem(
						"FinishToStartConnectorToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						4, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("FinishToStartConnectorToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("FinishToStartConnectorToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.				
						"AsyncDslToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("AsyncDslToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"FinishToStartConnector", // F1 help keyword for the toolbox item.
						resourceManager.GetString("FinishToStartConnectorToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						null, // Connector toolbox items do not have an underlying data object.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require), 
							new global::System.ComponentModel.ToolboxItemFilterAttribute(FinishToStartConnectorFilterString)
						}));

					// Add Start shape tool.
					toolboxItems.Add(new DslDesign::ModelingToolboxItem(
						"StartToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						5, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("StartToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("StartToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"AsyncDslToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("AsyncDslToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"Start", // F1 help keyword for the toolbox item.
						resourceManager.GetString("StartToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::DmitriNesteruk.AsyncDsl.Start.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						}));

					// Add Finish shape tool.
					toolboxItems.Add(new DslDesign::ModelingToolboxItem(
						"FinishToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						6, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("FinishToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("FinishToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"AsyncDslToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("AsyncDslToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"Finish", // F1 help keyword for the toolbox item.
						resourceManager.GetString("FinishToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::DmitriNesteruk.AsyncDsl.Finish.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						}));

					// Add CommentConnection connector tool.
					toolboxItems.Add(new DslDesign::ModelingToolboxItem(
						"CommentConnectionToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						7, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("CommentConnectionToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("CommentConnectionToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.				
						"AsyncDslToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("AsyncDslToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"CommentConnection", // F1 help keyword for the toolbox item.
						resourceManager.GetString("CommentConnectionToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						null, // Connector toolbox items do not have an underlying data object.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require), 
							new global::System.ComponentModel.ToolboxItemFilterAttribute(CommentConnectionFilterString)
						}));

					// Add StartToStartConnector connector tool.
					toolboxItems.Add(new DslDesign::ModelingToolboxItem(
						"StartToStartConnectorToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						8, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("StartToStartConnectorToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("StartToStartConnectorToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.				
						"AsyncDslToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("AsyncDslToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"StartToStartConnector", // F1 help keyword for the toolbox item.
						resourceManager.GetString("StartToStartConnectorToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						null, // Connector toolbox items do not have an underlying data object.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require), 
							new global::System.ComponentModel.ToolboxItemFilterAttribute(StartToStartConnectorFilterString)
						}));

					t.Rollback();
				}
			}

			return toolboxItems;
		}
		
		/// <summary>
		/// Creates an ElementGroupPrototype for the element tool corresponding to the given domain class id.
		/// Default behavior is to create a prototype containing an instance of the domain class.
		/// Derived classes may override this to add additional information to the prototype.
		/// </summary>
		protected virtual DslModeling::ElementGroupPrototype CreateElementToolPrototype(DslModeling::Store store, global::System.Guid domainClassId)
		{
			DslModeling::ModelElement element = store.ElementFactory.CreateElement(domainClassId);
			DslModeling::ElementGroup elementGroup = new DslModeling::ElementGroup(store.DefaultPartition);
			elementGroup.AddGraph(element, true);
			return elementGroup.CreatePrototype();
		}
	}
}
