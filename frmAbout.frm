VERSION 5.00
Begin VB.Form frmAbout 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "About :"
   ClientHeight    =   3720
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   6480
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3720
   ScaleWidth      =   6480
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00FFFFFF&
      Height          =   3555
      Left            =   75
      ScaleHeight     =   3495
      ScaleWidth      =   6255
      TabIndex        =   0
      Top             =   45
      Width           =   6315
      Begin VB.PictureBox picPicture 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   0  'None
         Height          =   630
         Left            =   5265
         Picture         =   "frmAbout.frx":0000
         ScaleHeight     =   630
         ScaleWidth      =   615
         TabIndex        =   5
         Top             =   2625
         Width           =   615
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Anoop, anoopj12@angelfire.com"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   1
         Left            =   225
         TabIndex        =   4
         Top             =   2970
         Width           =   3750
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Regards"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   0
         Left            =   240
         TabIndex        =   3
         Top             =   2655
         Width           =   2730
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   $"frmAbout.frx":044A
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1830
         Left            =   240
         TabIndex        =   2
         Top             =   585
         Width           =   5235
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Hi Folks,"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   240
         TabIndex        =   1
         Top             =   195
         Width           =   2730
      End
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'=============================================================================================================================
' READ THIS BEFORE USING THE CODE:
'
' Developed by Anoop. M
' anoopj12 @ angelfire.com
'
' Anoop M, Govindanikethan, Nedumkunnam P.O, Kottayam,
' Kerala, India - 686 542
'=============================================================================================================================
'
'ABOUT CODE:
'=================
' You can study and view the source code for creating your
' own apps, but do not reproduce/release Icon Hunter fully
' or partially for any commercial and/or personal purposes. All
' rights of this product is related to it's author. Any violation
' of above conditions will be treated seriously and is punishable.
'
'ABOUT ME:
'=================
'
' I am a freelance programmer, and is now working as the
' Technical Advisor of an Indian Software company. I am specialising
' in Internet/Web technologies and ASP development, and is planning
' to relocate to US shortly
'
' I recently developed a broadcasting audio technology and is
' now looking for tie-ups with established US companies;
' interested in implementing their own Internet Radio Networks,
' Web Phone services and Tele-Conferencing/Voice-Chat services
' using the above technology
'
' VISIT MY WEBSITE : http://www.geocities.com/streamingaudio for
' details regarding this technoloy

' Contact me by email
'
' Also, If you are a US based programmer, I would be gratefull
' if you can inform me about finding investors/sponsors in US
'
' Thanks for using my code
'=============================================================================================================================

