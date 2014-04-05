.class public Lcom/android/phone/RejectCallWithMsgContent;
.super Landroid/widget/LinearLayout;
.source "RejectCallWithMsgContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;,
        Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;
    }
.end annotation


# static fields
.field private static final REJECTMSG_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private FROM:[Ljava/lang/String;

.field private final REJECT_CALL_WITH_MSG_CONTENT_COVERED:Ljava/lang/String;

.field private mAnsMemoButton:Landroid/widget/LinearLayout;

.field private mAnsMemoImg:Landroid/widget/ImageView;

.field private mBtnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnListIconMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field protected mCreateButton:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field mIconModeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public mIsHelpScreen:Z

.field private mNetType:I

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneType:I

.field private mRejectTitle:Landroid/widget/LinearLayout;

.field private mRemindButton:Landroid/widget/LinearLayout;

.field private mRemindDialog:Landroid/app/AlertDialog;

.field public mSendMsgListener:Landroid/view/View$OnClickListener;

.field private mSimId:I

.field remindtimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field strList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const-string v0, "content://com.android.phone.callsettings/reject_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RejectCallWithMsgContent;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 379
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;

    .line 84
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    .line 85
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindButton:Landroid/widget/LinearLayout;

    .line 87
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    .line 88
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRejectTitle:Landroid/widget/LinearLayout;

    .line 89
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mAnsMemoImg:Landroid/widget/ImageView;

    .line 91
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindDialog:Landroid/app/AlertDialog;

    .line 92
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    .line 95
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnListIconMode:Ljava/util/ArrayList;

    .line 97
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    .line 115
    iput v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneType:I

    .line 117
    iput v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mNetType:I

    .line 119
    iput v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mSimId:I

    .line 121
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "reject_message"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "edit_checked"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "remind_time"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->FROM:[Ljava/lang/String;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->remindtimeList:Ljava/util/ArrayList;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mIconModeItems:Ljava/util/List;

    .line 136
    iput-boolean v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mIsHelpScreen:Z

    .line 139
    const-string v1, "RejectCallWithMsgContentCovered"

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->REJECT_CALL_WITH_MSG_CONTENT_COVERED:Ljava/lang/String;

    .line 141
    new-instance v1, Lcom/android/phone/RejectCallWithMsgContent$1;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgContent$1;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;

    .line 309
    new-instance v1, Lcom/android/phone/RejectCallWithMsgContent$2;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgContent$2;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mSendMsgListener:Landroid/view/View$OnClickListener;

    .line 380
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 382
    .local v0, inflater:Landroid/view/LayoutInflater;
    const-string v1, "feature_remind_me_later_support "

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    const v1, 0x7f0400b0

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 411
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;

    .line 414
    const-string v1, "reject_call_with_message_icon_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    iput-boolean v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mIsHelpScreen:Z

    .line 419
    :cond_1
    return-void

    .line 386
    :cond_2
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isPenMultiWindow()Z

    move-result v1

    if-nez v1, :cond_3

    .line 388
    const v1, 0x7f0400ae

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 391
    :cond_3
    const-string v1, "support_kk_vt_tablet_multiwindow"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 392
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->isPenMultiWindow()Z

    move-result v1

    if-nez v1, :cond_4

    .line 393
    const v1, 0x7f0400c4

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 397
    :cond_4
    const v1, 0x7f0400c3

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 404
    :cond_5
    const-string v1, "RejectCallWithMsgContentCovered"

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    const v1, 0x7f0400ac

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0
.end method

.method private RemindmeDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 703
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 704
    .local v2, remind_time:[I
    new-array v3, v8, [Ljava/lang/CharSequence;

    .line 705
    .local v3, remind_time_item:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_2

    .line 706
    if-ge v1, v10, :cond_0

    .line 707
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0907b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    aget v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 705
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    :cond_0
    if-ne v1, v10, :cond_1

    .line 711
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0907b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_1

    .line 714
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0907b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    aget v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_1

    .line 718
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 719
    .local v0, RemindmeD:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0907a7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 720
    new-instance v4, Lcom/android/phone/RejectCallWithMsgContent$7;

    invoke-direct {v4, p0}, Lcom/android/phone/RejectCallWithMsgContent$7;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    invoke-virtual {v0, v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/phone/RejectCallWithMsgContent$6;

    invoke-direct {v6, p0}, Lcom/android/phone/RejectCallWithMsgContent$6;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 768
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindDialog:Landroid/app/AlertDialog;

    .line 769
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 770
    return-void

    .line 703
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/RejectCallWithMsgContent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneType:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/RejectCallWithMsgContent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneType:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/RejectCallWithMsgContent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mSimId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/RejectCallWithMsgContent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mSimId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnListIconMode:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/RejectCallWithMsgContent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/phone/RejectCallWithMsgContent;->RemindmeDialog()V

    return-void
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/phone/RejectCallWithMsgContent;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private appendAnswerMemoToList([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "aTempMsg"
    .parameter "aTempList"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1012
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_0

    .line 1013
    add-int/lit8 v1, v0, -0x2

    aget-object v1, p2, v1

    aput-object v1, p1, v0

    .line 1012
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1014
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0908e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v5

    .line 1015
    const-string v1, "+ "

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09029c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    .line 1016
    const-string v1, "RejectCallWithMsgContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aTempMsg[0] - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " aTempMsg[1] - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1017
    return-object p1
.end method

.method public static constructReminderLabel(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "minutes"

    .prologue
    const/4 v5, 0x1

    .line 674
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 675
    .local v1, resources:Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 676
    .local v3, value:I
    const/4 v0, 0x0

    .line 677
    .local v0, format:Ljava/lang/String;
    const/4 v2, 0x0

    .line 679
    .local v2, retString:Ljava/lang/String;
    rem-int/lit8 v4, p1, 0x3c

    if-eqz v4, :cond_2

    .line 680
    move v3, p1

    .line 681
    if-ne v3, v5, :cond_1

    .line 682
    const v4, 0x7f0907b5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 695
    :goto_0
    if-eq v3, v5, :cond_0

    .line 696
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 699
    :cond_0
    return-object v2

    .line 684
    :cond_1
    const v4, 0x7f0907b6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 687
    :cond_2
    div-int/lit8 v3, p1, 0x3c

    .line 688
    if-ne v3, v5, :cond_3

    .line 689
    const v4, 0x7f0907b7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 691
    :cond_3
    const v4, 0x7f0907b8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public disableAnsweringMessage()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1107
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRejectTitle:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1111
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRejectTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1113
    :cond_1
    return-void
.end method

.method public disableSendMsgButton()V
    .locals 7

    .prologue
    .line 641
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v6, 0x6

    if-ge v3, v6, :cond_2

    .line 643
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 644
    .local v4, item:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_0

    .line 645
    const-string v6, "reject_call_with_message_send_button_enable"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 646
    const v6, 0x7f0a02fd

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    move-object v0, v6

    check-cast v0, Landroid/widget/Button;

    move-object v1, v0

    .line 647
    .local v1, btn:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 648
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 641
    .end local v1           #btn:Landroid/widget/Button;
    .end local v4           #item:Landroid/widget/LinearLayout;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 652
    .restart local v4       #item:Landroid/widget/LinearLayout;
    :cond_1
    const v6, 0x7f0a02e9

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v0, v6

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 653
    .local v5, textView:Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 654
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 659
    .end local v4           #item:Landroid/widget/LinearLayout;
    .end local v5           #textView:Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 660
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 663
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public enableAnsweringMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1115
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRejectTitle:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1119
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRejectTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    :cond_1
    return-void
.end method

.method public getIconModeItemsForMw(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1023
    .local p1, iconModeItems:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mIconModeItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1024
    return-void
.end method

.method public getMwRejectMessageString()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 969
    const-string v5, "RejectCallWithMsgContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "strList.toArray: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 971
    iget-object v5, p0, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 972
    .local v4, strListSize:I
    const-string v5, "automatic_answering_machine_kdi"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 973
    const/4 v4, 0x0

    .line 975
    :cond_0
    add-int/lit8 v5, v4, 0x1

    new-array v3, v5, [Ljava/lang/String;

    .line 976
    .local v3, mTempMsg:[Ljava/lang/String;
    add-int/lit8 v5, v4, 0x2

    new-array v1, v5, [Ljava/lang/String;

    .line 977
    .local v1, mTempAppendMsg:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 979
    .local v2, mTempList:[Ljava/lang/String;
    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "automatic_answering_machine_kdi"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 991
    invoke-direct {p0, v1, v2}, Lcom/android/phone/RejectCallWithMsgContent;->appendAnswerMemoToList([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1002
    :goto_0
    return-object v3

    .line 993
    :cond_1
    const-string v5, "automatic_answering_machine_kdi"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 994
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0908e6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    goto :goto_0

    .line 996
    :cond_2
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v0, v5, :cond_3

    .line 997
    add-int/lit8 v5, v0, -0x1

    aget-object v5, v2, v5

    aput-object v5, v3, v0

    .line 996
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 999
    :cond_3
    const-string v5, "+ "

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09029c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 10

    .prologue
    const v9, 0x7f0a02e1

    const v8, 0x7f0a02dd

    const v7, 0x7f0a02da

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 423
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 424
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 426
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    .line 428
    const v3, 0x7f0a02dc

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRejectTitle:Landroid/widget/LinearLayout;

    .line 429
    const v3, 0x7f0a02db

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mAnsMemoImg:Landroid/widget/ImageView;

    .line 430
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRejectTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mAnsMemoImg:Landroid/widget/ImageView;

    const v4, 0x7f020012

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 435
    :cond_0
    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    .line 436
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    const v3, 0x7f0a02ea

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindButton:Landroid/widget/LinearLayout;

    .line 438
    :cond_1
    const-string v3, "feature_ctc"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 439
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 442
    :cond_2
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 443
    const-string v3, "automatic_answering_machine_kdi"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 444
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    .line 445
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 446
    :cond_3
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    .line 447
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 456
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/phone/RejectCallWithMsgContent$3;

    invoke-direct {v4, p0}, Lcom/android/phone/RejectCallWithMsgContent$3;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 495
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/phone/RejectCallWithMsgContent$4;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/RejectCallWithMsgContent$4;-><init>(Lcom/android/phone/RejectCallWithMsgContent;Lcom/android/phone/PhoneGlobals;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    :cond_5
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 507
    const v3, 0x7f0a02e0

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 508
    .local v2, textModeLayout:Landroid/view/ViewGroup;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    .line 509
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    const v3, 0x7f0a02e2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    const v3, 0x7f0a02e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    const v3, 0x7f0a02e4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    const v3, 0x7f0a02e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    const v3, 0x7f0a02e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    const-string v3, "automatic_answering_machine_kdi"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 517
    if-eqz v2, :cond_6

    .line 518
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 524
    .end local v2           #textModeLayout:Landroid/view/ViewGroup;
    :cond_6
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnListIconMode:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    .line 539
    const-string v3, "reject_call_with_message_icon_mode"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 540
    const-string v3, "RejectCallWithMsgContent"

    const-string v4, "mBtnListIconMode is inited!"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const v3, 0x7f0a02e7

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 542
    .local v1, iconModeLayout:Landroid/view/ViewGroup;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnListIconMode:Ljava/util/ArrayList;

    .line 543
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnListIconMode:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 544
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnListIconMode:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnListIconMode:Ljava/util/ArrayList;

    const v3, 0x7f0a02e2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnListIconMode:Ljava/util/ArrayList;

    const v3, 0x7f0a02e3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnListIconMode:Ljava/util/ArrayList;

    const v3, 0x7f0a02e4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnListIconMode:Ljava/util/ArrayList;

    const v3, 0x7f0a02e5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnListIconMode:Ljava/util/ArrayList;

    const v3, 0x7f0a02e6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    const-string v3, "automatic_answering_machine_kdi"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 552
    if-eqz v1, :cond_7

    .line 553
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 560
    .end local v1           #iconModeLayout:Landroid/view/ViewGroup;
    :cond_7
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 561
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v3

    iput v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneType:I

    .line 564
    :cond_8
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 565
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindButton:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/phone/RejectCallWithMsgContent$5;

    invoke-direct {v4, p0}, Lcom/android/phone/RejectCallWithMsgContent$5;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    :cond_9
    const-string v3, "automatic_answering_machine_kdi"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 574
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRejectTitle:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_a

    .line 575
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRejectTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 577
    :cond_a
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_b

    .line 578
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 582
    :cond_b
    return-void

    .line 450
    :cond_c
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_d

    .line 451
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 452
    :cond_d
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRejectTitle:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    .line 453
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRejectTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 586
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 587
    const-string v0, "RejectCallWithMsgContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 588
    sparse-switch p1, :sswitch_data_0

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 590
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsgContent;->updateItemList()V

    goto :goto_0

    .line 593
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 588
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public sendCreateMessage()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1027
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1028
    .local v0, call:Lcom/android/internal/telephony/Call;
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1029
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1031
    :cond_0
    if-eqz v0, :cond_1

    .line 1032
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1033
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_1

    .line 1034
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    .line 1037
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    :cond_1
    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1038
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/phone/RejectCallWithMsgContent;->setRejectCallNumber(Ljava/lang/String;)V

    .line 1040
    :cond_2
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 1041
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1043
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1044
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 1047
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "smsto"

    iget-object v5, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1049
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "support_oem_message_for_kk"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1050
    const-string v3, "com.android.mms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1052
    :cond_3
    const/high16 v3, 0x1800

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1053
    const-string v3, "exit_on_sent"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1055
    const-string v3, "force_new_composer"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1056
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1058
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    return-void

    .line 1046
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0
.end method

.method public sendMwRejectMessage(Ljava/lang/String;)V
    .locals 8
    .parameter "message"

    .prologue
    const-wide/16 v6, 0x3e8

    .line 1061
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1062
    .local v0, call:Lcom/android/internal/telephony/Call;
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1063
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1065
    :cond_0
    if-eqz v0, :cond_3

    .line 1066
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1067
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_1

    .line 1068
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    .line 1071
    :cond_1
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1072
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v3

    iput v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneType:I

    .line 1074
    :cond_2
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 1076
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    :cond_3
    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1077
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/phone/RejectCallWithMsgContent;->setRejectCallNumber(Ljava/lang/String;)V

    .line 1081
    :cond_4
    const/4 v2, 0x0

    .line 1084
    .local v2, remind_time:I
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->isIconModeEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mIsHelpScreen:Z

    if-nez v3, :cond_7

    .line 1085
    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1086
    if-eqz v0, :cond_5

    .line 1087
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v5

    invoke-direct {v4, p0, p1, v5}, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;-><init>(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;I)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1100
    :cond_5
    :goto_0
    return-void

    .line 1089
    :cond_6
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;-><init>(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1093
    :cond_7
    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1094
    if-eqz v0, :cond_5

    .line 1095
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v5

    invoke-direct {v4, p0, p1, v5}, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;-><init>(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;I)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1097
    :cond_8
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;-><init>(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method setRejectCallNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 666
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    .line 668
    const-string v0, "RejectCallWithMsgContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Roaming area setRejectCallNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 672
    :goto_0
    return-void

    .line 670
    :cond_0
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method updateItemList()V
    .locals 4

    .prologue
    .line 603
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->isIconModeEnable(Landroid/content/Context;)Z

    move-result v1

    .line 605
    .local v1, isIconModeOn:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 607
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/phone/RejectCallWithMsgContent;->mIsHelpScreen:Z

    if-nez v2, :cond_0

    .line 608
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnListIconMode:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 605
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    :cond_0
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 617
    :cond_1
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 637
    :cond_2
    new-instance v2, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;

    invoke-direct {v2, p0}, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 638
    return-void
.end method
