VERSION 5.00
Object = "{F5BE8BC2-7DE6-11D0-91FE-00C04FD701A5}#1.5#0"; "AGENTCTL.DLL"
Begin VB.Form frmMain 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Text2Speach  (Wait a little if u have a slow connection)"
   ClientHeight    =   3285
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6870
   Icon            =   "frmmain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3285
   ScaleWidth      =   6870
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdExit 
      Caption         =   "&Exit"
      Height          =   495
      Left            =   5400
      TabIndex        =   4
      ToolTipText     =   "Type some text into the text box, then press this button to hear Genie say it"
      Top             =   1395
      Width           =   1365
   End
   Begin VB.CommandButton cmdAbout 
      Caption         =   "&About"
      Height          =   495
      Left            =   5385
      TabIndex        =   3
      ToolTipText     =   "Type some text into the text box, then press this button to hear Genie say it"
      Top             =   750
      Width           =   1365
   End
   Begin VB.PictureBox picPicture 
      BorderStyle     =   0  'None
      Height          =   630
      Left            =   5835
      Picture         =   "frmmain.frx":000C
      ScaleHeight     =   630
      ScaleWidth      =   615
      TabIndex        =   2
      Top             =   2445
      Width           =   615
   End
   Begin VB.TextBox txtMain 
      Height          =   3105
      Left            =   75
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   75
      Width           =   5145
   End
   Begin VB.CommandButton cmdSpeak 
      Caption         =   "&Speak Now"
      Height          =   495
      Left            =   5385
      TabIndex        =   0
      ToolTipText     =   "Type some text into the text box, then press this button to hear Genie say it"
      Top             =   120
      Width           =   1365
   End
   Begin AgentObjectsCtl.Agent Agent1 
      Left            =   5445
      Top             =   2805
   End
End
Attribute VB_Name = "frmMain"
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
'
' Thanks for using my code
'=============================================================================================================================


'Declaring the agent

Dim robby As IAgentCtlCharacter

'Now I am using the URL directly.
'The application will not run if you are not online
Const AGENTFILEPATH = "http://agent.microsoft.com/characters/robby/robby.acf"

'Download character file to your disk and give the filepath instead

'You can also find them and detailed documentation
'in the 3rd or 4th CD of Visual Studio


Private Sub cmdAbout_Click()
frmAbout.Show vbModal
End Sub

Private Sub cmdExit_Click()
Unload Me
End
End Sub




Private Sub cmdSpeak_Click()
On Error Resume Next
    robby.SoundEffectsOn = True
    robby.StopAll
    robby.Speak txtMain.Text
End Sub

Private Sub Form_Load()
'On Error GoTo NoFile
'READ THE ATTACHED README IF YOU HAVE NOT DONE THAT YET

    'Sorry I am not including the file due to its size
    'Agent1.Characters.Load "Robby", App.Path & "\Robby.acs"
    
    'Go Online, and try this instead
    Agent1.Characters.Load "Robby", AGENTFILEPATH
    
    Set robby = Agent1.Characters("Robby")
    robby.Get "State", "Showing, Speaking"
    robby.Get "Animation", "Greet, GreetReturn"
    robby.Show
    robby.Get "State", "Hiding"
    
    'This is how a character plays an action
    robby.Play "Greet"
    
    'This is how a character speaks something
    robby.Speak "Hello Sir, Now the Time is " + CStr(Time()) + ". Vote For Anoop M, for teaching you this magic!. Download the zip for viewin VB code, and see the readme file in it"
    
    robby.Hide
Exit Sub

NoFile:
    MsgBox "Unable to initialize. Probably you are not online now, or the all the required components are not configured. Please see the readme.txt in the project directory before running this code", vbInformation + vbOKOnly, "Unable To Initialize"
    End
End Sub

Private Sub Form_Unload(Cancel As Integer)
robby.Hide
End Sub
