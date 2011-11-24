#tag WindowBegin Window wndArtPreview   BackColor       =   &hFFFFFF   Backdrop        =   ""   CloseButton     =   True   Composite       =   False   Frame           =   1   FullScreen      =   False   HasBackColor    =   False   Height          =   600   ImplicitInstance=   True   LiveResize      =   True   MacProcID       =   0   MaxHeight       =   32000   MaximizeButton  =   False   MaxWidth        =   32000   MenuBar         =   ""   MenuBarVisible  =   True   MinHeight       =   220   MinimizeButton  =   False   MinWidth        =   400   Placement       =   3   Resizeable      =   True   Title           =   "Preview"   Visible         =   True   Width           =   900   Begin ThumbViewer cvsThumbs      AcceptFocus     =   ""      AcceptTabs      =   ""      AutoDeactivate  =   True      Backdrop        =   ""      Columns         =   ""      DoubleBuffer    =   False      Enabled         =   True      EraseBackground =   True      Height          =   548      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Left            =   0      LockBottom      =   True      LockedInPosition=   False      LockLeft        =   True      LockRight       =   True      LockTop         =   True      Rows            =   ""      Scope           =   0      Selection       =   ""      TabIndex        =   0      TabPanelIndex   =   0      TabStop         =   True      ThumbSize       =   128      Top             =   0      UseFocusRing    =   True      Visible         =   True      Width           =   884   End   Begin ScrollBar scrThumbs      AcceptFocus     =   true      AutoDeactivate  =   True      Enabled         =   True      Height          =   548      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Left            =   884      LineStep        =   1      LiveScroll      =   True      LockBottom      =   True      LockedInPosition=   False      LockLeft        =   False      LockRight       =   True      LockTop         =   True      Maximum         =   0      Minimum         =   0      PageStep        =   20      Scope           =   0      TabIndex        =   1      TabPanelIndex   =   0      TabStop         =   True      Top             =   0      Value           =   0      Visible         =   True      Width           =   16   End   Begin PushButton btnDownload      AutoDeactivate  =   True      Bold            =   ""      ButtonStyle     =   0      Cancel          =   ""      Caption         =   "#Localizable.kDownload"      Default         =   ""      Enabled         =   True      Height          =   20      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   780      LockBottom      =   True      LockedInPosition=   False      LockLeft        =   False      LockRight       =   True      LockTop         =   False      Scope           =   0      TabIndex        =   2      TabPanelIndex   =   0      TabStop         =   True      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   560      Underline       =   ""      Visible         =   True      Width           =   100   End   Begin PushButton btnCancel      AutoDeactivate  =   True      Bold            =   ""      ButtonStyle     =   0      Cancel          =   ""      Caption         =   "#localizable.dlgCancel"      Default         =   ""      Enabled         =   True      Height          =   20      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   688      LockBottom      =   True      LockedInPosition=   False      LockLeft        =   False      LockRight       =   True      LockTop         =   False      Scope           =   0      TabIndex        =   3      TabPanelIndex   =   0      TabStop         =   True      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   560      Underline       =   ""      Visible         =   True      Width           =   80   End   Begin Label lblDimensions      AutoDeactivate  =   True      Bold            =   ""      DataField       =   ""      DataSource      =   ""      Enabled         =   True      Height          =   20      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   20      LockBottom      =   True      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   False      Multiline       =   ""      Scope           =   0      Selectable      =   False      TabIndex        =   4      TabPanelIndex   =   0      Text            =   "1000x1000"      TextAlign       =   0      TextColor       =   &h000000      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   560      Transparent     =   False      Underline       =   ""      Visible         =   True      Width           =   80   End   Begin Slider sldThumbSize      AutoDeactivate  =   True      Enabled         =   True      Height          =   20      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Left            =   112      LineStep        =   1      LiveScroll      =   True      LockBottom      =   True      LockedInPosition=   False      LockLeft        =   True      LockRight       =   True      LockTop         =   False      Maximum         =   1000      Minimum         =   32      PageStep        =   32      Scope           =   0      TabIndex        =   5      TabPanelIndex   =   0      TabStop         =   True      TickStyle       =   0      Top             =   560      Value           =   128      Visible         =   True      Width           =   564   End   Begin Separator Sep      AutoDeactivate  =   True      Enabled         =   True      Height          =   1      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Left            =   0      LockBottom      =   True      LockedInPosition=   False      LockLeft        =   True      LockRight       =   True      LockTop         =   False      Scope           =   0      TabIndex        =   6      TabPanelIndex   =   0      TabStop         =   True      Top             =   548      Visible         =   True      Width           =   900   EndEnd#tag EndWindow#tag WindowCode#tag EndWindowCode#tag Events cvsThumbs	#tag Event		Sub Close()		  If cvsThumbs.Selection > -1 then		    		  Else		    // No selection.		  End If		  		  Close		End Sub	#tag EndEvent	#tag Event		Sub ThumbsChanged(ThumbsAmount as Integer)		  Self.Title = Str( ThumbsAmount ) + " " + Localizable.kImages		End Sub	#tag EndEvent	#tag Event		Sub RowsChanged(RowAmount as Integer)		  If Me.Height < ( Me.ThumbSize + 12.5 ) * ( RowAmount + 1 ) then		    scrThumbs.Maximum  = ( ( Me.ThumbSize + 12.5 ) * ( RowAmount + 1 ) ) - Me.Height		  Else		    scrThumbs.Maximum = 0		  End If		  		  scrThumbs.PageStep = ( Me.ThumbSize + 12.5 ) * ( Me.Height / ( Me.ThumbSize + 12.5 ) )		  scrThumbs.LineStep = ( Me.ThumbSize + 12.5 ) / 10		End Sub	#tag EndEvent	#tag Event		Sub SelectionChanged(Sel As Integer)		  If Sel <= cvsThumbs.ThumbDimensions.Ubound And Sel > -1 then		    lblDimensions.Text = cvsThumbs.ThumbDimensions( Sel )		  Else		    lblDimensions.Text = ""		  End If		End Sub	#tag EndEvent	#tag Event		Sub MouseDrag(X as Integer, Y as Integer)		  If Y < Me.Top and scrThumbs.Value > 0 then scrThumbs.Value = scrThumbs.Value - ( Me.ThumbSize / 10 )		  If Y > Me.Top + Me.Height and scrThumbs.Value < scrThumbs.Maximum then scrThumbs.Value = scrThumbs.Value + ( Me.ThumbSize / 10 )		End Sub	#tag EndEvent#tag EndEvents#tag Events scrThumbs	#tag Event		Sub ValueChanged()		  cvsThumbs.ScrollTop = Me.Value		  cvsThumbs.Invalidate False		End Sub	#tag EndEvent#tag EndEvents#tag Events btnCancel	#tag Event		Sub Action()		  Close		End Sub	#tag EndEvent#tag EndEvents#tag Events sldThumbSize	#tag Event		Sub ValueChanged()		  cvsThumbs.ThumbSize = me.Value		  Prefs.integerForKey( "PreviewThumbSize" ) = Me.Value		  cvsThumbs.Invalidate False		End Sub	#tag EndEvent	#tag Event		Sub Open()		  Me.Value = Prefs.integerForKey( "PreviewThumbSize" )		End Sub	#tag EndEvent#tag EndEvents