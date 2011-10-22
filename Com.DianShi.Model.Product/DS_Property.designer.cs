﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:2.0.50727.1891
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Com.DianShi.Model.Product
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[System.Data.Linq.Mapping.DatabaseAttribute(Name="DianShi")]
	public partial class DS_PropertyDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertDS_Property(DS_Property instance);
    partial void UpdateDS_Property(DS_Property instance);
    partial void DeleteDS_Property(DS_Property instance);
    #endregion
		
		public DS_PropertyDataContext() : 
				base(global::Com.DianShi.Model.Product.Properties.Settings.Default.DianShiConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public DS_PropertyDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DS_PropertyDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DS_PropertyDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DS_PropertyDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<DS_Property> DS_Property
		{
			get
			{
				return this.GetTable<DS_Property>();
			}
		}
	}
	
	[Table(Name="dbo.DS_Property")]
	public partial class DS_Property : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _ID;
		
		private int _SysCatID;
		
		private string _ProName;
		
		private byte _ControlType;
		
		private string _Unit;
		
		private byte _MapID;
		
		private bool _Request;
		
		private int _Px;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDChanging(int value);
    partial void OnIDChanged();
    partial void OnSysCatIDChanging(int value);
    partial void OnSysCatIDChanged();
    partial void OnProNameChanging(string value);
    partial void OnProNameChanged();
    partial void OnControlTypeChanging(byte value);
    partial void OnControlTypeChanged();
    partial void OnUnitChanging(string value);
    partial void OnUnitChanged();
    partial void OnMapIDChanging(byte value);
    partial void OnMapIDChanged();
    partial void OnRequestChanging(bool value);
    partial void OnRequestChanged();
    partial void OnPxChanging(int value);
    partial void OnPxChanged();
    #endregion
		
		public DS_Property()
		{
			OnCreated();
		}
		
		[Column(Storage="_ID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true, IsVersion=true)]
		public int ID
		{
			get
			{
				return this._ID;
			}
			set
			{
				if ((this._ID != value))
				{
					this.OnIDChanging(value);
					this.SendPropertyChanging();
					this._ID = value;
					this.SendPropertyChanged("ID");
					this.OnIDChanged();
				}
			}
		}
		
		[Column(Storage="_SysCatID", DbType="Int NOT NULL", UpdateCheck=UpdateCheck.Never)]
		public int SysCatID
		{
			get
			{
				return this._SysCatID;
			}
			set
			{
				if ((this._SysCatID != value))
				{
					this.OnSysCatIDChanging(value);
					this.SendPropertyChanging();
					this._SysCatID = value;
					this.SendPropertyChanged("SysCatID");
					this.OnSysCatIDChanged();
				}
			}
		}
		
		[Column(Storage="_ProName", DbType="NVarChar(30) NOT NULL", CanBeNull=false, UpdateCheck=UpdateCheck.Never)]
		public string ProName
		{
			get
			{
				return this._ProName;
			}
			set
			{
				if ((this._ProName != value))
				{
					this.OnProNameChanging(value);
					this.SendPropertyChanging();
					this._ProName = value;
					this.SendPropertyChanged("ProName");
					this.OnProNameChanged();
				}
			}
		}
		
		[Column(Storage="_ControlType", DbType="TinyInt NOT NULL", UpdateCheck=UpdateCheck.Never)]
		public byte ControlType
		{
			get
			{
				return this._ControlType;
			}
			set
			{
				if ((this._ControlType != value))
				{
					this.OnControlTypeChanging(value);
					this.SendPropertyChanging();
					this._ControlType = value;
					this.SendPropertyChanged("ControlType");
					this.OnControlTypeChanged();
				}
			}
		}
		
		[Column(Storage="_Unit", DbType="NVarChar(50) NOT NULL", CanBeNull=false, UpdateCheck=UpdateCheck.Never)]
		public string Unit
		{
			get
			{
				return this._Unit;
			}
			set
			{
				if ((this._Unit != value))
				{
					this.OnUnitChanging(value);
					this.SendPropertyChanging();
					this._Unit = value;
					this.SendPropertyChanged("Unit");
					this.OnUnitChanged();
				}
			}
		}
		
		[Column(Storage="_MapID", DbType="TinyInt NOT NULL", UpdateCheck=UpdateCheck.Never)]
		public byte MapID
		{
			get
			{
				return this._MapID;
			}
			set
			{
				if ((this._MapID != value))
				{
					this.OnMapIDChanging(value);
					this.SendPropertyChanging();
					this._MapID = value;
					this.SendPropertyChanged("MapID");
					this.OnMapIDChanged();
				}
			}
		}
		
		[Column(Storage="_Request", DbType="Bit NOT NULL", UpdateCheck=UpdateCheck.Never)]
		public bool Request
		{
			get
			{
				return this._Request;
			}
			set
			{
				if ((this._Request != value))
				{
					this.OnRequestChanging(value);
					this.SendPropertyChanging();
					this._Request = value;
					this.SendPropertyChanged("Request");
					this.OnRequestChanged();
				}
			}
		}
		
		[Column(Storage="_Px", DbType="Int NOT NULL", UpdateCheck=UpdateCheck.Never)]
		public int Px
		{
			get
			{
				return this._Px;
			}
			set
			{
				if ((this._Px != value))
				{
					this.OnPxChanging(value);
					this.SendPropertyChanging();
					this._Px = value;
					this.SendPropertyChanged("Px");
					this.OnPxChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
