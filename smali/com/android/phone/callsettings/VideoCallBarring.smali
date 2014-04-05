.class public Lcom/android/phone/callsettings/VideoCallBarring;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "VideoCallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/VideoCallBarring$14;,
        Lcom/android/phone/callsettings/VideoCallBarring$AppState;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static mSimId:I


# instance fields
.field private callbarring_password:Ljava/lang/String;

.field doActivate:Ljava/lang/Runnable;

.field doCheckStatus:Ljava/lang/Runnable;

.field doConfirm:Ljava/lang/Runnable;

.field doDeactivate:Ljava/lang/Runnable;

.field editText:Landroid/widget/EditText;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

.field private mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

.field private mCheckAllCB:Z

.field private mConfirmPassword:Landroid/widget/EditText;

.field private mInputPassword:Landroid/widget/EditText;

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mNewPassword:Landroid/widget/EditText;

.field private mOldPassword:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevBusyDialog:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mPwdChangeSubmit:Z

.field private mSelectedIndex:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSkipCallBarringReq:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mVCBVisible:Z

.field private mVCB_Checked:Z

.field responseCBHandler:Landroid/os/Handler;

.field textEntryView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    .line 267
    sput v1, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    return-void

    :cond_0
    move v0, v1

    .line 122
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    .line 215
    iput v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    .line 217
    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    .line 236
    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mInputPassword:Landroid/widget/EditText;

    .line 238
    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    .line 240
    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNewPassword:Landroid/widget/EditText;

    .line 242
    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mConfirmPassword:Landroid/widget/EditText;

    .line 244
    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPwdChangeSubmit:Z

    .line 256
    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    .line 258
    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    .line 854
    new-instance v0, Lcom/android/phone/callsettings/VideoCallBarring$11;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/VideoCallBarring$11;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    .line 1234
    new-instance v0, Lcom/android/phone/callsettings/VideoCallBarring$12;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/VideoCallBarring$12;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    .line 1287
    new-instance v0, Lcom/android/phone/callsettings/VideoCallBarring$13;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/VideoCallBarring$13;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/VideoCallBarring;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->callbarring_password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/VideoCallBarring;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->callbarring_password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/VideoCallBarring;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/VideoCallBarring;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/callsettings/VideoCallBarring;->changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/VideoCallBarring;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/callsettings/VideoCallBarring;Landroid/os/AsyncResult;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/VideoCallBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/callsettings/VideoCallBarring;Landroid/os/AsyncResult;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/VideoCallBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/callsettings/VideoCallBarring;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    return p1
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    return v0
.end method

.method static synthetic access$2200(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/callsettings/VideoCallBarring;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->dismissCallWaiting()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/VideoCallBarring;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/callsettings/VideoCallBarring;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/phone/callsettings/VideoCallBarring;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/VideoCallBarring;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/VideoCallBarring;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/VideoCallBarring;->setCallBarring(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getCallBarring()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNewPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mConfirmPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_3

    .line 1314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    .line 1315
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    .line 1317
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePasswordCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    if-nez v0, :cond_0

    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_IN_SERVICE"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/callsettings/VideoCallBarring;->requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    :goto_0
    return-void

    .line 1327
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_POWER_OFF"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    .line 1331
    const-string v0, "onCreate: radio not ready, waiting for signal."

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1332
    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 1335
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_EXCEPTION"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0

    .line 1339
    :cond_3
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_4

    .line 1340
    const-string v0, "setDisplayMode: radio is off!"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1341
    :cond_4
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0
.end method

.method private checkPassword(Landroid/app/Dialog;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    .line 1354
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1355
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1356
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1358
    sget-boolean v3, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v3, :cond_0

    .line 1359
    const-class v3, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[##### View l_oldPasswordStr #####] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const-class v3, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[##### View l_newPasswordStr #####] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const-class v3, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[##### View l_confirmPasswordStr #####] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_2

    .line 1372
    :cond_1
    const v0, 0x7f090367

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1397
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->showError(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 1398
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1373
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_4

    .line 1376
    :cond_3
    const v0, 0x7f090368

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1377
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_6

    .line 1380
    :cond_5
    const v0, 0x7f090369

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1382
    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1387
    const v0, 0x7f09036b

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1390
    :cond_7
    const v0, 0x7f0902ba

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1391
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->doConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1392
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private deleteBusyDialog()V
    .locals 3

    .prologue
    .line 1276
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCheckAllCB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSelectedIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrevBusyDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPrevBusyDialog:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1285
    :goto_0
    return-void

    .line 1282
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    .line 1284
    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPrevBusyDialog:I

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->removeDialog(I)V

    goto :goto_0
.end method

.method private dismissCallWaiting()V
    .locals 1

    .prologue
    .line 1270
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    .line 1272
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->finish()V

    .line 1273
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1483
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1484
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1485
    return-void
.end method

.method private getCallBarring()V
    .locals 4

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_3

    .line 698
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    .line 700
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    if-nez v0, :cond_0

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_IN_SERVICE"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->requestCBQueryCommand()V

    .line 724
    :goto_0
    return-void

    .line 709
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_POWER_OFF"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    .line 712
    const-string v0, "onCreate: radio not ready, waiting for signal."

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 716
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_EXCEPTION"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0

    .line 720
    :cond_3
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_4

    .line 721
    const-string v0, "setDisplayMode: radio is off!"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 722
    :cond_4
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0
.end method

.method private handleQueryCBMessage(Landroid/os/AsyncResult;)I
    .locals 10
    .parameter "ar"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/16 v4, 0xc8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 926
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 927
    sget-boolean v3, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v3, :cond_0

    .line 928
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCBMessage() ar:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 929
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1

    .line 930
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 931
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_1

    .line 933
    const/16 v3, 0x384

    .line 1012
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 937
    goto :goto_0

    .line 939
    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 941
    .local v2, ints:[I
    sget-boolean v3, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v3, :cond_3

    .line 942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCBMessage() ints.length:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 944
    :cond_3
    sget-boolean v3, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v3, :cond_4

    .line 946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedItem = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 948
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 949
    const-string v3, "ints["

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "]:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aget v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 948
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 954
    .end local v1           #i:I
    :cond_4
    array-length v3, v2

    if-eqz v3, :cond_f

    .line 955
    sget-boolean v3, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v3, :cond_5

    .line 956
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCBMessage() ints[0]:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v5, v2, v7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 957
    :cond_5
    aget v3, v2, v7

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_a

    .line 959
    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_6

    .line 960
    const v3, 0x7f09035d

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    .line 962
    :cond_6
    iget v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    if-nez v3, :cond_7

    .line 963
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 964
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 967
    :cond_7
    iget v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    if-ne v3, v9, :cond_8

    .line 968
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 971
    :cond_8
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 972
    iput-boolean v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    .line 973
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1012
    :cond_9
    :goto_2
    const/16 v3, 0x64

    goto/16 :goto_0

    .line 977
    :cond_a
    aget v3, v2, v7

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_e

    .line 986
    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_b

    .line 987
    const v3, 0x7f09035c

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    .line 989
    :cond_b
    iget v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    if-nez v3, :cond_c

    .line 990
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 991
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 994
    :cond_c
    iget v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    if-ne v3, v9, :cond_d

    .line 995
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 998
    :cond_d
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_9

    .line 999
    iput-boolean v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    .line 1000
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_e
    move v3, v4

    .line 1005
    goto/16 :goto_0

    :cond_f
    move v3, v4

    .line 1008
    goto/16 :goto_0
.end method

.method private handleSetCBMessage(Landroid/os/AsyncResult;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v1, 0xc8

    const/16 v0, 0x64

    .line 1016
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    .line 1017
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCBMessage() ar:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1020
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_4

    .line 1021
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1022
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_2

    .line 1024
    const/16 v0, 0x190

    .line 1069
    :cond_1
    :goto_0
    return v0

    .line 1025
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_3

    .line 1026
    const-string v0, "SIM_PUK2"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    move v0, v1

    .line 1027
    goto :goto_0

    .line 1029
    :cond_3
    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 1042
    goto :goto_0

    .line 1036
    :pswitch_0
    const/16 v0, 0x258

    goto :goto_0

    .line 1039
    :pswitch_1
    const/16 v0, 0x1f4

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1046
    goto :goto_0

    .line 1048
    :cond_5
    if-nez p2, :cond_7

    .line 1050
    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v1, :cond_6

    .line 1051
    const-string v1, "handleSetCBMessage() has been processed ACTIVATE"

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1066
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->requestCBQueryCommand()V

    goto :goto_0

    .line 1052
    :cond_7
    const/4 v1, 0x1

    if-ne p2, v1, :cond_8

    .line 1053
    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v1, :cond_6

    .line 1054
    const-string v1, "handleSetCBMessage() has been processed DEACTIVATE"

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1055
    :cond_8
    const/4 v1, 0x2

    if-ne p2, v1, :cond_9

    .line 1056
    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v1, :cond_1

    .line 1057
    const-string v1, "handleSetCBMessage() has been processed CANCELALL"

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1059
    :cond_9
    const/4 v1, 0x3

    if-ne p2, v1, :cond_6

    .line 1060
    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v1, :cond_a

    .line 1061
    const-string v1, "handleSetCBMessage() has been processed CONFIRM"

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1062
    :cond_a
    const v1, 0x7f09036a

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1029
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1479
    const-string v0, "## VideoCallBarring ##"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    return-void
.end method

.method private requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "process"
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "confirmPassword"

    .prologue
    .line 1300
    const-string v1, "AB"

    .line 1302
    .local v1, facility:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    .line 1304
    return-void
.end method

.method private requestCBQueryCommand()V
    .locals 5

    .prologue
    .line 822
    const-string v0, "AO"

    .line 824
    .local v0, facility:Ljava/lang/String;
    iget v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    packed-switch v1, :pswitch_data_0

    .line 850
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    .line 852
    return-void

    .line 826
    :pswitch_0
    const-string v0, "AO"

    .line 827
    goto :goto_0

    .line 830
    :pswitch_1
    const-string v0, "OI"

    .line 831
    goto :goto_0

    .line 834
    :pswitch_2
    const-string v0, "OX"

    .line 835
    goto :goto_0

    .line 838
    :pswitch_3
    const-string v0, "AI"

    .line 839
    goto :goto_0

    .line 842
    :pswitch_4
    const-string v0, "IR"

    .line 843
    goto :goto_0

    .line 846
    :pswitch_5
    const-string v0, "AB"

    goto :goto_0

    .line 824
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private requestCBSetCommand(I)V
    .locals 9
    .parameter "process"

    .prologue
    .line 765
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->callbarring_password:Ljava/lang/String;

    .line 766
    .local v3, password:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 768
    const-string v3, ""

    .line 771
    :cond_0
    const-string v2, "AO"

    .line 772
    .local v2, facility:Ljava/lang/String;
    const/4 v1, 0x0

    .line 773
    .local v1, bActivate:Z
    const/4 v4, 0x0

    .line 775
    .local v4, serviceClass:I
    packed-switch p1, :pswitch_data_0

    .line 787
    const-string v0, "requestCBSetCommand (process) Exception!"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 790
    :goto_0
    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    packed-switch v0, :pswitch_data_1

    .line 815
    :goto_1
    const/16 v4, 0x10

    .line 816
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, p1, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    .line 819
    return-void

    .line 777
    :pswitch_0
    const/4 v1, 0x1

    .line 778
    goto :goto_0

    .line 780
    :pswitch_1
    const/4 v1, 0x0

    .line 781
    goto :goto_0

    .line 783
    :pswitch_2
    const/4 v1, 0x0

    .line 784
    goto :goto_0

    .line 792
    :pswitch_3
    const-string v2, "AO"

    .line 793
    goto :goto_1

    .line 796
    :pswitch_4
    const-string v2, "OI"

    .line 797
    goto :goto_1

    .line 800
    :pswitch_5
    const-string v2, "OX"

    .line 801
    goto :goto_1

    .line 804
    :pswitch_6
    const-string v2, "AI"

    .line 805
    goto :goto_1

    .line 808
    :pswitch_7
    const-string v2, "IR"

    .line 809
    goto :goto_1

    .line 811
    :pswitch_8
    const-string v2, "AB"

    goto :goto_1

    .line 775
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 790
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1074
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_1

    .line 1075
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    .line 1076
    const-string v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1077
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1079
    :cond_1
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    .line 1080
    return-void
.end method

.method private setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x258

    const/16 v6, 0x1f4

    const/16 v5, 0x12c

    const/16 v4, 0xc8

    const/4 v2, 0x1

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAppState() mAppState:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,requestedState:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",msgStatus:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_1

    .line 1089
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    .line 1090
    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_8

    .line 1097
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_2

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1100
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    if-nez v0, :cond_3

    .line 1101
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVCBVisible : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " so, we try remove busy dialog"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    .line 1105
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    if-eqz v0, :cond_6

    .line 1107
    sparse-switch p2, :sswitch_data_0

    .line 1156
    :goto_1
    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    .line 1157
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    if-nez v0, :cond_4

    .line 1158
    iput-boolean v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    .line 1159
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1163
    :cond_4
    if-eq p2, v4, :cond_5

    const/16 v0, 0x320

    if-eq p2, v0, :cond_5

    if-eq p2, v5, :cond_5

    if-eq p2, v6, :cond_5

    const/16 v0, 0x384

    if-eq p2, v0, :cond_5

    if-ne p2, v7, :cond_5

    .line 1171
    :cond_5
    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    goto/16 :goto_0

    .line 1109
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    .line 1111
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1115
    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1119
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    .line 1121
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1125
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    .line 1127
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1131
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    .line 1133
    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1137
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    .line 1139
    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1142
    :sswitch_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    .line 1144
    const/16 v0, 0x2bc

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1151
    :cond_6
    const-string v0, "VideoCallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVCBVisible : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " so, skip displaying error dialog"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    goto/16 :goto_1

    .line 1159
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 1175
    :cond_8
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_9

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1178
    :cond_9
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$14;->$SwitchMap$com$android$phone$callsettings$VideoCallBarring$AppState:[I

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1222
    :cond_a
    :goto_3
    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    goto/16 :goto_0

    .line 1182
    :pswitch_0
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-eq p1, v0, :cond_a

    .line 1183
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_b

    .line 1184
    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1185
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1189
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_c

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1191
    :cond_c
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    if-eqz v0, :cond_e

    .line 1192
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_d

    .line 1193
    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_3

    .line 1194
    :cond_d
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_a

    .line 1195
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_3

    .line 1198
    :cond_e
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVCBVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so, skip displaying init dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1204
    :pswitch_2
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-eq p1, v0, :cond_10

    .line 1205
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_f

    .line 1206
    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1207
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1210
    :cond_10
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    goto/16 :goto_3

    .line 1213
    :pswitch_3
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-eq p1, v0, :cond_12

    .line 1214
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_11

    .line 1215
    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1216
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1219
    :cond_12
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    goto/16 :goto_3

    .line 1107
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x320 -> :sswitch_1
        0x384 -> :sswitch_6
    .end sparse-switch

    .line 1178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setCallBarring(I)V
    .locals 4
    .parameter

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_3

    .line 734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    .line 735
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    .line 737
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    if-nez v0, :cond_0

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_IN_SERVICE"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/VideoCallBarring;->requestCBSetCommand(I)V

    .line 761
    :goto_0
    return-void

    .line 746
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_POWER_OFF"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    .line 749
    const-string v0, "onCreate: radio not ready, waiting for signal."

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 753
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_EXCEPTION"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0

    .line 757
    :cond_3
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_4

    .line 758
    const-string v0, "setDisplayMode: radio is off!"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 759
    :cond_4
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0
.end method

.method private showError(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1346
    const v0, 0x7f0a00c4

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1347
    if-eqz v0, :cond_0

    .line 1348
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1349
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1351
    :cond_0
    return-void
.end method

.method private showPasswordDialog()V
    .locals 3

    .prologue
    .line 1416
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f040017

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1424
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090374

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1428
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1437
    const v0, 0x7f0a00c6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    .line 1438
    const v0, 0x7f0a00c7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNewPassword:Landroid/widget/EditText;

    .line 1439
    const v0, 0x7f0a00c8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mConfirmPassword:Landroid/widget/EditText;

    .line 1441
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    .line 1442
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    .line 1444
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1445
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 1402
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPwdChangeSubmit:Z

    .line 1403
    return-void

    .line 1402
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v11, 0xc8

    const/4 v10, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 275
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 276
    const v5, 0x7f060046

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 278
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 279
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 284
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 285
    const-string v5, "vcallbarring_baoc_pref"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

    .line 286
    const-string v5, "vcallbarring_baoic_pref"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

    .line 287
    const-string v5, "vcallbarring_baoicxh_pref"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

    .line 288
    const-string v5, "vcallbarring_baic_pref"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

    .line 289
    const-string v5, "vcallbarring_baicr_pref"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

    .line 291
    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->factory:Landroid/view/LayoutInflater;

    .line 298
    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->factory:Landroid/view/LayoutInflater;

    const v6, 0x7f040004

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->textEntryView:Landroid/view/View;

    .line 299
    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->textEntryView:Landroid/view/View;

    const v6, 0x7f0a0021

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    .line 301
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 303
    new-instance v5, Lcom/android/phone/callsettings/VideoCallBarring$1;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/VideoCallBarring$1;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->doActivate:Ljava/lang/Runnable;

    .line 320
    new-instance v5, Lcom/android/phone/callsettings/VideoCallBarring$2;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/VideoCallBarring$2;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->doDeactivate:Ljava/lang/Runnable;

    .line 336
    new-instance v5, Lcom/android/phone/callsettings/VideoCallBarring$3;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/VideoCallBarring$3;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->doCheckStatus:Ljava/lang/Runnable;

    .line 342
    new-instance v5, Lcom/android/phone/callsettings/VideoCallBarring$4;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/VideoCallBarring$4;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->doConfirm:Ljava/lang/Runnable;

    .line 354
    sget-object v5, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    .line 356
    const-string v5, "feature_chn_duos"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "ctc_dual_mode"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 358
    :cond_1
    const-string v5, "feature_chn_duos_gsm_gsm"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 359
    invoke-static {}, Landroid/telephony/TelephonyManager;->getFirst()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 360
    .local v3, mTelMan1:Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 362
    .local v4, mTelMan2:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v10, :cond_5

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v10, :cond_5

    .line 364
    const-string v5, "DUAL SIM"

    invoke-static {v5}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 366
    .local v1, arg:Landroid/os/Bundle;
    if-eqz v1, :cond_4

    .line 367
    const-string v5, "Bundle is not null"

    invoke-static {v5}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 368
    const-string v5, "CallSettingTab"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    .line 379
    .end local v1           #arg:Landroid/os/Bundle;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 381
    sget v5, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    if-ne v5, v8, :cond_7

    .line 382
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSecondaryPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 383
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 410
    .end local v3           #mTelMan1:Landroid/telephony/TelephonyManager;
    .end local v4           #mTelMan2:Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_1
    const-string v5, "feature_marvell_dsds"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "sec_product_feature_common_dsds_support"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 412
    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    sget v6, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimStateDs(I)I

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    sget v6, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimStateDs(I)I

    move-result v5

    if-ne v5, v8, :cond_10

    .line 414
    :cond_3
    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    .line 415
    const-string v5, "## VideoCallBarring ##"

    const-string v6, "skip set or get CallBarring"

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 417
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_11

    .line 418
    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 370
    .end local v2           #i:I
    .restart local v1       #arg:Landroid/os/Bundle;
    .restart local v3       #mTelMan1:Landroid/telephony/TelephonyManager;
    .restart local v4       #mTelMan2:Landroid/telephony/TelephonyManager;
    :cond_4
    const-string v5, "## VideoCallBarring ##"

    const-string v6, "Bundle is null"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    sget v5, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    sput v5, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    goto :goto_0

    .line 373
    .end local v1           #arg:Landroid/os/Bundle;
    :cond_5
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v10, :cond_6

    .line 374
    const-string v5, "SIM2 Only"

    invoke-static {v5}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 375
    sput v8, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    goto/16 :goto_0

    .line 377
    :cond_6
    sput v9, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    goto/16 :goto_0

    .line 385
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 386
    invoke-static {}, Landroid/telephony/TelephonyManager;->getFirst()Landroid/telephony/TelephonyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    goto :goto_1

    .line 389
    .end local v3           #mTelMan1:Landroid/telephony/TelephonyManager;
    .end local v4           #mTelMan2:Landroid/telephony/TelephonyManager;
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSecondaryPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 390
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    goto :goto_1

    .line 392
    :cond_9
    const-string v5, "feature_marvell_dsds"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "sec_product_feature_common_dsds_support"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 395
    :cond_b
    sget v5, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    sput v5, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    .line 396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 398
    const-string v5, "sec_product_feature_common_dsds_support"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 399
    sget v5, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsDsds;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 400
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    goto/16 :goto_1

    .line 401
    :cond_c
    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 402
    sget v5, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    invoke-static {v5}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 403
    sget v5, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    invoke-static {v5}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    goto/16 :goto_1

    .line 406
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 407
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    goto/16 :goto_1

    .line 422
    :cond_e
    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v8, :cond_10

    .line 424
    :cond_f
    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    .line 425
    const-string v5, "## VideoCallBarring ##"

    const-string v6, "skip set or get CallBarring"

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 427
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_11

    .line 428
    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 433
    .end local v2           #i:I
    :cond_10
    iput-boolean v8, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    .line 434
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getCallBarring()V

    .line 435
    invoke-virtual {p0, v8}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 436
    :cond_11
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const v11, 0x7f0902ba

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 529
    sget-boolean v7, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateDialog id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 531
    :cond_0
    iput-boolean v9, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    .line 533
    sparse-switch p1, :sswitch_data_0

    .line 678
    const v5, 0x7f090364

    .line 679
    .local v5, msgId:I
    const v6, 0x7f090353

    .line 680
    .local v6, titleId:I
    packed-switch p1, :pswitch_data_0

    .line 685
    :goto_0
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    .line 688
    .end local v5           #msgId:I
    .end local v6           #titleId:I
    :goto_1
    return-object v1

    .line 537
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->factory:Landroid/view/LayoutInflater;

    .line 538
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->factory:Landroid/view/LayoutInflater;

    const v8, 0x7f040004

    invoke-virtual {v7, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->textEntryView:Landroid/view/View;

    .line 539
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->textEntryView:Landroid/view/View;

    const v8, 0x7f0a0021

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    .line 541
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    const v8, 0x7f090373

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setHint(I)V

    .line 545
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 546
    .local v0, BADialog:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f090372

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 547
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->textEntryView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 549
    new-instance v7, Lcom/android/phone/callsettings/VideoCallBarring$6;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/VideoCallBarring$6;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {v0, v11, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 562
    const v7, 0x7f0902bb

    new-instance v8, Lcom/android/phone/callsettings/VideoCallBarring$7;

    invoke-direct {v8, p0}, Lcom/android/phone/callsettings/VideoCallBarring$7;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 573
    invoke-virtual {p0, v10}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setCancelable(Z)V

    .line 575
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 577
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 578
    .local v1, baad:Landroid/app/AlertDialog;
    new-instance v7, Lcom/android/phone/callsettings/VideoCallBarring$8;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/VideoCallBarring$8;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    .line 590
    .end local v0           #BADialog:Landroid/app/AlertDialog$Builder;
    .end local v1           #baad:Landroid/app/AlertDialog;
    :sswitch_1
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 591
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 592
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 594
    iput p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPrevBusyDialog:I

    .line 596
    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_1

    .line 599
    :sswitch_2
    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setCancelable(Z)V

    .line 600
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    const v8, 0x7f090078

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_1

    .line 605
    :sswitch_3
    invoke-virtual {p0, v10}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setCancelable(Z)V

    .line 606
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    const v8, 0x7f090077

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 607
    new-instance v7, Lcom/android/phone/callsettings/VideoCallBarring$9;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/VideoCallBarring$9;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 612
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_1

    .line 624
    :sswitch_4
    const v6, 0x7f090076

    .line 625
    .restart local v6       #titleId:I
    const/4 v4, 0x0

    .line 626
    .local v4, isFDN:Z
    sparse-switch p1, :sswitch_data_2

    .line 653
    const v5, 0x7f09007b

    .line 657
    .restart local v5       #msgId:I
    :goto_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 659
    .local v3, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setCancelable(Z)V

    .line 660
    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 661
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 662
    invoke-virtual {p0, v11}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Lcom/android/phone/callsettings/VideoCallBarring$10;

    invoke-direct {v8, p0}, Lcom/android/phone/callsettings/VideoCallBarring$10;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {v3, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 673
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .local v2, dialog:Landroid/app/AlertDialog;
    move-object v1, v2

    .line 674
    goto/16 :goto_1

    .line 628
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v3           #err_builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #msgId:I
    :sswitch_5
    const v5, 0x7f09007a

    .line 629
    .restart local v5       #msgId:I
    goto :goto_2

    .line 632
    .end local v5           #msgId:I
    :sswitch_6
    const v5, 0x7f09007d

    .line 633
    .restart local v5       #msgId:I
    goto :goto_2

    .line 636
    .end local v5           #msgId:I
    :sswitch_7
    const v5, 0x7f090364

    .line 637
    .restart local v5       #msgId:I
    goto :goto_2

    .line 640
    .end local v5           #msgId:I
    :sswitch_8
    const v5, 0x7f090365

    .line 641
    .restart local v5       #msgId:I
    goto :goto_2

    .line 644
    .end local v5           #msgId:I
    :sswitch_9
    const v5, 0x7f090366

    .line 645
    .restart local v5       #msgId:I
    goto :goto_2

    .line 647
    .end local v5           #msgId:I
    :sswitch_a
    const/4 v4, 0x1

    .line 648
    const v6, 0x7f0902b3

    .line 649
    const v5, 0x7f090351

    .line 650
    .restart local v5       #msgId:I
    goto :goto_2

    .line 682
    .end local v4           #isFDN:Z
    :pswitch_0
    const v5, 0x7f090364

    goto/16 :goto_0

    .line 533
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_4
        0x12c -> :sswitch_4
        0x190 -> :sswitch_4
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_4
        0x320 -> :sswitch_4
        0x384 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch

    .line 680
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch

    .line 596
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_2
        0x384 -> :sswitch_3
    .end sparse-switch

    .line 626
    :sswitch_data_2
    .sparse-switch
        0x12c -> :sswitch_5
        0x190 -> :sswitch_7
        0x1f4 -> :sswitch_8
        0x258 -> :sswitch_9
        0x2bc -> :sswitch_a
        0x320 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1293
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1294
    const/4 v0, 0x1

    const v1, 0x7f090374

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020471

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1296
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1406
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPwdChangeSubmit:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPwdChangeSubmit:Z

    move-object v0, p1

    .line 1408
    check-cast v0, Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->checkPassword(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1409
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1413
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1449
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1451
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1475
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1472
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->showPasswordDialog()V

    .line 1473
    const/4 v0, 0x1

    goto :goto_0

    .line 1451
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 458
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 460
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 462
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 444
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 446
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 450
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 479
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========== onSharedPreferenceChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 481
    const-string v1, "vcallbarring_baoc_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 483
    .local v0, isChecked:Z
    iput v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    .line 484
    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    .line 487
    .end local v0           #isChecked:Z
    :cond_0
    const-string v1, "vcallbarring_baoic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 489
    .restart local v0       #isChecked:Z
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    .line 490
    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    .line 493
    .end local v0           #isChecked:Z
    :cond_1
    const-string v1, "vcallbarring_baoicxh_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 495
    .restart local v0       #isChecked:Z
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    .line 496
    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    .line 499
    .end local v0           #isChecked:Z
    :cond_2
    const-string v1, "vcallbarring_baic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 500
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 501
    .restart local v0       #isChecked:Z
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    .line 502
    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    .line 505
    .end local v0           #isChecked:Z
    :cond_3
    const-string v1, "vcallbarring_baicr_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 506
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 507
    .restart local v0       #isChecked:Z
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    .line 508
    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    .line 511
    .end local v0           #isChecked:Z
    :cond_4
    iget-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    if-eqz v1, :cond_5

    .line 512
    iput-boolean v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    .line 524
    :goto_0
    return-void

    .line 514
    :cond_5
    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    iput-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    .line 515
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    .line 517
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/VideoCallBarring$5;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/VideoCallBarring$5;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 465
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStop()V

    .line 468
    return-void
.end method
