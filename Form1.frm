VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "工厂信息校验工具"
   ClientHeight    =   6510
   ClientLeft      =   45
   ClientTop       =   735
   ClientWidth     =   14730
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6510
   ScaleWidth      =   14730
   StartUpPosition =   2  'CenterScreen
   Begin MSWinsockLib.Winsock tcpClient 
      Left            =   10440
      Top             =   240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.TextBox TxtReceive 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6255
      Left            =   11040
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   21
      Top             =   120
      Width           =   3585
   End
   Begin VB.Timer Timer1 
      Left            =   9960
      Top             =   240
   End
   Begin VB.Frame Frame3 
      Caption         =   "条码"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   850
      Left            =   3840
      TabIndex        =   18
      Top             =   5520
      Width           =   7095
      Begin VB.TextBox txtInput 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Left            =   120
         TabIndex        =   0
         Text            =   "123456789"
         Top             =   240
         Width           =   6850
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "测试结果"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   850
      Left            =   120
      TabIndex        =   17
      Top             =   5520
      Width           =   3615
      Begin VB.Label lbResult 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Checking"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   450
         Left            =   120
         TabIndex        =   20
         Top             =   240
         Width           =   3350
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "TV 信息"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4450
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   10820
      Begin VB.Label lbTVInfo 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "None"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   345
         Index           =   14
         Left            =   7180
         TabIndex        =   36
         Top             =   3940
         Width           =   3500
      End
      Begin VB.Label lbTVInfo 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "None"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   345
         Index           =   13
         Left            =   3650
         TabIndex        =   35
         Top             =   3940
         Width           =   3500
      End
      Begin VB.Label lbTVInfo 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "None"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   345
         Index           =   12
         Left            =   120
         TabIndex        =   34
         Top             =   3940
         Width           =   3500
      End
      Begin VB.Label lbTVInfo 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "None"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   350
         Index           =   11
         Left            =   7180
         TabIndex        =   33
         Top             =   3120
         Width           =   3500
      End
      Begin VB.Label lbTVInfo 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "None"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   350
         Index           =   10
         Left            =   3650
         TabIndex        =   32
         Top             =   3120
         Width           =   3500
      End
      Begin VB.Label lbTVInfo 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "None"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   350
         Index           =   9
         Left            =   120
         TabIndex        =   31
         Top             =   3120
         Width           =   3500
      End
      Begin VB.Label lbTVInfo 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "None"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   350
         Index           =   8
         Left            =   7180
         TabIndex        =   30
         Top             =   2300
         Width           =   3500
      End
      Begin VB.Label lbTVInfo 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "None"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   350
         Index           =   7
         Left            =   3650
         TabIndex        =   29
         Top             =   2300
         Width           =   3500
      End
      Begin VB.Label lbTVInfo 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "None"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   350
         Index           =   6
         Left            =   120
         TabIndex        =   28
         Top             =   2300
         Width           =   3500
      End
      Begin VB.Label lbTVInfo 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "None"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   350
         Index           =   5
         Left            =   7180
         TabIndex        =   27
         Top             =   1480
         Width           =   3500
      End
      Begin VB.Label lbTVInfo 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "None"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   350
         Index           =   4
         Left            =   3650
         TabIndex        =   26
         Top             =   1480
         Width           =   3500
      End
      Begin VB.Label lbTVInfo 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "None"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   350
         Index           =   3
         Left            =   120
         TabIndex        =   25
         Top             =   1480
         Width           =   3500
      End
      Begin VB.Label lbTVInfo 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "None"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   350
         Index           =   2
         Left            =   7180
         TabIndex        =   24
         Top             =   660
         Width           =   3500
      End
      Begin VB.Label lbTVInfo 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "None"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   350
         Index           =   1
         Left            =   3650
         TabIndex        =   23
         Top             =   660
         Width           =   3500
      End
      Begin VB.Label lbTVInfo 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "None"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   350
         Index           =   0
         Left            =   120
         TabIndex        =   22
         Top             =   660
         Width           =   3500
      End
      Begin VB.Label lbTitle 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Device Key"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   410
         Index           =   14
         Left            =   7180
         TabIndex        =   16
         Top             =   3520
         Width           =   3500
      End
      Begin VB.Label lbTitle 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "MAC 地址"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   410
         Index           =   11
         Left            =   7180
         TabIndex        =   15
         Top             =   2700
         Width           =   3500
      End
      Begin VB.Label lbTitle 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "HDCP Key"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   410
         Index           =   9
         Left            =   120
         TabIndex        =   14
         Top             =   2700
         Width           =   3500
      End
      Begin VB.Label lbTitle 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "4K/2K"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   410
         Index           =   10
         Left            =   3650
         TabIndex        =   13
         Top             =   2700
         Width           =   3500
      End
      Begin VB.Label lbTitle 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "区域"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   410
         Index           =   13
         Left            =   3650
         TabIndex        =   12
         Top             =   3520
         Width           =   3500
      End
      Begin VB.Label lbTitle 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "播控平台"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   410
         Index           =   8
         Left            =   7180
         TabIndex        =   11
         Top             =   1880
         Width           =   3500
      End
      Begin VB.Label lbTitle 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "2.4G 版本"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   410
         Index           =   6
         Left            =   120
         TabIndex        =   10
         Top             =   1880
         Width           =   3500
      End
      Begin VB.Label lbTitle 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "屏型号"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   410
         Index           =   7
         Left            =   3650
         TabIndex        =   9
         Top             =   1880
         Width           =   3500
      End
      Begin VB.Label lbTitle 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "分区版本"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   410
         Index           =   12
         Left            =   120
         TabIndex        =   8
         Top             =   3520
         Width           =   3500
      End
      Begin VB.Label lbTitle 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "渠道"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   410
         Index           =   5
         Left            =   7180
         TabIndex        =   7
         Top             =   1060
         Width           =   3500
      End
      Begin VB.Label lbTitle 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "硬件版本"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   410
         Index           =   3
         Left            =   120
         TabIndex        =   6
         Top             =   1060
         Width           =   3500
      End
      Begin VB.Label lbTitle 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "2D/3D"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   410
         Index           =   4
         Left            =   3650
         TabIndex        =   5
         Top             =   1060
         Width           =   3500
      End
      Begin VB.Label lbTitle 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Flash 信息"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   405
         Index           =   2
         Left            =   7180
         TabIndex        =   4
         Top             =   240
         Width           =   3500
      End
      Begin VB.Label lbTitle 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "系统版本"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   410
         Index           =   1
         Left            =   3650
         TabIndex        =   3
         Top             =   240
         Width           =   3500
      End
      Begin VB.Label lbTitle 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "机型"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   410
         Index           =   0
         Left            =   120
         TabIndex        =   2
         Top             =   240
         Width           =   3500
      End
   End
   Begin MSCommLib.MSComm MSComm1 
      Left            =   9360
      Top             =   120
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   240
      TabIndex        =   19
      Top             =   120
      Width           =   4575
   End
   Begin VB.Menu vbSet 
      Caption         =   "设置"
      Begin VB.Menu tbSetComPort 
         Caption         =   "设置串口"
      End
      Begin VB.Menu vbSetSPEC 
         Caption         =   "设置数据规格"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim RES As Long
Dim Result As Boolean
Dim StepTime As Long
Dim IsAllDataMatch As Boolean

Private Sub Form_Load()
    i = 0
    'SetTVCurrentComBaud = 115200

    StepTime = IsStepTime
    If StepTime < 500 Then
        StepTime = 500
    End If

    IsStop = False
    
    If isUartMode Then
        tbSetComPort.Enabled = True
        subInitComPort
    Else
        tbSetComPort.Enabled = False
        subInitNetwork
    End If
    
    subInitInterface

    Label1 = strCurrentModelName
End Sub

Private Sub Form_Unload(Cancel As Integer)

On Error GoTo ErrExit
  
    If MSComm1.PortOpen = True Then
        MSComm1.PortOpen = False
    End If
  
    End
Exit Sub

ErrExit:
        MsgBox Err.Description, vbCritical, Err.Source
End Sub


Private Sub subInitInterface()
    txtInput.Text = ""
    txtInput.Locked = False
    isCmdDataRecv = False
    
    'Whether the CheckBox of database file(*.mdb) selected or not.
    'If not, config the TextBox
    If Not IsModelSelected Then
        lbTVInfo(0).Caption = strChkBoxUnselected
        lbTVInfo(0).BackColor = &HE0E0E0
    End If
    If Not IsSysVerSelected Then
        lbTVInfo(1).Caption = strChkBoxUnselected
        lbTVInfo(1).BackColor = &HE0E0E0
    End If
    If Not IsFlashInfoSelected Then
        lbTVInfo(2).Caption = strChkBoxUnselected
        lbTVInfo(2).BackColor = &HE0E0E0
    End If
    If Not IsHardwareVerSelected Then
        lbTVInfo(3).Caption = strChkBoxUnselected
        lbTVInfo(3).BackColor = &HE0E0E0
    End If
    If Not IsDimensionSelected Then
        lbTVInfo(4).Caption = strChkBoxUnselected
        lbTVInfo(4).BackColor = &HE0E0E0
    End If
    If Not IsChannelSelected Then
        lbTVInfo(5).Caption = strChkBoxUnselected
        lbTVInfo(5).BackColor = &HE0E0E0
    End If
    If Not Is24GVerSelected Then
        lbTVInfo(6).Caption = strChkBoxUnselected
        lbTVInfo(6).BackColor = &HE0E0E0
    End If
    If Not IsPanelSelected Then
        lbTVInfo(7).Caption = strChkBoxUnselected
        lbTVInfo(7).BackColor = &HE0E0E0
    End If
    If Not IsCarrierSelected Then
        lbTVInfo(8).Caption = strChkBoxUnselected
        lbTVInfo(8).BackColor = &HE0E0E0
    End If
    If Not IsHDCPSelected Then
        lbTVInfo(9).Caption = strChkBoxUnselected
        lbTVInfo(9).BackColor = &HE0E0E0
    End If
    If Not IsResolutionSelected Then
        lbTVInfo(10).Caption = strChkBoxUnselected
        lbTVInfo(10).BackColor = &HE0E0E0
    End If
    If Not IsMACAddrSelected Then
        lbTVInfo(11).Caption = strChkBoxUnselected
        lbTVInfo(11).BackColor = &HE0E0E0
    End If
    If Not IsPartitionVerSelected Then
        lbTVInfo(12).Caption = strChkBoxUnselected
        lbTVInfo(12).BackColor = &HE0E0E0
    End If
    If Not IsAreaVerSelected Then
        lbTVInfo(13).Caption = strChkBoxUnselected
        lbTVInfo(13).BackColor = &HE0E0E0
    End If
    If Not IsDeviceKeySelected Then
        lbTVInfo(14).Caption = strChkBoxUnselected
        lbTVInfo(14).BackColor = &HE0E0E0
    End If
End Sub

Private Sub subInitComPort()
    sqlstring = "select * from CommonTable where Mark='ATS'"
    Executesql (sqlstring)

    If rs.EOF = False Then
        SetTVCurrentComID = rs("ComID")
    Else
        MsgBox "Read Data Error,Please Check Your Database!", vbOKOnly + vbInformation, "Warning!"
    End
    End If

    Set cn = Nothing
    Set rs = Nothing
    sqlstring = ""

    ComInit

End Sub

Private Sub subInitNetwork()
    isNetworkConnected = False
    With tcpClient
        .Protocol = sckTCPProtocol
        ' IMPORTANT: be sure to change the RemoteHost
        ' value to the name of your computer.
        .RemoteHost = strRemoteHost
        .RemotePort = lngRemotePort
    End With
End Sub

Private Function funSNWrite() As Boolean
    strSerialNo = ""
    scanbarcode = ""
    strSerialNo = UCase$(txtInput.Text)
    
    If subJudgeTheSNIsAvailable = True Then
        funSNWrite = True
        scanbarcode = strSerialNo
    Else
        funSNWrite = False
    End If
End Function

Private Sub subInitBeforeRunning()
    IsSNWriteSuccess = True
    IsAllDataMatch = True
    txtInput.Locked = True
    isCmdDataRecv = False
    strSerialNo = ""
    
    If IsModelSelected Then
        lbTVInfo(0).Caption = strNoRecvData
        lbTVInfo(0).BackColor = &HFFFFFF
    End If
    If IsSysVerSelected Then
        lbTVInfo(1).Caption = strNoRecvData
        lbTVInfo(1).BackColor = &HFFFFFF
    End If
    If IsFlashInfoSelected Then
        lbTVInfo(2).Caption = strNoRecvData
        lbTVInfo(2).BackColor = &HFFFFFF
    End If
    If IsHardwareVerSelected Then
        lbTVInfo(3).Caption = strNoRecvData
        lbTVInfo(3).BackColor = &HFFFFFF
    End If
    If IsDimensionSelected Then
        lbTVInfo(4).Caption = strNoRecvData
        lbTVInfo(4).BackColor = &HFFFFFF
    End If
    If IsChannelSelected Then
        lbTVInfo(5).Caption = strNoRecvData
        lbTVInfo(5).BackColor = &HFFFFFF
    End If
    If Is24GVerSelected Then
        lbTVInfo(6).Caption = strNoRecvData
        lbTVInfo(6).BackColor = &HFFFFFF
    End If
    If IsPanelSelected Then
        lbTVInfo(7).Caption = strNoRecvData
        lbTVInfo(7).BackColor = &HFFFFFF
    End If
    If IsCarrierSelected Then
        lbTVInfo(8).Caption = strNoRecvData
        lbTVInfo(8).BackColor = &HFFFFFF
    End If
    If IsHDCPSelected Then
        lbTVInfo(9).Caption = strNoRecvData
        lbTVInfo(9).BackColor = &HFFFFFF
    End If
    If IsResolutionSelected Then
        lbTVInfo(10).Caption = strNoRecvData
        lbTVInfo(10).BackColor = &HFFFFFF
    End If
    If IsMACAddrSelected Then
        lbTVInfo(11).Caption = strNoRecvData
        lbTVInfo(11).BackColor = &HFFFFFF
    End If
    If IsPartitionVerSelected Then
        lbTVInfo(12).Caption = strNoRecvData
        lbTVInfo(12).BackColor = &HFFFFFF
    End If
    If IsAreaVerSelected Then
        lbTVInfo(13).Caption = strNoRecvData
        lbTVInfo(13).BackColor = &HFFFFFF
    End If
    If IsDeviceKeySelected Then
        lbTVInfo(14).Caption = strNoRecvData
        lbTVInfo(14).BackColor = &HFFFFFF
    End If
    
    lbResult.Caption = "Checking"
    lbResult.BackColor = &HFFFFFF
    Log_Clear
    TxtReceive.ForeColor = &H80000008
    'lbResult.FontSize = 22
    
End Sub

Private Function subJudgeTheSNIsAvailable() As Boolean
    If strSerialNo = "" Or Len(strSerialNo) <> barcodeLen Then
        Log_Clear
        Log_Info "Please confirm the SN again?"
        txtInput.Text = ""
        txtInput.SetFocus
        subJudgeTheSNIsAvailable = False
    Else
        subJudgeTheSNIsAvailable = True
        Set cn = Nothing
        Set rs = Nothing
        sqlstring = ""
    End If
End Function

Private Sub subInitAfterRunning()
    IsSNWriteSuccess = False
    txtInput.Locked = False
    txtInput.Text = ""
    txtInput.SetFocus
    
    isNetworkConnected = False
    tcpClient.Close
End Sub

Private Sub subMainProcesser()
    Dim i, j As Integer

On Error GoTo ErrExit
    subInitBeforeRunning
    If IsStop = True Then
        Exit Sub
    End If

    If IsSNWriteSuccess = funSNWrite Then
        If IsStop = True Then
            Exit Sub
        End If
        txtInput = scanbarcode
    Else
        'ShowError_Sys (6)
        GoTo FAIL
    End If

On Error GoTo ErrExit
    j = 0

RESEND_CMD_0:
    ClearComBuf
    'Send cmd, read data and save data
    'Enter factory mode fisrt, or other cmd may not respond.
    ENTER_FAC_MODE
    DelayMS StepTime
    Call DelaySWithCmdFlag(cmdReceiveWaitS, isCmdDataRecv)
        
    If isCmdDataRecv = False Then
        If j > cmdResendTimes Then
            j = 0
            Log_Info "Cannot read enter factory. Please do the Letv Reset!!!"
            MsgBox "Please do the Letv Reset!"
            GoTo FAIL
        Else
            j = j + 1
            Log_Info "Resend cmd ENTER_FAC_MODE!!!"
            GoTo RESEND_CMD_0
        End If
    Else
        j = 0
        GoTo RESEND_CMD_1
    End If
    
RESEND_CMD_1:
    If IsModelSelected Then
        ClearComBuf
        READ_MODEL_NAME
        DelayMS StepTime
        Call DelaySWithCmdFlag(cmdReceiveWaitS, isCmdDataRecv)
        
        If isCmdDataRecv = False Then
            If j > cmdResendTimes Then
                j = 0
                Log_Info "Cannot read the modeal name!!!"
                GoTo RESEND_CMD_2
            Else
                j = j + 1
                Log_Info "Resend cmd READ_MODEL_NAME!!!"
                GoTo RESEND_CMD_1
            End If
        Else
            j = 0
            GoTo RESEND_CMD_2
        End If
    End If
    
RESEND_CMD_2:
    If IsSysVerSelected Then
        ClearComBuf
        READ_SYS_VERSION
        DelayMS StepTime
        Call DelaySWithCmdFlag(cmdReceiveWaitS, isCmdDataRecv)
        
        If isCmdDataRecv = False Then
            If j > cmdResendTimes Then
                j = 0
                Log_Info "Cannot read the system version!!!"
                GoTo RESEND_CMD_3
            Else
                j = j + 1
                Log_Info "Resend cmd READ_SYS_VERSION!!!"
                GoTo RESEND_CMD_2
            End If
        Else
            j = 0
            GoTo RESEND_CMD_3
        End If
    End If
    
RESEND_CMD_3:
    If IsFlashInfoSelected Then
        ClearComBuf
        READ_FLASH_INFO
        DelayMS StepTime
        Call DelaySWithCmdFlag(cmdReceiveWaitS, isCmdDataRecv)
        
        If isCmdDataRecv = False Then
            If j > cmdResendTimes Then
                j = 0
                Log_Info "Cannot read the Flash info!!!"
                GoTo RESEND_CMD_4
            Else
                j = j + 1
                Log_Info "Resend cmd READ_FLASH_INFO!!!"
                GoTo RESEND_CMD_3
            End If
        Else
            j = 0
            GoTo RESEND_CMD_4
        End If
    End If
    
RESEND_CMD_4:
    If IsHardwareVerSelected Then
        ClearComBuf
        READ_HARDWARE_VERSION
        DelayMS StepTime
        Call DelaySWithCmdFlag(cmdReceiveWaitS, isCmdDataRecv)
        
        If isCmdDataRecv = False Then
            If j > cmdResendTimes Then
                j = 0
                Log_Info "Cannot read the hardware version!!!"
                GoTo RESEND_CMD_5
            Else
                j = j + 1
                Log_Info "Resend cmd READ_HARDWARE_VERSION!!!"
                GoTo RESEND_CMD_4
            End If
        Else
            j = 0
            GoTo RESEND_CMD_5
        End If
    End If
    
RESEND_CMD_5:
    If IsDimensionSelected Then
        ClearComBuf
        READ_DIMENSION_INFO
        DelayMS StepTime
        Call DelaySWithCmdFlag(cmdReceiveWaitS, isCmdDataRecv)
        
        If isCmdDataRecv = False Then
            If j > cmdResendTimes Then
                j = 0
                Log_Info "Cannot read the dimension info!!!"
                GoTo RESEND_CMD_6
            Else
                j = j + 1
                Log_Info "Resend cmd READ_DIMENSION_INFO!!!"
                GoTo RESEND_CMD_5
            End If
        Else
            j = 0
            GoTo RESEND_CMD_6
        End If
    End If
    
RESEND_CMD_6:
    If IsChannelSelected Then
        ClearComBuf
        READ_CHANNEL_INFO
        DelayMS StepTime
        Call DelaySWithCmdFlag(cmdReceiveWaitS, isCmdDataRecv)
        
        If isCmdDataRecv = False Then
            If j > cmdResendTimes Then
                j = 0
                Log_Info "Cannot read the channel info!!!"
                GoTo RESEND_CMD_7
            Else
                j = j + 1
                Log_Info "Resend cmd READ_CHANNEL_INFO!!!"
                GoTo RESEND_CMD_6
            End If
        Else
            j = 0
            GoTo RESEND_CMD_7
        End If
    End If
    
RESEND_CMD_7:
    If Is24GVerSelected Then
        ClearComBuf
        READ_24G_VERSION
        DelayMS StepTime
        Call DelaySWithCmdFlag(cmdReceiveWaitS, isCmdDataRecv)
        
        If isCmdDataRecv = False Then
            If j > cmdResendTimes Then
                j = 0
                Log_Info "Cannot read the 2.4G version!!!"
                GoTo RESEND_CMD_8
            Else
                j = j + 1
                Log_Info "Resend cmd READ_24G_VERSION!!!"
                GoTo RESEND_CMD_7
            End If
        Else
            j = 0
            GoTo RESEND_CMD_8
        End If
    End If
    
RESEND_CMD_8:
    If IsPanelSelected Then
        ClearComBuf
        READ_PANEL_NAME
        DelayMS StepTime
        Call DelaySWithCmdFlag(cmdReceiveWaitS, isCmdDataRecv)
        
        If isCmdDataRecv = False Then
            If j > cmdResendTimes Then
                j = 0
                Log_Info "Cannot read the panel name!!!"
                GoTo RESEND_CMD_9
            Else
                j = j + 1
                Log_Info "Resend cmd READ_PANEL_NAME!!!"
                GoTo RESEND_CMD_8
            End If
        Else
            j = 0
            GoTo RESEND_CMD_9
        End If
    End If
    
RESEND_CMD_9:
    If IsCarrierSelected Then
        ClearComBuf
        READ_CARRIER_INFO
        DelayMS StepTime
        Call DelaySWithCmdFlag(cmdReceiveWaitS, isCmdDataRecv)
        
        If isCmdDataRecv = False Then
            If j > cmdResendTimes Then
                j = 0
                Log_Info "Cannot read the carrier info!!!"
                GoTo RESEND_CMD_10
            Else
                j = j + 1
                Log_Info "Resend cmd READ_CARRIER_INFO!!!"
                GoTo RESEND_CMD_9
            End If
        Else
            j = 0
            GoTo RESEND_CMD_10
        End If
    End If
    
RESEND_CMD_10:
    If IsHDCPSelected Then
        ClearComBuf
        READ_HDCP_KEY
        DelayMS StepTime
        Call DelaySWithCmdFlag(cmdReceiveWaitS, isCmdDataRecv)
        
        If isCmdDataRecv = False Then
            If j > cmdResendTimes Then
                j = 0
                Log_Info "Cannot read the HDCP Key!!!"
                GoTo RESEND_CMD_11
            Else
                j = j + 1
                Log_Info "Resend cmd READ_HDCP_KEY!!!"
                GoTo RESEND_CMD_10
            End If
        Else
            j = 0
            GoTo RESEND_CMD_11
        End If
    End If
    
RESEND_CMD_11:
    If IsResolutionSelected Then
        ClearComBuf
        READ_RESOLUTION_INFO
        DelayMS StepTime
        Call DelaySWithCmdFlag(cmdReceiveWaitS, isCmdDataRecv)
        
        If isCmdDataRecv = False Then
            If j > cmdResendTimes Then
                j = 0
                Log_Info "Cannot read the resolution info!!!"
                GoTo RESEND_CMD_12
            Else
                j = j + 1
                Log_Info "Resend cmd READ_RESOLUTION_INFO!!!"
                GoTo RESEND_CMD_11
            End If
        Else
            j = 0
            GoTo RESEND_CMD_12
        End If
    End If
    
RESEND_CMD_12:
    If IsMACAddrSelected Then
        ClearComBuf
        READ_MAC_ADDRESS
        DelayMS StepTime
        Call DelaySWithCmdFlag(cmdReceiveWaitS, isCmdDataRecv)
        
        If isCmdDataRecv = False Then
            If j > cmdResendTimes Then
                j = 0
                Log_Info "Cannot read the MAC Address!!!"
                GoTo RESEND_CMD_13
            Else
                j = j + 1
                Log_Info "Resend cmd READ_MAC_ADDRESS!!!"
                GoTo RESEND_CMD_12
            End If
        Else
            j = 0
            GoTo RESEND_CMD_13
        End If
    End If
    
RESEND_CMD_13:
    If IsPartitionVerSelected Then
        ClearComBuf
        READ_PARTITION_VER
        DelayMS StepTime
        Call DelaySWithCmdFlag(cmdReceiveWaitS, isCmdDataRecv)
        
        If isCmdDataRecv = False Then
            If j > cmdResendTimes Then
                j = 0
                Log_Info "Cannot read the partition version!!!"
                GoTo RESEND_CMD_14
            Else
                j = j + 1
                Log_Info "Resend cmd READ_PARTITION_VER!!!"
                GoTo RESEND_CMD_13
            End If
        Else
            j = 0
            GoTo RESEND_CMD_14
        End If
    End If
    
RESEND_CMD_14:
    If IsAreaVerSelected Then
        ClearComBuf
        READ_AREA_INFO
        DelayMS StepTime
        Call DelaySWithCmdFlag(cmdReceiveWaitS, isCmdDataRecv)
        
        If isCmdDataRecv = False Then
            If j > cmdResendTimes Then
                j = 0
                Log_Info "Cannot read the area info!!!"
                GoTo RESEND_CMD_15
            Else
                j = j + 1
                Log_Info "Resend cmd READ_AREA_INFO!!!"
                GoTo RESEND_CMD_14
            End If
        Else
            j = 0
            GoTo RESEND_CMD_15
        End If
    End If
    
RESEND_CMD_15:
    If IsDeviceKeySelected Then
        ClearComBuf
        READ_DEVICE_KEY
        DelayMS StepTime
        Call DelaySWithCmdFlag(cmdReceiveWaitS, isCmdDataRecv)
        
        If isCmdDataRecv = False Then
            If j > cmdResendTimes Then
                j = 0
                Log_Info "Cannot read the device key!!!"
                GoTo RESEND_CMD_16
            Else
                j = j + 1
                Log_Info "Resend cmd READ_DEVICE_KEY!!!"
                GoTo RESEND_CMD_15
            End If
        Else
            j = 0
            GoTo RESEND_CMD_16
        End If
    End If
    
RESEND_CMD_16:
    ClearComBuf
    'Either PASS or FAIL, send "Exit factory mode" cmd.
    EXIT_FAC_MODE
    DelayMS StepTime
   
    If lbTVInfo(0).Caption = strNoRecvData Then
        IsAllDataMatch = False
        lbTVInfo(0).BackColor = &HFF&
    End If
    
    If lbTVInfo(1).Caption = strNoRecvData Then
        IsAllDataMatch = False
        lbTVInfo(1).BackColor = &HFF&
    End If
    
    If lbTVInfo(2).Caption = strNoRecvData Then
        IsAllDataMatch = False
        lbTVInfo(2).BackColor = &HFF&
    End If
    
    If lbTVInfo(3).Caption = strNoRecvData Then
        IsAllDataMatch = False
        lbTVInfo(3).BackColor = &HFF&
    End If
    If lbTVInfo(4).Caption = strNoRecvData Then
        IsAllDataMatch = False
        lbTVInfo(4).BackColor = &HFF&
    End If
    
    If lbTVInfo(5).Caption = strNoRecvData Then
        IsAllDataMatch = False
        lbTVInfo(5).BackColor = &HFF&
    End If
    
    If lbTVInfo(12).Caption = strNoRecvData Then
        IsAllDataMatch = False
        lbTVInfo(12).BackColor = &HFF&
    End If
    
    If lbTVInfo(6).Caption = strNoRecvData Then
        IsAllDataMatch = False
        lbTVInfo(6).BackColor = &HFF&
    End If
    
    If lbTVInfo(7).Caption = strNoRecvData Then
        IsAllDataMatch = False
        lbTVInfo(7).BackColor = &HFF&
    End If
    
    If lbTVInfo(8).Caption = strNoRecvData Then
        IsAllDataMatch = False
        lbTVInfo(8).BackColor = &HFF&
    End If
    
    If lbTVInfo(13).Caption = strNoRecvData Then
        IsAllDataMatch = False
        lbTVInfo(13).BackColor = &HFF&
    End If
    
    If lbTVInfo(9).Caption = strNoRecvData Then
        IsAllDataMatch = False
        lbTVInfo(9).BackColor = &HFF&
    End If
    If lbTVInfo(10).Caption = strNoRecvData Then
        IsAllDataMatch = False
        lbTVInfo(10).BackColor = &HFF&
    End If
    
    If lbTVInfo(11).Caption = strNoRecvData Then
        IsAllDataMatch = False
        lbTVInfo(11).BackColor = &HFF&
    End If
    
    If lbTVInfo(14).Caption = strNoRecvData Then
        IsAllDataMatch = False
        lbTVInfo(14).BackColor = &HFF&
    End If
    
    If Not IsAllDataMatch Then
        GoTo FAIL
    End If

    Call saveAllData
    
PASS:
    lbResult.Caption = "PASS"
    lbResult.BackColor = &HFF00&
    Call subInitAfterRunning
    
    Exit Sub

FAIL:
    lbResult.Caption = "NG"
    lbResult.BackColor = &HFF&
    Call subInitAfterRunning

    Exit Sub

ErrExit:
    MsgBox Err.Description, vbCritical, Err.Source

End Sub


Private Sub saveAllData()

    If strSerialNo = "" Then
        Exit Sub
    Else
        sqlstring = "select * from DataRecord"
        Executesql (sqlstring)
        rs.AddNew

        rs.Fields(0) = strCurrentModelName
        rs.Fields(1) = strSerialNo

        rs.Fields(2) = lbTVInfo(0).Caption
        rs.Fields(3) = lbTVInfo(1).Caption
        rs.Fields(4) = lbTVInfo(2).Caption
        rs.Fields(5) = lbTVInfo(3).Caption
        rs.Fields(6) = lbTVInfo(4).Caption
        rs.Fields(7) = lbTVInfo(5).Caption
        rs.Fields(8) = lbTVInfo(12).Caption
        rs.Fields(9) = lbTVInfo(6).Caption
        rs.Fields(10) = lbTVInfo(7).Caption
        rs.Fields(11) = lbTVInfo(8).Caption
        rs.Fields(12) = lbTVInfo(13).Caption
        rs.Fields(13) = lbTVInfo(9).Caption
        rs.Fields(14) = lbTVInfo(10).Caption
        rs.Fields(15) = lbTVInfo(11).Caption
        rs.Fields(16) = lbTVInfo(14).Caption
        
        rs.Fields(17) = Date
        rs.Fields(18) = Time
        
        rs.Update
        
        Set cn = Nothing
        Set rs = Nothing
        sqlstring = ""
    End If

End Sub


Private Sub tbSetComPort_Click()
    Form2.Show
End Sub

Private Sub txtInput_KeyPress(KeyAscii As Integer)
    Dim i As Integer
    
    i = 0
    'ASCII = 13 means "Enter" of keyboard.
    If KeyAscii = 13 Then
        IsStop = False
        isNetworkConnected = False
        
        If txtInput.Locked = False Then
            If isUartMode = True Then
                subMainProcesser
            Else
                Do
                    tcpClient.Connect
                    Call DelaySWithCmdFlag(cmdReceiveWaitS * 2, isNetworkConnected)
                
                    If isNetworkConnected = True Then
                        subMainProcesser
                        Exit Do
                    Else
                        tcpClient.Close
                        i = i + 1
                    End If
                    Log_Info "Re-connect to TV."
                Loop While i <= 5
            End If
        End If
         
        If IsStop = True Then
            Exit Sub
        End If
    End If
End Sub

Private Sub vbSetSPEC_Click()
    frmSetData.Show
End Sub


'------------------------------------------------------------------------------
' MSComm related function
'------------------------------------------------------------------------------
Private Sub MSComm1_OnComm()
    
On Error GoTo Err
    Select Case MSComm1.CommEvent
        Case comEvReceive
            DelayMS StepTime
            Call hexReceive
        'Case comEvSend
        Case Else
    End Select
Err:
  
End Sub

Private Sub hexReceive()
 
On Error GoTo Err
    Dim ReceiveArr() As Byte
    Dim receiveData As String
    Dim Counter As Integer
    Dim i, tmp, firstByteOfDataIdx As Integer
    
    firstByteOfDataIdx = 0
    Counter = MSComm1.InBufferCount

    If (Counter > 0) Then
        receiveData = ""
        ReceiveArr = MSComm1.Input

        'Find ACK1 and ACK2, which are metioned in Letv's document.
        'ACK1 must be one of {0xC7, 0xCB, 0xCC, 0xD3, 0xD4, 0xD8, 0xDD, 0xE3, 0xE4, 0xE8, 0xED, 0xF0, 0xF5, 0xF9, 0xFE, 0xC2}
        For i = 0 To (Counter - 1) Step 1
            If i < (Counter - 1) Then
                If (ReceiveArr(i) Xor 255) = ReceiveArr(i + 1) Then
                    For Each tmp In Array(199, 203, 204, 211, 212, 216, 221, 227, 228, 232, 237, 240, 245, 249, 254, 194)
                        If ReceiveArr(i) = tmp Then
                            firstByteOfDataIdx = i
                            Exit For
                        End If
                    Next tmp
                    
                    If firstByteOfDataIdx = 14 Then
                        Exit For
                    Else
                        firstByteOfDataIdx = 0
                    End If
                End If
            End If
        Next i
        
        If firstByteOfDataIdx > 0 Then
            For i = firstByteOfDataIdx To (Counter - 1) Step 1
                If (ReceiveArr(i) < 16) Then
                    receiveData = receiveData & "0" & Hex(ReceiveArr(i)) & Space(1)
                Else
                    receiveData = receiveData & Hex(ReceiveArr(i)) & Space(1)
                End If
            Next i
        
            Log_Info receiveData
            
            'Update the CheckBoxes in the Form1.
            receiveData = ""
            
            'Data starts from ReceiveArr(firstByteOfDataIdx + 3). DataLength is ReceiveArr(firstByteOfDataIdx + 2).
            For i = (firstByteOfDataIdx + 3) To ((firstByteOfDataIdx + 3) + ReceiveArr(firstByteOfDataIdx + 2) - 1) Step 1
                If cmdIdentifyNum = 5 Or cmdIdentifyNum = 9 Or cmdIdentifyNum = 11 Or cmdIdentifyNum = 12 Then
                    If (ReceiveArr(i) < 16) Then
                        receiveData = receiveData & "0" & Hex(ReceiveArr(i))
                    Else
                        receiveData = receiveData & Hex(ReceiveArr(i))
                    End If
                Else
                    If (ReceiveArr(i) < 16) Then
                        receiveData = receiveData & "0" & Chr(ReceiveArr(i))
                    Else
                        receiveData = receiveData & Chr(ReceiveArr(i))
                    End If
                End If
            Next i
            
            Select Case cmdIdentifyNum
                Case 0
                    isCmdDataRecv = True
                Case 2                                     'System Version
                    isCmdDataRecv = True
                    If IsSysVerSelected Then
                        If SysVerSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(1).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(1).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(1).Caption = receiveData
                    End If
                Case 3                                     'Flash Info
                    isCmdDataRecv = True
                    If IsFlashInfoSelected Then
                        lbTVInfo(2).Caption = receiveData & "G"
                        
                        If FlashInfoSpec = lbTVInfo(2).Caption Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(2).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(2).BackColor = &HFF&
                        End If
                    End If
                Case 4                                     'Hardware Version
                    isCmdDataRecv = True
                    If IsHardwareVerSelected Then
                        If HardwareVerSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(3).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(3).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(3).Caption = receiveData
                    End If
                Case 5                                     '3D\2D
                    isCmdDataRecv = True
                    If IsDimensionSelected Then
                        If receiveData = "00" Then
                            lbTVInfo(4).Caption = "3D"
                        Else
                            lbTVInfo(4).Caption = "2D"
                        End If
                        
                        If DimensionSpec = lbTVInfo(4).Caption Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(4).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(4).BackColor = &HFF&
                        End If
                    End If
                Case 6                                     '2.4G Version
                    isCmdDataRecv = True
                    If Is24GVerSelected Then
                        If TwoPointFourGVerSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(6).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(6).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(6).Caption = receiveData
                    End If
                Case 7                                     'Panel Name
                    isCmdDataRecv = True
                    If IsPanelSelected Then
                        If PanelSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(7).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(7).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(7).Caption = receiveData
                    End If
                Case 8                                     'Carrier Info
                    isCmdDataRecv = True
                    If IsCarrierSelected Then
                        If CarrierSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(8).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(8).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(8).Caption = receiveData
                    End If
                Case 9                                     'HDCP Key
                    isCmdDataRecv = True
                    If IsHDCPSelected Then
                        'HDCP Key return 0x30 means HDCP Key is NOT written.
                        If receiveData = "30" Then
                            IsAllDataMatch = False
                            lbTVInfo(9).BackColor = &HFF&
                            lbTVInfo(9).Caption = "HDCP Key 未烧录"
                        Else
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(9).BackColor = &HFF00&
                            lbTVInfo(9).Caption = "HDCP Key 已烧录"
                        End If
                    End If
                Case 10                                    'Model Name
                    isCmdDataRecv = True
                    If IsModelSelected Then
                        If ModelSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(0).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(0).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(0).Caption = receiveData
                    End If
                Case 11                                    '4K\2K
                    isCmdDataRecv = True
                    If IsResolutionSelected Then
                        If receiveData = "00" Then
                            lbTVInfo(10).Caption = "4K"
                        Else
                            lbTVInfo(10).Caption = "2K"
                        End If
                        
                        If ResolutionSpec = lbTVInfo(10).Caption Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(10).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(10).BackColor = &HFF&
                        End If
                    End If
                Case 12                                    'MAC Address
                    isCmdDataRecv = True
                    If IsMACAddrSelected Then
                        If Len(receiveData) = 12 Then
                            sqlstring = "select * from DataRecord where MACAddr='" & receiveData & "'"
                            Executesql (sqlstring)
                            
                            If rs.RecordCount > 0 Then
                                If rs.RecordCount = 1 Then
                                    Log_Info "The MAC Address is the same as a TV whose SerialNO is [" & rs("SerialNO") & "]."
                                Else
                                    Log_Info "There are some TV whose MAC Address are the same. Please check the database file!!!"
                                End If
                                
                                TxtReceive.ForeColor = &HFF&
                                IsAllDataMatch = False
                                lbTVInfo(11).BackColor = &HFF&
                                lbTVInfo(11).Caption = "MAC 地址重复"
                            Else
                                IsAllDataMatch = True And IsAllDataMatch
                                lbTVInfo(11).BackColor = &HFF00&
                                lbTVInfo(11).Caption = receiveData
                            End If
                            
                            Set cn = Nothing
                            Set rs = Nothing
                            sqlstring = ""
                        Else
                            Log_Info "The lenght of MAC address is wrong."
                            lbTVInfo(11).BackColor = &HFF&
                            lbTVInfo(11).Caption = receiveData
                        End If
                    End If
                Case 13                                    'Channel Info
                    isCmdDataRecv = True
                    If IsChannelSelected Then
                        If ChannelSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(5).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(5).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(5).Caption = receiveData
                    End If
                Case 14                                    'Partition Version
                    isCmdDataRecv = True
                    If IsPartitionVerSelected Then
                        If PartitionVerSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(12).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(12).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(12).Caption = receiveData
                    End If
                Case 15                                    'Area Info
                    isCmdDataRecv = True
                    If IsAreaVerSelected Then
                        If AreaSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(13).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(13).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(13).Caption = receiveData
                    End If
                Case 16                                    'Device Key
                    isCmdDataRecv = True
                    If IsDeviceKeySelected Then
                        If Len(receiveData) = 32 Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(14).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(14).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(14).Caption = Strings.Right(receiveData, 5)
                    End If
                Case Else
                    Log_Info "Unknown command"
            End Select
        Else
            TxtReceive.Text = TxtReceive.Text & vbCrLf
            TxtReceive.SelStart = Len(TxtReceive.Text)
        End If
    Else
        'Ignore empty data
    End If
    
Err:

End Sub


Private Sub tcpClient_DataArrival(ByVal bytesTotal As Long)
On Error GoTo Err
    Dim ReceiveArr() As Byte
    Dim receiveData As String
    Dim i, tmp, firstByteOfDataIdx As Integer
    
    firstByteOfDataIdx = 0

    If (bytesTotal > 0) Then
        receiveData = ""
        tcpClient.GetData ReceiveArr, vbByte, bytesTotal
        
        If bytesTotal > 3 Then
            receiveData = ""
            
            For i = 3 To (bytesTotal - 1) Step 1
                If cmdIdentifyNum = 5 Or cmdIdentifyNum = 9 Or cmdIdentifyNum = 11 Or cmdIdentifyNum = 12 Then
                    If (ReceiveArr(i) < 16) Then
                        receiveData = receiveData & "0" & Hex(ReceiveArr(i))
                    Else
                        receiveData = receiveData & Hex(ReceiveArr(i))
                    End If
                Else
                    If (ReceiveArr(i) < 16) Then
                        receiveData = receiveData & "0" & Chr(ReceiveArr(i))
                    Else
                        receiveData = receiveData & Chr(ReceiveArr(i))
                    End If
                End If
            Next i
            
            Select Case cmdIdentifyNum
                Case 0
                    isCmdDataRecv = True
                Case 2                                     'System Version
                    isCmdDataRecv = True
                    If IsSysVerSelected Then
                        If SysVerSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(1).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(1).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(1).Caption = receiveData
                    End If
                Case 3                                     'Flash Info
                    isCmdDataRecv = True
                    If IsFlashInfoSelected Then
                        lbTVInfo(2).Caption = receiveData & "G"
                        
                        If FlashInfoSpec = lbTVInfo(2).Caption Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(2).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(2).BackColor = &HFF&
                        End If
                    End If
                Case 4                                     'Hardware Version
                    isCmdDataRecv = True
                    If IsHardwareVerSelected Then
                        If HardwareVerSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(3).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(3).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(3).Caption = receiveData
                    End If
                Case 5                                     '3D\2D
                    isCmdDataRecv = True
                    If IsDimensionSelected Then
                        If receiveData = "00" Then
                            lbTVInfo(4).Caption = "3D"
                        Else
                            lbTVInfo(4).Caption = "2D"
                        End If
                        
                        If DimensionSpec = lbTVInfo(4).Caption Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(4).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(4).BackColor = &HFF&
                        End If
                    End If
                Case 6                                     '2.4G Version
                    isCmdDataRecv = True
                    If Is24GVerSelected Then
                        If TwoPointFourGVerSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(6).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(6).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(6).Caption = receiveData
                    End If
                Case 7                                     'Panel Name
                    isCmdDataRecv = True
                    If IsPanelSelected Then
                        If PanelSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(7).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(7).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(7).Caption = receiveData
                    End If
                Case 8                                     'Carrier Info
                    isCmdDataRecv = True
                    If IsCarrierSelected Then
                        If CarrierSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(8).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(8).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(8).Caption = receiveData
                    End If
                Case 9                                     'HDCP Key
                    isCmdDataRecv = True
                    If IsHDCPSelected Then
                        'HDCP Key return 0x30 means HDCP Key is NOT written.
                        If receiveData = "30" Then
                            IsAllDataMatch = False
                            lbTVInfo(9).BackColor = &HFF&
                            lbTVInfo(9).Caption = "HDCP Key 未烧录"
                        Else
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(9).BackColor = &HFF00&
                            lbTVInfo(9).Caption = "HDCP Key 已烧录"
                        End If
                    End If
                Case 10                                    'Model Name
                    isCmdDataRecv = True
                    If IsModelSelected Then
                        If ModelSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(0).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(0).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(0).Caption = receiveData
                    End If
                Case 11                                    '4K\2K
                    isCmdDataRecv = True
                    If IsResolutionSelected Then
                        If receiveData = "00" Then
                            lbTVInfo(10).Caption = "4K"
                        Else
                            lbTVInfo(10).Caption = "2K"
                        End If
                        
                        If ResolutionSpec = lbTVInfo(10).Caption Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(10).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(10).BackColor = &HFF&
                        End If
                    End If
                Case 12                                    'MAC Address
                    isCmdDataRecv = True
                    If IsMACAddrSelected Then
                        If Len(receiveData) = 12 Then
                            sqlstring = "select * from DataRecord where MACAddr='" & receiveData & "'"
                            Executesql (sqlstring)
                            
                            If rs.RecordCount > 0 Then
                                If rs.RecordCount = 1 Then
                                    Log_Info "The MAC Address is the same as a TV whose SerialNO is [" & rs("SerialNO") & "]."
                                Else
                                    Log_Info "There are some TV whose MAC Address are the same. Please check the database file!!!"
                                End If
                                
                                TxtReceive.ForeColor = &HFF&
                                IsAllDataMatch = False
                                lbTVInfo(11).BackColor = &HFF&
                                lbTVInfo(11).Caption = "MAC 地址重复"
                            Else
                                IsAllDataMatch = True And IsAllDataMatch
                                lbTVInfo(11).BackColor = &HFF00&
                                lbTVInfo(11).Caption = receiveData
                            End If
                            
                            Set cn = Nothing
                            Set rs = Nothing
                            sqlstring = ""
                        Else
                            Log_Info "The lenght of MAC address is wrong."
                            lbTVInfo(11).BackColor = &HFF&
                            lbTVInfo(11).Caption = receiveData
                        End If
                    End If
                Case 13                                    'Channel Info
                    isCmdDataRecv = True
                    If IsChannelSelected Then
                        If ChannelSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(5).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(5).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(5).Caption = receiveData
                    End If
                Case 14                                    'Partition Version
                    isCmdDataRecv = True
                    If IsPartitionVerSelected Then
                        If PartitionVerSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(12).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(12).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(12).Caption = receiveData
                    End If
                Case 15                                    'Area Info
                    isCmdDataRecv = True
                    If IsAreaVerSelected Then
                        If AreaSpec = receiveData Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(13).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(13).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(13).Caption = receiveData
                    End If
                Case 16                                    'Device Key
                    isCmdDataRecv = True
                    If IsDeviceKeySelected Then
                        If Len(receiveData) = 32 Then
                            IsAllDataMatch = True And IsAllDataMatch
                            lbTVInfo(14).BackColor = &HFF00&
                        Else
                            IsAllDataMatch = False
                            lbTVInfo(14).BackColor = &HFF&
                        End If
                        
                        lbTVInfo(14).Caption = Strings.Right(receiveData, 5)
                    End If
                Case Else
                    Log_Info "Unknown command"
            End Select
        Else
            TxtReceive.Text = TxtReceive.Text & vbCrLf
            TxtReceive.SelStart = Len(TxtReceive.Text)
        End If
    Else
        'Ignore empty data
    End If
    
Err:
End Sub

Private Sub tcpClient_Connect()
    'Success to connect the TV.
    isNetworkConnected = True
End Sub
