﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.269
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Com.DianShi.Model.ShopConfig
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
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="hds0230549_db")]
	public partial class DS_ShopConfigDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertDS_ShopConfig(DS_ShopConfig instance);
    partial void UpdateDS_ShopConfig(DS_ShopConfig instance);
    partial void DeleteDS_ShopConfig(DS_ShopConfig instance);
    #endregion
		
		public DS_ShopConfigDataContext() : 
				base(global::Com.DianShi.Model.ShopConfig.Properties.Settings.Default.hds0230549_dbConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public DS_ShopConfigDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DS_ShopConfigDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DS_ShopConfigDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DS_ShopConfigDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<DS_ShopConfig> DS_ShopConfig
		{
			get
			{
				return this.GetTable<DS_ShopConfig>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.DS_ShopConfig")]
	public partial class DS_ShopConfig : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _ID;
		
		private int _MemberID;
		
		private System.Nullable<byte> _SignType;
		
		private string _SignImg;
		
		private string _SignBgColor;
		
		private System.Nullable<bool> _ComNameShow;
		
		private string _ComNameCss;
		
		private string _AdSigleImg;
		
		private string _AdSigleTxt;
		
		private string _AdMutiImg1;
		
		private string _AdMutiImg2;
		
		private string _AdMutiImg3;
		
		private string _AdMutiImg4;
		
		private string _AdMutiTxt1;
		
		private string _AdMutiTxt2;
		
		private string _AdMutiTxt3;
		
		private string _AdMutiTxt4;
		
		private System.Nullable<byte> _AdType;
		
		private System.Nullable<bool> _AdShow;
		
		private string _InnerBg;
		
		private string _OuterBg;
		
		private string _MenuBg;
		
		private string _SelectedMenu;
		
		private string _NormalMenu;
		
		private string _NmColor;
		
		private string _SelmColor;
		
		private string _NavBg;
		
		private string _NavBgNormal;
		
		private string _NavBgSel;
		
		private string _NavSelCss;
		
		private string _NavNormalCss;
		
		private string _NavMargin;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDChanging(int value);
    partial void OnIDChanged();
    partial void OnMemberIDChanging(int value);
    partial void OnMemberIDChanged();
    partial void OnSignTypeChanging(System.Nullable<byte> value);
    partial void OnSignTypeChanged();
    partial void OnSignImgChanging(string value);
    partial void OnSignImgChanged();
    partial void OnSignBgColorChanging(string value);
    partial void OnSignBgColorChanged();
    partial void OnComNameShowChanging(System.Nullable<bool> value);
    partial void OnComNameShowChanged();
    partial void OnComNameCssChanging(string value);
    partial void OnComNameCssChanged();
    partial void OnAdSigleImgChanging(string value);
    partial void OnAdSigleImgChanged();
    partial void OnAdSigleTxtChanging(string value);
    partial void OnAdSigleTxtChanged();
    partial void OnAdMutiImg1Changing(string value);
    partial void OnAdMutiImg1Changed();
    partial void OnAdMutiImg2Changing(string value);
    partial void OnAdMutiImg2Changed();
    partial void OnAdMutiImg3Changing(string value);
    partial void OnAdMutiImg3Changed();
    partial void OnAdMutiImg4Changing(string value);
    partial void OnAdMutiImg4Changed();
    partial void OnAdMutiTxt1Changing(string value);
    partial void OnAdMutiTxt1Changed();
    partial void OnAdMutiTxt2Changing(string value);
    partial void OnAdMutiTxt2Changed();
    partial void OnAdMutiTxt3Changing(string value);
    partial void OnAdMutiTxt3Changed();
    partial void OnAdMutiTxt4Changing(string value);
    partial void OnAdMutiTxt4Changed();
    partial void OnAdTypeChanging(System.Nullable<byte> value);
    partial void OnAdTypeChanged();
    partial void OnAdShowChanging(System.Nullable<bool> value);
    partial void OnAdShowChanged();
    partial void OnInnerBgChanging(string value);
    partial void OnInnerBgChanged();
    partial void OnOuterBgChanging(string value);
    partial void OnOuterBgChanged();
    partial void OnMenuBgChanging(string value);
    partial void OnMenuBgChanged();
    partial void OnSelectedMenuChanging(string value);
    partial void OnSelectedMenuChanged();
    partial void OnNormalMenuChanging(string value);
    partial void OnNormalMenuChanged();
    partial void OnNmColorChanging(string value);
    partial void OnNmColorChanged();
    partial void OnSelmColorChanging(string value);
    partial void OnSelmColorChanged();
    partial void OnNavBgChanging(string value);
    partial void OnNavBgChanged();
    partial void OnNavBgNormalChanging(string value);
    partial void OnNavBgNormalChanged();
    partial void OnNavBgSelChanging(string value);
    partial void OnNavBgSelChanged();
    partial void OnNavSelCssChanging(string value);
    partial void OnNavSelCssChanged();
    partial void OnNavNormalCssChanging(string value);
    partial void OnNavNormalCssChanged();
    partial void OnNavMarginChanging(string value);
    partial void OnNavMarginChanged();
    #endregion
		
		public DS_ShopConfig()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true, IsVersion=true)]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MemberID", DbType="Int NOT NULL", UpdateCheck=UpdateCheck.Never)]
		public int MemberID
		{
			get
			{
				return this._MemberID;
			}
			set
			{
				if ((this._MemberID != value))
				{
					this.OnMemberIDChanging(value);
					this.SendPropertyChanging();
					this._MemberID = value;
					this.SendPropertyChanged("MemberID");
					this.OnMemberIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SignType", DbType="TinyInt", UpdateCheck=UpdateCheck.Never)]
		public System.Nullable<byte> SignType
		{
			get
			{
				return this._SignType;
			}
			set
			{
				if ((this._SignType != value))
				{
					this.OnSignTypeChanging(value);
					this.SendPropertyChanging();
					this._SignType = value;
					this.SendPropertyChanged("SignType");
					this.OnSignTypeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SignImg", DbType="NVarChar(350)", UpdateCheck=UpdateCheck.Never)]
		public string SignImg
		{
			get
			{
				return this._SignImg;
			}
			set
			{
				if ((this._SignImg != value))
				{
					this.OnSignImgChanging(value);
					this.SendPropertyChanging();
					this._SignImg = value;
					this.SendPropertyChanged("SignImg");
					this.OnSignImgChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SignBgColor", DbType="NVarChar(50)", UpdateCheck=UpdateCheck.Never)]
		public string SignBgColor
		{
			get
			{
				return this._SignBgColor;
			}
			set
			{
				if ((this._SignBgColor != value))
				{
					this.OnSignBgColorChanging(value);
					this.SendPropertyChanging();
					this._SignBgColor = value;
					this.SendPropertyChanged("SignBgColor");
					this.OnSignBgColorChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ComNameShow", DbType="Bit", UpdateCheck=UpdateCheck.Never)]
		public System.Nullable<bool> ComNameShow
		{
			get
			{
				return this._ComNameShow;
			}
			set
			{
				if ((this._ComNameShow != value))
				{
					this.OnComNameShowChanging(value);
					this.SendPropertyChanging();
					this._ComNameShow = value;
					this.SendPropertyChanged("ComNameShow");
					this.OnComNameShowChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ComNameCss", DbType="NVarChar(250)", UpdateCheck=UpdateCheck.Never)]
		public string ComNameCss
		{
			get
			{
				return this._ComNameCss;
			}
			set
			{
				if ((this._ComNameCss != value))
				{
					this.OnComNameCssChanging(value);
					this.SendPropertyChanging();
					this._ComNameCss = value;
					this.SendPropertyChanged("ComNameCss");
					this.OnComNameCssChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AdSigleImg", DbType="NVarChar(150)", UpdateCheck=UpdateCheck.Never)]
		public string AdSigleImg
		{
			get
			{
				return this._AdSigleImg;
			}
			set
			{
				if ((this._AdSigleImg != value))
				{
					this.OnAdSigleImgChanging(value);
					this.SendPropertyChanging();
					this._AdSigleImg = value;
					this.SendPropertyChanged("AdSigleImg");
					this.OnAdSigleImgChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AdSigleTxt", DbType="NVarChar(500)", UpdateCheck=UpdateCheck.Never)]
		public string AdSigleTxt
		{
			get
			{
				return this._AdSigleTxt;
			}
			set
			{
				if ((this._AdSigleTxt != value))
				{
					this.OnAdSigleTxtChanging(value);
					this.SendPropertyChanging();
					this._AdSigleTxt = value;
					this.SendPropertyChanged("AdSigleTxt");
					this.OnAdSigleTxtChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AdMutiImg1", DbType="NVarChar(150)", UpdateCheck=UpdateCheck.Never)]
		public string AdMutiImg1
		{
			get
			{
				return this._AdMutiImg1;
			}
			set
			{
				if ((this._AdMutiImg1 != value))
				{
					this.OnAdMutiImg1Changing(value);
					this.SendPropertyChanging();
					this._AdMutiImg1 = value;
					this.SendPropertyChanged("AdMutiImg1");
					this.OnAdMutiImg1Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AdMutiImg2", DbType="NVarChar(150)", UpdateCheck=UpdateCheck.Never)]
		public string AdMutiImg2
		{
			get
			{
				return this._AdMutiImg2;
			}
			set
			{
				if ((this._AdMutiImg2 != value))
				{
					this.OnAdMutiImg2Changing(value);
					this.SendPropertyChanging();
					this._AdMutiImg2 = value;
					this.SendPropertyChanged("AdMutiImg2");
					this.OnAdMutiImg2Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AdMutiImg3", DbType="NVarChar(150)", UpdateCheck=UpdateCheck.Never)]
		public string AdMutiImg3
		{
			get
			{
				return this._AdMutiImg3;
			}
			set
			{
				if ((this._AdMutiImg3 != value))
				{
					this.OnAdMutiImg3Changing(value);
					this.SendPropertyChanging();
					this._AdMutiImg3 = value;
					this.SendPropertyChanged("AdMutiImg3");
					this.OnAdMutiImg3Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AdMutiImg4", DbType="NVarChar(150)", UpdateCheck=UpdateCheck.Never)]
		public string AdMutiImg4
		{
			get
			{
				return this._AdMutiImg4;
			}
			set
			{
				if ((this._AdMutiImg4 != value))
				{
					this.OnAdMutiImg4Changing(value);
					this.SendPropertyChanging();
					this._AdMutiImg4 = value;
					this.SendPropertyChanged("AdMutiImg4");
					this.OnAdMutiImg4Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AdMutiTxt1", DbType="NVarChar(500)", UpdateCheck=UpdateCheck.Never)]
		public string AdMutiTxt1
		{
			get
			{
				return this._AdMutiTxt1;
			}
			set
			{
				if ((this._AdMutiTxt1 != value))
				{
					this.OnAdMutiTxt1Changing(value);
					this.SendPropertyChanging();
					this._AdMutiTxt1 = value;
					this.SendPropertyChanged("AdMutiTxt1");
					this.OnAdMutiTxt1Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AdMutiTxt2", DbType="NVarChar(500)", UpdateCheck=UpdateCheck.Never)]
		public string AdMutiTxt2
		{
			get
			{
				return this._AdMutiTxt2;
			}
			set
			{
				if ((this._AdMutiTxt2 != value))
				{
					this.OnAdMutiTxt2Changing(value);
					this.SendPropertyChanging();
					this._AdMutiTxt2 = value;
					this.SendPropertyChanged("AdMutiTxt2");
					this.OnAdMutiTxt2Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AdMutiTxt3", DbType="NVarChar(500)", UpdateCheck=UpdateCheck.Never)]
		public string AdMutiTxt3
		{
			get
			{
				return this._AdMutiTxt3;
			}
			set
			{
				if ((this._AdMutiTxt3 != value))
				{
					this.OnAdMutiTxt3Changing(value);
					this.SendPropertyChanging();
					this._AdMutiTxt3 = value;
					this.SendPropertyChanged("AdMutiTxt3");
					this.OnAdMutiTxt3Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AdMutiTxt4", DbType="NVarChar(500)", UpdateCheck=UpdateCheck.Never)]
		public string AdMutiTxt4
		{
			get
			{
				return this._AdMutiTxt4;
			}
			set
			{
				if ((this._AdMutiTxt4 != value))
				{
					this.OnAdMutiTxt4Changing(value);
					this.SendPropertyChanging();
					this._AdMutiTxt4 = value;
					this.SendPropertyChanged("AdMutiTxt4");
					this.OnAdMutiTxt4Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AdType", DbType="TinyInt", UpdateCheck=UpdateCheck.Never)]
		public System.Nullable<byte> AdType
		{
			get
			{
				return this._AdType;
			}
			set
			{
				if ((this._AdType != value))
				{
					this.OnAdTypeChanging(value);
					this.SendPropertyChanging();
					this._AdType = value;
					this.SendPropertyChanged("AdType");
					this.OnAdTypeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AdShow", DbType="Bit", UpdateCheck=UpdateCheck.Never)]
		public System.Nullable<bool> AdShow
		{
			get
			{
				return this._AdShow;
			}
			set
			{
				if ((this._AdShow != value))
				{
					this.OnAdShowChanging(value);
					this.SendPropertyChanging();
					this._AdShow = value;
					this.SendPropertyChanged("AdShow");
					this.OnAdShowChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_InnerBg", DbType="NVarChar(150)", UpdateCheck=UpdateCheck.Never)]
		public string InnerBg
		{
			get
			{
				return this._InnerBg;
			}
			set
			{
				if ((this._InnerBg != value))
				{
					this.OnInnerBgChanging(value);
					this.SendPropertyChanging();
					this._InnerBg = value;
					this.SendPropertyChanged("InnerBg");
					this.OnInnerBgChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_OuterBg", DbType="NVarChar(150)", UpdateCheck=UpdateCheck.Never)]
		public string OuterBg
		{
			get
			{
				return this._OuterBg;
			}
			set
			{
				if ((this._OuterBg != value))
				{
					this.OnOuterBgChanging(value);
					this.SendPropertyChanging();
					this._OuterBg = value;
					this.SendPropertyChanged("OuterBg");
					this.OnOuterBgChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MenuBg", DbType="NVarChar(150)", UpdateCheck=UpdateCheck.Never)]
		public string MenuBg
		{
			get
			{
				return this._MenuBg;
			}
			set
			{
				if ((this._MenuBg != value))
				{
					this.OnMenuBgChanging(value);
					this.SendPropertyChanging();
					this._MenuBg = value;
					this.SendPropertyChanged("MenuBg");
					this.OnMenuBgChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SelectedMenu", DbType="NVarChar(150)", UpdateCheck=UpdateCheck.Never)]
		public string SelectedMenu
		{
			get
			{
				return this._SelectedMenu;
			}
			set
			{
				if ((this._SelectedMenu != value))
				{
					this.OnSelectedMenuChanging(value);
					this.SendPropertyChanging();
					this._SelectedMenu = value;
					this.SendPropertyChanged("SelectedMenu");
					this.OnSelectedMenuChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NormalMenu", DbType="NVarChar(150)", UpdateCheck=UpdateCheck.Never)]
		public string NormalMenu
		{
			get
			{
				return this._NormalMenu;
			}
			set
			{
				if ((this._NormalMenu != value))
				{
					this.OnNormalMenuChanging(value);
					this.SendPropertyChanging();
					this._NormalMenu = value;
					this.SendPropertyChanged("NormalMenu");
					this.OnNormalMenuChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NmColor", DbType="NVarChar(50)", UpdateCheck=UpdateCheck.Never)]
		public string NmColor
		{
			get
			{
				return this._NmColor;
			}
			set
			{
				if ((this._NmColor != value))
				{
					this.OnNmColorChanging(value);
					this.SendPropertyChanging();
					this._NmColor = value;
					this.SendPropertyChanged("NmColor");
					this.OnNmColorChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SelmColor", DbType="NVarChar(50)", UpdateCheck=UpdateCheck.Never)]
		public string SelmColor
		{
			get
			{
				return this._SelmColor;
			}
			set
			{
				if ((this._SelmColor != value))
				{
					this.OnSelmColorChanging(value);
					this.SendPropertyChanging();
					this._SelmColor = value;
					this.SendPropertyChanged("SelmColor");
					this.OnSelmColorChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NavBg", DbType="NVarChar(150)", UpdateCheck=UpdateCheck.Never)]
		public string NavBg
		{
			get
			{
				return this._NavBg;
			}
			set
			{
				if ((this._NavBg != value))
				{
					this.OnNavBgChanging(value);
					this.SendPropertyChanging();
					this._NavBg = value;
					this.SendPropertyChanged("NavBg");
					this.OnNavBgChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NavBgNormal", DbType="NVarChar(150)", UpdateCheck=UpdateCheck.Never)]
		public string NavBgNormal
		{
			get
			{
				return this._NavBgNormal;
			}
			set
			{
				if ((this._NavBgNormal != value))
				{
					this.OnNavBgNormalChanging(value);
					this.SendPropertyChanging();
					this._NavBgNormal = value;
					this.SendPropertyChanged("NavBgNormal");
					this.OnNavBgNormalChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NavBgSel", DbType="NVarChar(150)", UpdateCheck=UpdateCheck.Never)]
		public string NavBgSel
		{
			get
			{
				return this._NavBgSel;
			}
			set
			{
				if ((this._NavBgSel != value))
				{
					this.OnNavBgSelChanging(value);
					this.SendPropertyChanging();
					this._NavBgSel = value;
					this.SendPropertyChanged("NavBgSel");
					this.OnNavBgSelChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NavSelCss", DbType="NVarChar(150)", UpdateCheck=UpdateCheck.Never)]
		public string NavSelCss
		{
			get
			{
				return this._NavSelCss;
			}
			set
			{
				if ((this._NavSelCss != value))
				{
					this.OnNavSelCssChanging(value);
					this.SendPropertyChanging();
					this._NavSelCss = value;
					this.SendPropertyChanged("NavSelCss");
					this.OnNavSelCssChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NavNormalCss", DbType="NVarChar(150)", UpdateCheck=UpdateCheck.Never)]
		public string NavNormalCss
		{
			get
			{
				return this._NavNormalCss;
			}
			set
			{
				if ((this._NavNormalCss != value))
				{
					this.OnNavNormalCssChanging(value);
					this.SendPropertyChanging();
					this._NavNormalCss = value;
					this.SendPropertyChanged("NavNormalCss");
					this.OnNavNormalCssChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NavMargin", DbType="NVarChar(10)", UpdateCheck=UpdateCheck.Never)]
		public string NavMargin
		{
			get
			{
				return this._NavMargin;
			}
			set
			{
				if ((this._NavMargin != value))
				{
					this.OnNavMarginChanging(value);
					this.SendPropertyChanging();
					this._NavMargin = value;
					this.SendPropertyChanged("NavMargin");
					this.OnNavMarginChanged();
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
