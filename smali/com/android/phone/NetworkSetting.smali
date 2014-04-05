.class public Lcom/android/phone/NetworkSetting;
.super Landroid/preference/PreferenceActivity;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkSetting$15;,
        Lcom/android/phone/NetworkSetting$userSelectionType;
    }
.end annotation


# static fields
.field private static ATT_PLMN:[Ljava/lang/String;

.field private static final DBG:Z

.field private static Operator_Alphalong:Ljava/lang/String;

.field private static Operator_Numeric:Ljava/lang/String;

.field public static mActivePhone:I

.field private static mInitialValue:Ljava/lang/String;


# instance fields
.field private final ACTION_PLMN:Ljava/lang/String;

.field private ActionType:I

.field private ManualSelectionFail:Z

.field private checkForbiddenNetwork:Z

.field private firstTime:Z

.field private mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAutoSelect:Landroid/preference/Preference;

.field private mBootUpExtra:Z

.field private final mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private final mCallback2:Lcom/android/phone/INetworkQueryServiceCallback2;

.field private mConnectivityMgr:Landroid/net/ConnectivityManager;

.field private mConnectivityService:Landroid/net/IConnectivityManager;

.field mContResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field private mDefaultSetup:Landroid/preference/ListPreference;

.field private mDisconnectAutoSelectDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDisconnectSearchDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mFailDialog:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDataDisconnectingFemto:Z

.field private mIsDisconnectingData:Z

.field protected mIsForeground:Z

.field private mManualModeSuccess:Z

.field private mNetworkList:Landroid/preference/PreferenceGroup;

.field private mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

.field private mNetworkQueryService2:Lcom/android/phone/INetworkQueryService2;

.field private final mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

.field mNetworkSelectMsg:Ljava/lang/String;

.field private mOnBroadcastRecieve:Z

.field private mOnPauseTransition:Z

.field mPLMN:Z

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPlmnReciever:Landroid/content/BroadcastReceiver;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSearchButton:Landroid/preference/Preference;

.field private mSearchFemto:Landroid/preference/Preference;

.field private mSearchNow:Z

.field mSelectAutomatically:Z

.field private mSetAuto:Z

.field mSetToAutomaticMode:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempPreference:Landroid/preference/Preference;

.field public ss:Landroid/telephony/ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v0, v4, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/NetworkSetting;->DBG:Z

    .line 166
    const-string v0, "0"

    sput-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    .line 172
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "310038"

    aput-object v3, v0, v2

    const-string v3, "310090"

    aput-object v3, v0, v1

    const-string v1, "310150"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v3, "310380"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "310410"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "310560"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "310680"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "310980"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "310990"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/phone/NetworkSetting;->ATT_PLMN:[Ljava/lang/String;

    .line 176
    sput-object v5, Lcom/android/phone/NetworkSetting;->Operator_Numeric:Ljava/lang/String;

    .line 177
    sput-object v5, Lcom/android/phone/NetworkSetting;->Operator_Alphalong:Ljava/lang/String;

    .line 190
    sput v2, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    return-void

    :cond_0
    move v0, v2

    .line 103
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 155
    const-string v0, "com.android.settings.PLMNACTION"

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->ACTION_PLMN:Ljava/lang/String;

    .line 159
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    .line 160
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    .line 163
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    .line 164
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mOnPauseTransition:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z

    .line 167
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mSelectAutomatically:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mSetAuto:Z

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->firstTime:Z

    .line 179
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    .line 191
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 195
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->checkForbiddenNetwork:Z

    .line 196
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsDataDisconnectingFemto:Z

    .line 219
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z

    .line 232
    new-instance v0, Lcom/android/phone/NetworkSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$1;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 242
    new-instance v0, Lcom/android/phone/NetworkSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$2;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mPlmnReciever:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v0, Lcom/android/phone/NetworkSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$3;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    .line 482
    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    .line 483
    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService2:Lcom/android/phone/INetworkQueryService2;

    .line 486
    new-instance v0, Lcom/android/phone/NetworkSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$4;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    .line 525
    new-instance v0, Lcom/android/phone/NetworkSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$5;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    .line 540
    new-instance v0, Lcom/android/phone/NetworkSetting$6;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$6;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mCallback2:Lcom/android/phone/INetworkQueryServiceCallback2;

    .line 899
    new-instance v0, Lcom/android/phone/NetworkSetting$7;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$7;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 958
    new-instance v0, Lcom/android/phone/NetworkSetting$8;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$8;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mDisconnectSearchDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 973
    new-instance v0, Lcom/android/phone/NetworkSetting$9;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$9;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mDisconnectAutoSelectDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 981
    new-instance v0, Lcom/android/phone/NetworkSetting$10;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$10;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->updateDataState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/NetworkSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/NetworkSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/NetworkSetting;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->enableMobileData(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->handleManualFailCase()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->ManualSelectionFail:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->handleManualSuccessCase()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/NetworkSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/NetworkSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSetAuto:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mSetAuto:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->checkForbiddenNetwork:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->loadNetworksList()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/NetworkSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->selectList()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->goBackToPreviousManualNetwork()V

    return-void
.end method

.method static synthetic access$2500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/phone/NetworkSetting;->Operator_Numeric:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/NetworkSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/phone/NetworkSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput p1, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/phone/NetworkSetting;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/phone/NetworkSetting;Lcom/android/phone/NetworkSetting$userSelectionType;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->checkDataConnection(Lcom/android/phone/NetworkSetting$userSelectionType;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOnPauseTransition:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchFemto:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/phone/NetworkSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsDataDisconnectingFemto:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mIsDataDisconnectingFemto:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/phone/NetworkSetting;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$3402(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService2;)Lcom/android/phone/INetworkQueryService2;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService2:Lcom/android/phone/INetworkQueryService2;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mTempPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/NetworkSetting;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->updatePLMNmode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    return-void
.end method

.method private backToAutoMode()V
    .locals 3

    .prologue
    .line 2127
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    if-nez v0, :cond_1

    const-string v0, "1"

    sget-object v1, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2128
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 2129
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backToAutoMode(), mManualModeSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Setting to Automatic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    :cond_0
    :goto_0
    return-void

    .line 2131
    :cond_1
    const-string v0, "1"

    sget-object v1, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2132
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSelectAutomatically:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    if-nez v0, :cond_2

    .line 2133
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 2138
    :goto_1
    const-string v0, "phone"

    const-string v1, "backToAutoMode : Keep Manual Mode"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2135
    :cond_2
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 2136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSelectAutomatically:Z

    goto :goto_1
.end method

.method private checkCspPlmn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1989
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1990
    const-string v0, "[CSP] Enabling Operator Selection menu."

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1991
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    .line 1999
    :cond_0
    :goto_0
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSP support - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2000
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set PLMN - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2001
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set setToAutomaticMode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2002
    return-void

    .line 1993
    :cond_1
    const-string v0, "[CSP] Disabling Operator Selection menu."

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1994
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    .line 1995
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1996
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    goto :goto_0
.end method

.method private checkDataConnection(Lcom/android/phone/NetworkSetting$userSelectionType;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1619
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check Data call, userSelectionType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1620
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 1621
    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1622
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getDataState()I

    move-result v0

    .line 1623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1626
    :cond_0
    sget-object v1, Lcom/android/phone/NetworkSetting$userSelectionType;->AUTOSELECT:Lcom/android/phone/NetworkSetting$userSelectionType;

    if-ne p1, v1, :cond_1

    .line 1627
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mSelectAutomatically:Z

    .line 1630
    :cond_1
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_2

    .line 1631
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 1668
    :goto_0
    return-void

    .line 1632
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->isDataConnectedNow(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1633
    const-string v0, "phone"

    const-string v1, "DATA_IS_NOW_CONNECTED"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1634
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    .line 1635
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworkSetting] mIsDisconnectingData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1637
    sget-object v0, Lcom/android/phone/NetworkSetting$15;->$SwitchMap$com$android$phone$NetworkSetting$userSelectionType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1639
    :pswitch_0
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 1642
    :pswitch_1
    const/16 v0, 0x2bc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 1645
    :pswitch_2
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 1649
    :cond_3
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1651
    const-string v0, "Mobile data on && TelephonyManager.DATA_DISCONNECTED"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1652
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    .line 1653
    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->setMobileDataEnabled(Z)V

    .line 1655
    :cond_4
    sget-object v0, Lcom/android/phone/NetworkSetting$15;->$SwitchMap$com$android$phone$NetworkSetting$userSelectionType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1657
    :pswitch_3
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 1658
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->loadNetworksList()V

    goto :goto_0

    .line 1661
    :pswitch_4
    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V

    goto :goto_0

    .line 1664
    :pswitch_5
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->selectList()V

    goto :goto_0

    .line 1637
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1655
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private clearList()V
    .locals 3

    .prologue
    .line 1612
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 1613
    .local v1, p:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 1615
    .end local v1           #p:Landroid/preference/Preference;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1616
    return-void
.end method

.method private createForUSAGSM()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2007
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2008
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 2009
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2010
    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    .line 2012
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 2013
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2014
    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    .line 2018
    :cond_1
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 2019
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    const v1, 0x7f09008e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 2022
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "button_default_setup_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    .line 2023
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string v1, "VALUE_OF_CURRENT_SELECTION_MODE"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    .line 2025
    sget-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 2026
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    .line 2027
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2028
    const-string v0, "0"

    sput-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    .line 2032
    :goto_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string v1, "VALUE_OF_CURRENT_SELECTION_MODE"

    sget-object v2, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2034
    :cond_3
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inital Prefs Value -: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    sget-object v1, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2037
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/phone/NetworkSetting$13;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkSetting$13;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2052
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2053
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    if-nez v0, :cond_4

    .line 2055
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2056
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    .line 2057
    const-string v0, "phone"

    const-string v1, "Menu is disabled."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    if-eqz v0, :cond_4

    .line 2059
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 2060
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetToAutomaticMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDefaultSetup setting to Automatic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    :cond_4
    const-string v0, "enabled"

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string v2, "FAKE_PLMN_MODE"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2066
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    .line 2067
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2070
    :cond_5
    const-string v0, "usa_gsm_support_femto_cell_network"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2071
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "button_srch_femto_cell_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchFemto:Landroid/preference/Preference;

    .line 2072
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchFemto:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2075
    :cond_6
    const-string v0, "feature_enable_csp"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2076
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2077
    const-string v0, "[CSP] Enabling Operator Selection menu."

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 2078
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    .line 2083
    :goto_1
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2087
    :cond_7
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2088
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.PLMNACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2089
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPlmnReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2091
    :cond_8
    return-void

    .line 2030
    :cond_9
    const-string v0, "1"

    sput-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    goto/16 :goto_0

    .line 2080
    :cond_a
    const-string v0, "[CSP] Disabling Operator Selection menu."

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 2081
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    goto :goto_1
.end method

.method private displayEmptyNetworkList(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayEmptyNetworkList flag :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1113
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    if-eqz p1, :cond_0

    const v0, 0x7f09008c

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 1114
    return-void

    .line 1113
    :cond_0
    const v0, 0x7f09008a

    goto :goto_0
.end method

.method private displayNetworkQueryFailed(I)V
    .locals 3
    .parameter

    .prologue
    .line 1136
    const-string v0, "displayNetworkQueryFailed"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1137
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 1139
    const-string v0, "phone"

    const-string v1, "isplayNetworkQueryFailed: defaultSetupLp setting to Automatic"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1144
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    .line 1147
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1148
    return-void
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f090091

    const/4 v2, 0x1

    .line 1152
    const-string v0, "displayNetworkSelectionFailed"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkForbiddenNetwork = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->checkForbiddenNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1155
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    .line 1157
    const-string v0, "NetworkSelectionFailed because of ILLEGAL_SIM_OR_ME"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1168
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    .line 1172
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1173
    return-void

    .line 1160
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->checkForbiddenNetwork:Z

    if-ne v0, v2, :cond_1

    .line 1161
    const-string v0, "NetworkSelectionFailed because of ForbiddenNetwork"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1164
    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private displayNetworkSelectionSucceeded(I)V
    .locals 4
    .parameter

    .prologue
    .line 1177
    const-string v0, "displayNetworkSelectionSucceeded"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1182
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1184
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    .line 1187
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1189
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/NetworkSetting$11;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkSetting$11;-><init>(Lcom/android/phone/NetworkSetting;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1194
    return-void
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayNetworkSeletionInProgress mIsForeground :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1119
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090090

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayNetworkSeletionInProgress mNetworkSelectMsg :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1122
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 1129
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 1133
    :cond_0
    return-void
.end method

.method private enableMobileData(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1902
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworkSetting] enableMobileData() mIsDisconnectingData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    if-eqz p1, :cond_0

    .line 1905
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMobileDataEnabled(Z)V

    .line 1906
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    .line 1908
    :cond_0
    return-void
.end method

.method private getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 1
    .parameter "ni"

    .prologue
    .line 1602
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1603
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 1607
    :goto_0
    return-object v0

    .line 1604
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1605
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1607
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private goBackToPreviousManualNetwork()V
    .locals 5

    .prologue
    .line 1767
    const-string v0, "Manual_Selected_Operator"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1768
    const-string v1, "Operator_Numeric"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1769
    const-string v2, "Operator_AlphaLong"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1771
    const-string v2, "phone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goBackToPreviousManualNetwork operatorNumeric: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " operatorAlphaLong: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 1774
    const-string v0, "phone"

    const-string v1, "I am going back with out calling selectNetworkManually"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    :goto_0
    return-void

    .line 1777
    :cond_0
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x320

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1778
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private handleManualFailCase()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1919
    const-string v0, "1"

    sget-object v1, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1920
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 1921
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    if-eqz v0, :cond_1

    .line 1922
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 1923
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V

    .line 1927
    :goto_0
    const-string v0, "phone"

    const-string v1, "EVENT_NETWORK_SELECTION_DONE, Set Automatic"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_0
    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    .line 1934
    iput-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    .line 1935
    return-void

    .line 1925
    :cond_1
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1929
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    if-eqz v0, :cond_0

    .line 1930
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->goBackToPreviousManualNetwork()V

    goto :goto_1
.end method

.method private handleManualSuccessCase()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 1952
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1953
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 1957
    :cond_0
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1958
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    sget-object v1, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1959
    iput-boolean v5, p0, Lcom/android/phone/NetworkSetting;->mSetAuto:Z

    .line 1960
    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V

    .line 1961
    iput-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    .line 1962
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 1966
    :cond_1
    sget-object v0, Lcom/android/phone/NetworkSetting;->Operator_Numeric:Ljava/lang/String;

    .line 1967
    sget-object v1, Lcom/android/phone/NetworkSetting;->Operator_Alphalong:Ljava/lang/String;

    .line 1968
    const-string v2, "phone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network Registered- selectedOperatorNumeric: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "selectedOperatorAlphaLong"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1971
    const-string v2, "Manual_Selected_Operator"

    invoke-virtual {p0, v2, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1972
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1973
    const-string v3, "Operator_Numeric"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1974
    const-string v0, "Operator_AlphaLong"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1975
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1976
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1977
    iput-boolean v5, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    .line 1980
    :cond_2
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/NetworkSetting$12;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkSetting$12;-><init>(Lcom/android/phone/NetworkSetting;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1985
    return-void
.end method

.method private isDataConnectedNow(I)Z
    .locals 3
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 1672
    const/4 v0, 0x0

    .line 1673
    .local v0, mDataEnabled:Z
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    if-ne v2, v1, :cond_1

    .line 1679
    :goto_0
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    :goto_1
    return v1

    .line 1676
    :cond_1
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0

    .line 1679
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private loadNetworksList()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1197
    const-string v0, "load networks list..."

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1201
    :try_start_0
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    if-ne v0, v1, :cond_1

    .line 1203
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService2:Lcom/android/phone/INetworkQueryService2;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService2:Lcom/android/phone/INetworkQueryService2;

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mCallback2:Lcom/android/phone/INetworkQueryServiceCallback2;

    invoke-interface {v0, v1}, Lcom/android/phone/INetworkQueryService2;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 1213
    return-void

    .line 1206
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v0, v1}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2184
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworksList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2188
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworksList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2189
    return-void
.end method

.method private networksListLoaded(Ljava/util/List;I)V
    .locals 24
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1223
    const-string v2, "networks list loaded"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1226
    const-string v2, "DIALOG_NETWORK_LIST_LOAD : hideProgressPanel"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1228
    const/16 v2, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 1230
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1232
    const-string v2, "usa_gsm_network_setting"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1234
    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    if-nez v2, :cond_0

    .line 1235
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    .line 1238
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    .line 1240
    if-eqz p2, :cond_3

    .line 1241
    const-string v2, "error while querying available networks"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1242
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/NetworkSetting;->displayNetworkQueryFailed(I)V

    .line 1243
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 1579
    :cond_1
    :goto_0
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1581
    :try_start_0
    sget v2, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_48

    .line 1582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService2:Lcom/android/phone/INetworkQueryService2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NetworkSetting;->mCallback2:Lcom/android/phone/INetworkQueryServiceCallback2;

    invoke-interface {v2, v3}, Lcom/android/phone/INetworkQueryService2;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1590
    :cond_2
    :goto_1
    return-void

    .line 1245
    :cond_3
    if-eqz p1, :cond_47

    .line 1246
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 1248
    const/4 v2, 0x0

    .line 1249
    const/4 v4, 0x0

    .line 1250
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    .line 1251
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 1253
    :cond_4
    new-array v11, v3, [Ljava/lang/String;

    .line 1254
    const/4 v2, 0x0

    .line 1257
    new-instance v12, Ljava/util/HashSet;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v12, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 1263
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v9, v4

    move v10, v2

    :cond_5
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/internal/telephony/OperatorInfo;

    .line 1264
    new-instance v14, Landroid/preference/Preference;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1266
    const-string v2, "remove_duplicated_name_in_plmn_list"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "usa_gsm_network_setting"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1268
    :cond_6
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v10

    .line 1269
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v10, :cond_4a

    .line 1270
    aget-object v3, v11, v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1271
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    move v2, v9

    .line 1279
    :goto_5
    if-eqz v2, :cond_9

    .line 1280
    const/4 v2, 0x0

    .line 1305
    :goto_6
    add-int/lit8 v3, v10, 0x1

    :goto_7
    move v9, v2

    move v10, v3

    .line 1574
    goto :goto_3

    .line 1273
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkSetting: Skipped!: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1274
    const/4 v9, 0x1

    move v2, v9

    .line 1275
    goto :goto_5

    .line 1269
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1282
    :cond_9
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    .line 1283
    :cond_a
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1286
    :goto_8
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v3, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 1285
    :cond_b
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1307
    :cond_c
    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1308
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    .line 1309
    const-string v2, " (2G)"

    .line 1310
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v4

    .line 1311
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Network List] check rat : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1312
    if-eqz v4, :cond_d

    .line 1313
    const-string v5, "UMTS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1314
    const-string v2, " (3G)"

    .line 1318
    :cond_d
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1319
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v2, v3, :cond_10

    .line 1320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FORBIDDEN Network : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1321
    const v2, 0x7f090453

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 1569
    :cond_e
    :goto_a
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    const-string v2, "  "

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    move v2, v9

    move v3, v10

    goto/16 :goto_7

    .line 1315
    :cond_f
    const-string v5, "LTE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1316
    const-string v2, " (LTE)"

    goto :goto_9

    .line 1323
    :cond_10
    const v2, 0x7f090455

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_a

    .line 1326
    :cond_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ShowRatInNetworkList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1327
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    .line 1329
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v2

    .line 1331
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string v4, "334050"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1332
    const-string v3, "UMTS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1333
    const-string v2, "Iusacell NextG"

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 1335
    :cond_12
    const-string v2, "Iusacell GSM"

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 1338
    :cond_13
    const-string v3, "UMTS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(3G)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1341
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(2G)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1344
    :cond_15
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplayRatInfoInManualNetSearchList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1346
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v2

    .line 1347
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v3

    .line 1348
    const-string v4, "unknown"

    .line 1350
    const-string v4, "phone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inside TAG_CSCFEATURE_RIL_DISPLAY_RATINFO_MANUALSEARCH"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Netowkr list] network_state_temp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1352
    const-string v4, "feature_can"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1353
    sget-object v4, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v3, v4, :cond_18

    .line 1354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AVAILABLE Network : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1355
    const v3, 0x7f090455

    invoke-virtual {v14, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 1365
    :cond_16
    :goto_b
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string v4, "50506"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "feature_vau"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3Telstra("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1372
    :goto_c
    sget-boolean v3, Lcom/android/phone/NetworkSetting;->DBG:Z

    if-eqz v3, :cond_17

    const-string v3, "phone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[legna01] getOperatorNumeric is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Netowkr list] ni.getOperatorAlphaLong() + actStr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1356
    :cond_18
    sget-object v4, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v3, v4, :cond_19

    .line 1357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CURRENT Network : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1358
    const v3, 0x7f090454

    invoke-virtual {v14, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 1359
    :cond_19
    sget-object v4, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v3, v4, :cond_16

    .line 1360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FORBIDDEN Network : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1361
    const v3, 0x7f090453

    invoke-virtual {v14, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 1367
    :cond_1a
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string v4, "50501"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "feature_vau"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Telstra("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 1370
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 1374
    :cond_1c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_IgnoreWrongNITZInformation"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1375
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 1376
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "COMCERL"

    const/4 v6, 0x0

    const-string v7, "COMCERL"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 1377
    const-string v2, "TIGO"

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1379
    :cond_1d
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1382
    :cond_1e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_PLMNFaking4Mvno"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 1384
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    .line 1385
    const-string v3, "Gtd_Telsur"

    .line 1386
    const-string v4, "Virgin"

    .line 1387
    const-string v5, "GTEL Netline"

    .line 1388
    const-string v6, "vtr"

    .line 1389
    const-string v7, "Falabella"

    .line 1390
    const-string v15, "Nextel R"

    .line 1391
    const-string v16, "Virgin Mobile"

    .line 1392
    const-string v17, "ETB"

    .line 1393
    const-string v18, "Exito"

    .line 1394
    const-string v19, "Uff Movil"

    .line 1395
    const-string v20, "UNE"

    .line 1396
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v21

    .line 1397
    const-string v22, "gsm.sim.operator.numeric"

    const-string v23, ""

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1399
    if-eqz v21, :cond_34

    if-eqz v22, :cond_34

    .line 1400
    const-string v23, "73007"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_21

    const-string v23, "73002"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_21

    .line 1401
    if-eqz v2, :cond_e

    .line 1402
    const-string v6, "7300701"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1403
    invoke-virtual {v14, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1405
    :cond_1f
    const-string v3, "7300702"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1406
    invoke-virtual {v14, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1408
    :cond_20
    const-string v3, "7300703"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1409
    invoke-virtual {v14, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1412
    :cond_21
    const-string v3, "73008"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    const-string v3, "73002"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1413
    invoke-virtual {v14, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1414
    :cond_22
    const-string v3, "73009"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, "73001"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "73010"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1415
    :cond_23
    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1416
    :cond_24
    const-string v3, "73001"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, "73010"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1418
    :cond_25
    if-eqz v2, :cond_e

    .line 1419
    const-string v3, "73001300"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string v3, "73010300"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1421
    :cond_26
    invoke-virtual {v14, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1425
    :cond_27
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1428
    :cond_28
    const-string v3, "732103"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1430
    if-eqz v2, :cond_e

    .line 1431
    const-string v3, "732103017"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1433
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1435
    :cond_29
    const-string v3, "732103054"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "732103055"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1437
    :cond_2a
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1439
    :cond_2b
    const-string v3, "732103018"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    const-string v3, "732103019"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1441
    :cond_2c
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1443
    :cond_2d
    const-string v3, "732103024"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "7321030027"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "7321030028"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "7321030029"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1445
    :cond_2e
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1449
    :cond_2f
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1453
    :cond_30
    const-string v3, "732123"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1455
    if-eqz v2, :cond_e

    .line 1456
    const-string v3, "732123900"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string v3, "732154"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1458
    :cond_31
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1462
    :cond_32
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1468
    :cond_33
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1471
    :cond_34
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1474
    :cond_35
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_RemoveDuplicatedNetDuringManualSearch"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1475
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1476
    invoke-interface {v12, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1479
    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1482
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1483
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 1484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    const-string v2, "  "

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1490
    :cond_36
    const-string v2, "dcm_show_separated_network_list"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1491
    const/4 v2, 0x0

    .line 1495
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string v4, "44010"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1496
    if-nez v9, :cond_49

    .line 1497
    const-string v2, "[LTE/3G] "

    .line 1498
    const/4 v9, 0x1

    move-object v3, v2

    move v2, v9

    .line 1509
    :goto_d
    if-nez v3, :cond_3a

    move v9, v2

    .line 1510
    goto/16 :goto_3

    .line 1501
    :cond_37
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1502
    const-string v2, "[LTE] "

    move-object v3, v2

    move v2, v9

    goto :goto_d

    .line 1503
    :cond_38
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UMTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1504
    const-string v2, "[3G] "

    move-object v3, v2

    move v2, v9

    goto :goto_d

    .line 1506
    :cond_39
    const-string v2, "[GSM] "

    move-object v3, v2

    move v2, v9

    goto :goto_d

    .line 1512
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1515
    const-string v3, "dcm_forbidden_network_show"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1516
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v3, v4, :cond_3c

    .line 1517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FORBIDDEN Network : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1518
    const v3, 0x7f090453

    invoke-virtual {v14, v3}, Landroid/preference/Preference;->setSummary(I)V

    :cond_3b
    :goto_e
    move v9, v2

    .line 1523
    goto/16 :goto_a

    .line 1520
    :cond_3c
    const v3, 0x7f090455

    invoke-virtual {v14, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_e

    .line 1524
    :cond_3d
    const-string v2, "kdi_show_separated_network_list"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1527
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1528
    const-string v2, "[LTE] "

    .line 1534
    :goto_f
    if-eqz v2, :cond_5

    .line 1537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1529
    :cond_3e
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UMTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1530
    const-string v2, "[3G] "

    goto :goto_f

    .line 1532
    :cond_3f
    const-string v2, "[GSM] "

    goto :goto_f

    .line 1539
    :cond_40
    const-string v2, "network_state_manual_search"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1541
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v2

    .line 1543
    const-string v3, "phone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inside NETWORK_STATE_MANUAL_SEARCH"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Netowkr list] network_state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1545
    sget-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v2, v3, :cond_42

    .line 1546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AVAILABLE Network : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1547
    const v2, 0x7f090455

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 1556
    :cond_41
    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1548
    :cond_42
    sget-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v2, v3, :cond_43

    .line 1549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CURRENT Network : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1550
    const v2, 0x7f090454

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_10

    .line 1551
    :cond_43
    sget-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v2, v3, :cond_41

    .line 1552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FORBIDDEN Network : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1553
    const v2, 0x7f090453

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_10

    .line 1560
    :cond_44
    const-string v2, "TGY"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, "45416"

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    const-string v2, "45419"

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1562
    :cond_45
    const-string v2, "PCCW-HKT"

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1565
    :cond_46
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1576
    :cond_47
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    goto/16 :goto_0

    .line 1583
    :cond_48
    :try_start_1
    sget v2, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    if-nez v2, :cond_2

    .line 1584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v2, v3}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1586
    :catch_0
    move-exception v2

    .line 1587
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_49
    move-object v3, v2

    move v2, v9

    goto/16 :goto_d

    :cond_4a
    move v2, v9

    goto/16 :goto_5
.end method

.method private reScanManualSelection(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 2097
    if-eqz p1, :cond_0

    .line 2098
    const-string v0, "search-type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2099
    const-string v1, "manual"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search-type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 2101
    new-instance v0, Lcom/android/phone/NetworkSetting$14;

    const-wide/16 v2, 0x5dc

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/NetworkSetting$14;-><init>(Lcom/android/phone/NetworkSetting;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2123
    :cond_0
    return-void
.end method

.method private removeAllDialog()V
    .locals 2

    .prologue
    .line 1102
    const-string v0, "removeAllDialog"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1103
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 1104
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 1105
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 1106
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 1107
    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 1109
    return-void
.end method

.method private selectList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1684
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1685
    const-string v0, "phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1687
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mTempPreference:Landroid/preference/Preference;

    .line 1688
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OperatorInfo;

    .line 1689
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/NetworkSetting;->checkForbiddenNetwork:Z

    .line 1690
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v2, v3, :cond_0

    .line 1691
    iput-boolean v4, p0, Lcom/android/phone/NetworkSetting;->checkForbiddenNetwork:Z

    .line 1692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForbiddenNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/NetworkSetting;->checkForbiddenNetwork:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1695
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplayRatInfoInManualNetSearchList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1697
    :cond_1
    const-string v2, "2G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "GERAN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1699
    :cond_2
    const-string v2, "ril.network_manual_set.rat"

    const-string v3, "2G"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    const-string v2, "phone"

    const-string v3, "2G"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    :cond_3
    :goto_0
    const-string v2, "dcm_show_separated_network_list"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1724
    const-string v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1726
    const-string v2, "ril.network_manual_set.rat"

    const-string v3, "2G"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    const-string v2, "phone"

    const-string v3, "2G"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1759
    if-eqz v0, :cond_5

    .line 1760
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v0, v2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 1761
    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    .line 1763
    :cond_5
    return-void

    .line 1702
    :cond_6
    const-string v2, "3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "UMTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1704
    :cond_7
    const-string v2, "ril.network_manual_set.rat"

    const-string v3, "3G"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    const-string v2, "phone"

    const-string v3, "3G"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1707
    :cond_8
    const-string v2, "4G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "LTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1709
    :cond_9
    const-string v2, "ril.network_manual_set.rat"

    const-string v3, "4G"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    const-string v2, "phone"

    const-string v3, "4G"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1712
    :cond_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ShowRatInNetworkList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1713
    const-string v2, "2G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "GERAN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1714
    :cond_b
    const-string v2, "ril.network_manual_set.rat"

    const-string v3, "2G"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    const-string v2, "phone"

    const-string v3, "2G"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1717
    :cond_c
    const-string v2, "ril.network_manual_set.rat"

    const-string v3, "3G"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    const-string v2, "phone"

    const-string v3, "3G"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1729
    :cond_d
    const-string v2, "3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1731
    const-string v2, "ril.network_manual_set.rat"

    const-string v3, "3G"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    const-string v2, "phone"

    const-string v3, "3G"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1734
    :cond_e
    const-string v2, "LTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1736
    const-string v2, "ril.network_manual_set.rat"

    const-string v3, "4G"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    const-string v2, "phone"

    const-string v3, "4G"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1739
    :cond_f
    const-string v2, "kdi_show_separated_network_list"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1740
    const-string v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1742
    const-string v2, "ril.network_manual_set.rat"

    const-string v3, "GSM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    const-string v2, "phone"

    const-string v3, "GSM"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1745
    :cond_10
    const-string v2, "3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1747
    const-string v2, "ril.network_manual_set.rat"

    const-string v3, "WCDMA"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    const-string v2, "phone"

    const-string v3, "WCDMA"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1750
    :cond_11
    const-string v2, "LTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1752
    const-string v2, "ril.network_manual_set.rat"

    const-string v3, "LTE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    const-string v2, "phone"

    const-string v3, "LTE"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private selectNetworkAutomatic(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1788
    const-string v0, "select network automatically..."

    invoke-direct {p0, v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1792
    if-ne p1, v3, :cond_1

    .line 1793
    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 1794
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 1796
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1805
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1810
    :goto_1
    return-void

    .line 1798
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_2

    .line 1799
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSetAuto:Z

    if-nez v0, :cond_2

    .line 1800
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 1802
    :cond_2
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1806
    :catch_0
    move-exception v0

    .line 1807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...........exception occured when select network automatically, exception is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private setMobileDataEnabled(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 916
    const-string v1, "dcm_change_data_enable_func"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 925
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 926
    .local v0, state:I
    const-string v1, "phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TelephonyManager.getDataState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    if-eqz p1, :cond_1

    .line 930
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->enableDataConnectivity()Z

    .line 956
    .end local v0           #state:I
    :cond_0
    :goto_0
    return-void

    .line 933
    .restart local v0       #state:I
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->disableDataConnectivity()Z

    goto :goto_0

    .line 936
    .end local v0           #state:I
    :cond_2
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    .line 938
    const-string v1, "feature_chn_duos_gsm_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 942
    :cond_3
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method private setMode(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1914
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string v1, "VALUE_OF_CURRENT_SELECTION_MODE"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1915
    return-void
.end method

.method private final updateDataState()V
    .locals 10

    .prologue
    const/16 v9, 0x7d0

    const-wide/16 v7, 0x7d0

    const/16 v6, 0xbb9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1813
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 1814
    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1815
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getDataState()I

    move-result v0

    .line 1816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1819
    :cond_0
    const-string v1, "phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NetworksList] current data state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1821
    packed-switch v0, :pswitch_data_0

    .line 1869
    :cond_1
    :goto_0
    return-void

    .line 1823
    :pswitch_0
    const-string v0, "phone"

    const-string v1, "[NetworksList] DATA DISCONNECTED !!!"

    invoke-static {v0, v1, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1830
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mFailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mFailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1831
    const-string v0, "phone"

    const-string v1, "[NetworksList] Should not be here! Do cancel operation!"

    invoke-static {v0, v1, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1832
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1836
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NetworksList] updateDataState() ActionType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1837
    iget v0, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    const/16 v1, -0x2711

    if-ne v0, v1, :cond_5

    .line 1838
    const-string v0, "phone"

    const-string v1, "[NetworksList] searching ..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1840
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1843
    :cond_3
    const-string v0, "dcm_start_search_delay"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1844
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1848
    :goto_1
    iput v4, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    goto :goto_0

    .line 1846
    :cond_4
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1850
    :cond_5
    iget v0, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    const/16 v1, -0x2712

    if-ne v0, v1, :cond_6

    .line 1852
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1853
    iput v4, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    goto :goto_0

    .line 1854
    :cond_6
    iget v0, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    const/16 v1, -0x2713

    if-ne v0, v1, :cond_8

    .line 1857
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1858
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1860
    :cond_7
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1861
    iput v4, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    goto/16 :goto_0

    .line 1862
    :cond_8
    iget v0, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    const/16 v1, -0x2714

    if-ne v0, v1, :cond_1

    .line 1863
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->selectCsg(Landroid/os/Message;)V

    .line 1864
    iput v4, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    goto/16 :goto_0

    .line 1821
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePLMNmode()V
    .locals 1

    .prologue
    .line 636
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->onResume()V

    .line 639
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 609
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mFailDialog:Landroid/app/AlertDialog;

    if-ne p1, v1, :cond_0

    .line 610
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 632
    :goto_0
    return-void

    .line 615
    :cond_0
    :try_start_0
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 616
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService2:Lcom/android/phone/INetworkQueryService2;

    if-eqz v1, :cond_1

    .line 617
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService2:Lcom/android/phone/INetworkQueryService2;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback2:Lcom/android/phone/INetworkQueryServiceCallback2;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService2;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    if-eqz v1, :cond_2

    .line 628
    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->enableMobileData(Z)V

    .line 630
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 620
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_1

    .line 621
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 627
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    if-eqz v2, :cond_4

    .line 628
    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->enableMobileData(Z)V

    .line 630
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 777
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 778
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x40

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 650
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 651
    const-string v7, "onCreate"

    invoke-direct {p0, v7, v10}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 653
    const-string v7, "custom_setting"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 657
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.samsung.android.phone"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 659
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v7, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 661
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.samsung.android.phone"

    const-string v9, "com.samsung.android.phone.NetworkOperators"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 664
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 667
    :catch_0
    move-exception v7

    .line 672
    :cond_1
    const v7, 0x7f060012

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 673
    const-string v7, "ctc_dual_mode"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 675
    const-string v7, "feature_chn_duos_gsm_gsm"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 676
    sget v7, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    if-ne v7, v10, :cond_5

    .line 677
    const-string v7, "phone2"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 692
    :goto_1
    const-string v7, "feature_chn_duos_gsm_gsm"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 693
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    sget v7, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-static {v7}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 709
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 710
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 712
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 714
    :cond_2
    const-string v7, "sec_product_feature_common_dsds_support"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 715
    const-string v7, "persist.sys.dataprefer.simid"

    invoke-static {v7, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 716
    .local v2, currentDataSlot:I
    iget-object v7, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v7, v2, v8, v12}, Landroid/telephony/TelephonyManager;->listenDs(ILandroid/telephony/PhoneStateListener;I)V

    .line 718
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentDataSlot : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 723
    .end local v2           #currentDataSlot:I
    :goto_3
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 724
    .local v6, prefSet:Landroid/preference/PreferenceScreen;
    const-string v7, "list_networks_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    iput-object v7, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    .line 725
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    .line 726
    const-string v7, "button_srch_netwrks_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    .line 727
    const-string v7, "button_auto_select_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    .line 729
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    .line 730
    iput-object p0, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    .line 731
    const-string v7, "usa_gsm_network_setting"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 732
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->checkCspPlmn()V

    .line 733
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->createForUSAGSM()V

    .line 739
    :goto_4
    const-string v7, "usa_gsm_support_femto_cell_network"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 740
    const-string v7, "button_srch_femto_cell_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 741
    iput-object v13, p0, Lcom/android/phone/NetworkSetting;->mSearchFemto:Landroid/preference/Preference;

    .line 744
    :cond_3
    const-string v7, "power"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, p0, Lcom/android/phone/NetworkSetting;->mPowerManager:Landroid/os/PowerManager;

    .line 751
    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    sget v7, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    if-ne v7, v10, :cond_f

    .line 753
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/android/phone/NetworkQueryService2;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 754
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/phone/NetworkQueryService2;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v9, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 761
    :goto_5
    iget-object v7, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Lcom/android/phone/NetworkSetting;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    .line 763
    const-string v7, "connectivity"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/NetworkSetting;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 766
    const-string v7, "network_manual_selection_when_bootup"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "network_manual_selection_when_bootup"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 768
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "network_manual_selection_when_bootup"

    invoke-virtual {v7, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z

    .line 770
    :cond_4
    const-string v7, "feature_tmo"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 771
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 772
    .local v4, extras:Landroid/os/Bundle;
    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->reScanManualSelection(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 679
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v4           #extras:Landroid/os/Bundle;
    .end local v6           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_5
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto/16 :goto_1

    .line 682
    :cond_6
    const-string v7, "phone2"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto/16 :goto_1

    .line 685
    :cond_7
    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 686
    const-string v7, "persist.sys.dataprefer.simid"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, dataPrefered:Ljava/lang/String;
    const-string v7, "phone"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto/16 :goto_1

    .line 689
    .end local v3           #dataPrefered:Ljava/lang/String;
    :cond_8
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto/16 :goto_1

    .line 695
    :cond_9
    const-string v7, "sec_product_feature_common_dsds_support"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 696
    sget v7, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-static {v7}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_2

    .line 697
    :cond_a
    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 698
    sput v11, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    .line 699
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 700
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "sim_id"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 701
    const-string v7, "sim_id"

    invoke-virtual {v5, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    .line 703
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mActivePhone : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v10}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 704
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    sget v8, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    aget-object v7, v7, v8

    iput-object v7, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_2

    .line 706
    .end local v5           #intent:Landroid/content/Intent;
    :cond_c
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_2

    .line 720
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    :cond_d
    iget-object v7, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v7, v8, v12}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_3

    .line 735
    .restart local v6       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_e
    const-string v7, "button_default_setup_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 736
    iput-object v13, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    goto/16 :goto_4

    .line 756
    :cond_f
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 757
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v9, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto/16 :goto_5
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter

    .prologue
    const v3, 0x7f09008b

    const/16 v7, 0x320

    const v6, 0x7f090022

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1001
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x190

    if-eq p1, v0, :cond_0

    const/16 v0, 0x384

    if-ne p1, v0, :cond_1

    .line 1005
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1007
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1008
    sparse-switch p1, :sswitch_data_0

    .line 1042
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default Message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1044
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1045
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1046
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1085
    :goto_1
    return-object v0

    .line 1015
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DIALOG_NETWORK_SELECTION Message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1016
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1017
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1018
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1

    .line 1021
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DIALOG_NETWORK_AUTO_SELECT Message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1022
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1023
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1024
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1

    .line 1027
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DIALOG_NETWORK_AUTO_SELECT_AFTER_FAIL Message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090458

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1028
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090458

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1030
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1031
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_1

    .line 1034
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DIALOG_NETWORK_SEARCH_FEMTO_CELL Message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09044e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1035
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09044e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1036
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1037
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_1

    .line 1040
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DIALOG_NETWORK_LIST_LOAD Message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1050
    :cond_1
    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x258

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2bc

    if-eq p1, v0, :cond_2

    if-ne p1, v7, :cond_8

    .line 1053
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090456

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1058
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_4

    .line 1059
    const-string v1, "DIALOG_PHONE_STATE_NOT_IDLE CASE"

    invoke-direct {p0, v1, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1060
    const v1, 0x7f090452

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1082
    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mFailDialog:Landroid/app/AlertDialog;

    .line 1083
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mFailDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 1063
    :cond_4
    const-string v1, "DATA_CONNECTED CASE"

    invoke-direct {p0, v1, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1064
    if-ne p1, v7, :cond_5

    .line 1065
    const v1, 0x7f09011d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1071
    :goto_3
    const/16 v1, 0x258

    if-ne p1, v1, :cond_6

    .line 1072
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mDisconnectSearchDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 1068
    :cond_5
    const v1, 0x7f090457

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 1074
    :cond_6
    const/16 v1, 0x2bc

    if-ne p1, v1, :cond_7

    .line 1075
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mDisconnectAutoSelectDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 1077
    :cond_7
    if-ne p1, v7, :cond_3

    .line 1078
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 1085
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1008
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_4
        0x12c -> :sswitch_1
        0x190 -> :sswitch_2
        0x384 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/16 v3, 0x1f4

    const/4 v4, 0x1

    .line 857
    const-string v1, "onDestroy"

    invoke-direct {p0, v1, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 861
    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->backToAutoMode()V

    .line 867
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 875
    const-string v1, "network_manual_selection_when_bootup"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 876
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z

    .line 877
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 881
    :cond_1
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 882
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPlmnReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 888
    :cond_2
    const-string v1, "dcm_data_enable_on_destroy"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "data_enable_on_destroy"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 890
    :cond_3
    const-string v1, "phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy - mIsDisconnectingData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 891
    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->enableMobileData(Z)V

    .line 894
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->removeAllDialog()V

    .line 896
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 897
    return-void

    .line 868
    :catch_0
    move-exception v0

    .line 871
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    const-string v1, "phone"

    const-string v2, "Service not registered"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 1893
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1894
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1895
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1896
    const/4 v0, 0x1

    .line 1898
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 815
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 816
    const-string v0, "onPause"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 817
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 819
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mOnPauseTransition:Z

    .line 822
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/16 v5, 0x1f4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 553
    iput-object p2, p0, Lcom/android/phone/NetworkSetting;->mTempPreference:Landroid/preference/Preference;

    .line 555
    const/4 v0, 0x0

    .line 557
    .local v0, handled:Z
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    .line 558
    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    .line 561
    :cond_0
    sget-object v2, Lcom/android/phone/NetworkSetting$userSelectionType;->SEARCH:Lcom/android/phone/NetworkSetting$userSelectionType;

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->checkDataConnection(Lcom/android/phone/NetworkSetting$userSelectionType;)V

    .line 562
    const/4 v0, 0x1

    .line 598
    :cond_1
    :goto_0
    const-string v2, "network_manual_selection_when_bootup"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 600
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 602
    :cond_2
    return v0

    .line 563
    :cond_3
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    if-ne p2, v2, :cond_4

    .line 564
    sget-object v2, Lcom/android/phone/NetworkSetting$userSelectionType;->AUTOSELECT:Lcom/android/phone/NetworkSetting$userSelectionType;

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->checkDataConnection(Lcom/android/phone/NetworkSetting$userSelectionType;)V

    .line 565
    const/4 v0, 0x1

    goto :goto_0

    .line 566
    :cond_4
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    if-ne p2, v2, :cond_5

    .line 567
    const/4 v0, 0x1

    .line 568
    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 569
    iput-boolean v4, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    goto :goto_0

    .line 571
    :cond_5
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mSearchFemto:Landroid/preference/Preference;

    if-ne p2, v2, :cond_8

    .line 572
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getOCSGLAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 573
    const/16 v2, 0x384

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 574
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 575
    .local v1, state:I
    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->isDataConnectedNow(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 576
    const-string v2, "mSearchFemto.. disconnecting data"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 577
    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->setMobileDataEnabled(Z)V

    .line 578
    const/16 v2, -0x2714

    iput v2, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    .line 579
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mIsDataDisconnectingFemto:Z

    goto :goto_0

    .line 581
    :cond_6
    const-string v2, "mSearchFemto.. selectCSG"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 582
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->selectCsg(Landroid/os/Message;)V

    goto :goto_0

    .line 586
    .end local v1           #state:I
    :cond_7
    const-string v2, "mSearchFemto.. !getOCSGLAvailable()... fail"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 587
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const v3, 0x7f09044f

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 594
    :cond_8
    sget-object v2, Lcom/android/phone/NetworkSetting$userSelectionType;->SELECTLIST:Lcom/android/phone/NetworkSetting$userSelectionType;

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->checkDataConnection(Lcom/android/phone/NetworkSetting$userSelectionType;)V

    .line 595
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepareDialog id :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " // dialog : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 1091
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x190

    if-eq p1, v0, :cond_0

    const/16 v0, 0x384

    if-ne p1, v0, :cond_1

    .line 1097
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1099
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 782
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 783
    const-string v0, "onResume"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 784
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 786
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 787
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mOnPauseTransition:Z

    .line 788
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z

    if-eqz v0, :cond_0

    .line 789
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z

    .line 790
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->checkCspPlmn()V

    .line 793
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    if-nez v0, :cond_1

    .line 794
    const-string v0, "phone"

    const-string v1, "onResume - Menu is disabled."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    if-eqz v0, :cond_1

    .line 796
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    .line 797
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume - setToAutomaticMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " defaultSetupLp setting to Automatic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;

    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 803
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    if-nez v0, :cond_2

    .line 804
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    .line 807
    :cond_2
    const-string v0, "enabled"

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string v2, "FAKE_PLMN_MODE"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 808
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    .line 811
    :cond_3
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 826
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 827
    const-string v1, "onStop"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    .line 829
    const-string v1, "networksearching_in_can"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 831
    :try_start_0
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    if-ne v1, v2, :cond_3

    .line 832
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService2:Lcom/android/phone/INetworkQueryService2;

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService2:Lcom/android/phone/INetworkQueryService2;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback2:Lcom/android/phone/INetworkQueryServiceCallback2;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService2;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    if-eqz v1, :cond_1

    .line 844
    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->enableMobileData(Z)V

    .line 846
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 849
    :cond_2
    return-void

    .line 836
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 843
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    if-eqz v2, :cond_4

    .line 844
    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->enableMobileData(Z)V

    .line 846
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    throw v1
.end method
