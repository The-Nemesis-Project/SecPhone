.class public Lcom/android/phone/callsettings/CallBarring;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/CallBarring$19;,
        Lcom/android/phone/callsettings/CallBarring$AppState;
    }
.end annotation


# static fields
.field public static mSimId:I


# instance fields
.field private BADialog:Landroid/app/AlertDialog$Builder;

.field private callbarring_password:Ljava/lang/String;

.field doActivate:Ljava/lang/Runnable;

.field doCheckStatus:Ljava/lang/Runnable;

.field doConfirm:Ljava/lang/Runnable;

.field doDeactivate:Ljava/lang/Runnable;

.field editText:Landroid/widget/EditText;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

.field private mCBVisible:Z

.field private mCB_Checked:Z

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

.field private passwordDialog:Landroid/app/Dialog;

.field responseCBHandler:Landroid/os/Handler;

.field textEntryView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    .line 209
    iput v2, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 211
    iput-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 230
    iput-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mInputPassword:Landroid/widget/EditText;

    .line 232
    iput-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPassword:Landroid/widget/EditText;

    .line 234
    iput-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPassword:Landroid/widget/EditText;

    .line 236
    iput-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    .line 238
    iput-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPwdChangeSubmit:Z

    .line 250
    iput-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    .line 252
    iput-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    .line 264
    iput-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->passwordDialog:Landroid/app/Dialog;

    .line 266
    iput-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->BADialog:Landroid/app/AlertDialog$Builder;

    .line 868
    new-instance v0, Lcom/android/phone/callsettings/CallBarring$15;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/CallBarring$15;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    .line 1232
    new-instance v0, Lcom/android/phone/callsettings/CallBarring$16;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/CallBarring$16;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    .line 1283
    new-instance v0, Lcom/android/phone/callsettings/CallBarring$17;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/CallBarring$17;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/CallBarring;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->callbarring_password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/CallBarring;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring;->callbarring_password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/CallBarring;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/CallBarring;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/callsettings/CallBarring;->changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/CallBarring;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/CallBarring;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/CallBarring;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/CallBarring;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/CallBarring;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/callsettings/CallBarring;Landroid/os/AsyncResult;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/CallBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;I)V
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
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/callsettings/CallBarring;Landroid/os/AsyncResult;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/callsettings/CallBarring;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/phone/callsettings/CallBarring;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/CallBarring;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    return p1
.end method

.method static synthetic access$2100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-static {p0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/callsettings/CallBarring;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->dismissCallWaiting()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/CallBarring;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/callsettings/CallBarring;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/phone/callsettings/CallBarring;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/CallBarring;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->setCallBarring(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->getCallBarring()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1305
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_2

    .line 1311
    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    .line 1312
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    .line 1314
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1316
    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePasswordCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1318
    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    if-nez v0, :cond_0

    .line 1321
    const-string v0, "CallBarring"

    const-string v1, "STATE_IN_SERVICE"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/callsettings/CallBarring;->requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    :goto_0
    return-void

    .line 1324
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1325
    const-string v0, "CallBarring"

    const-string v1, "STATE_POWER_OFF"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    const-string v0, "onCreate: radio not ready, waiting for signal."

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 1330
    :cond_1
    const-string v0, "CallBarring"

    const-string v1, "MSG_EXCEPTION"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_0

    .line 1334
    :cond_2
    const-string v0, "setDisplayMode: radio is off!"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1335
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_0
.end method

.method private checkPassword(Landroid/app/Dialog;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    .line 1348
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1349
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1350
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1352
    const-class v3, Lcom/android/phone/callsettings/CallBarring;

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

    .line 1354
    const-class v3, Lcom/android/phone/callsettings/CallBarring;

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

    .line 1356
    const-class v3, Lcom/android/phone/callsettings/CallBarring;

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

    .line 1361
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_1

    .line 1364
    :cond_0
    const v0, 0x7f090367

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1389
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/CallBarring;->showError(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 1390
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1365
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_3

    .line 1368
    :cond_2
    const v0, 0x7f090368

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1369
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_5

    .line 1372
    :cond_4
    const v0, 0x7f090369

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1374
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1379
    const v0, 0x7f09036b

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1382
    :cond_6
    const v0, 0x7f0902ba

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1383
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->doConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1384
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private deleteBusyDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1271
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCheckAllCB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSelectedIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrevBusyDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPrevBusyDialog:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1274
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1281
    :goto_0
    return-void

    .line 1277
    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    .line 1279
    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPrevBusyDialog:I

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->removeDialog(I)V

    goto :goto_0
.end method

.method private dismissCallWaiting()V
    .locals 1

    .prologue
    .line 1265
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    .line 1267
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->finish()V

    .line 1268
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1488
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1489
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1490
    return-void
.end method

.method private getCallBarring()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 719
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_2

    .line 724
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    .line 726
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 727
    .local v0, radioState:I
    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallBarring() radioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 729
    if-nez v0, :cond_0

    .line 730
    const-string v1, "CallBarring"

    const-string v2, "STATE_IN_SERVICE"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->requestCBQueryCommand()V

    .line 746
    .end local v0           #radioState:I
    :goto_0
    return-void

    .line 733
    .restart local v0       #radioState:I
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 734
    const-string v1, "CallBarring"

    const-string v2, "STATE_POWER_OFF"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v1, "CallBarring"

    const-string v2, "onCreate: radio not ready, waiting for signal."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 739
    :cond_1
    const-string v1, "CallBarring"

    const-string v2, "MSG_EXCEPTION"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_0

    .line 743
    .end local v0           #radioState:I
    :cond_2
    const-string v1, "CallBarring"

    const-string v2, "setDisplayMode: radio is off!"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 744
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

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

    .line 942
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 943
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

    invoke-static {v3, v6}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 945
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1

    .line 946
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 947
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_0

    .line 948
    const-string v3, "CallBarring"

    const-string v4, "CommandExceptionError = FDN"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 949
    const/16 v3, 0x384

    .line 1022
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    return v3

    .line 951
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    const-string v3, "CallBarring"

    const-string v5, "CommandExceptionError = EXCEPTION"

    invoke-static {v3, v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    move v3, v4

    .line 953
    goto :goto_0

    .line 955
    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 956
    .local v2, ints:[I
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

    invoke-static {v3, v6}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedItem = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 959
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 960
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

    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 959
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 965
    :cond_3
    array-length v3, v2

    if-eqz v3, :cond_d

    .line 966
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

    invoke-static {v3, v6}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 967
    aget v3, v2, v7

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_8

    .line 969
    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_4

    .line 970
    const v3, 0x7f09035d

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    .line 972
    :cond_4
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-nez v3, :cond_5

    .line 973
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 974
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 977
    :cond_5
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-ne v3, v9, :cond_6

    .line 978
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 981
    :cond_6
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 982
    iput-boolean v6, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    .line 983
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1022
    :cond_7
    :goto_2
    const/16 v3, 0x64

    goto/16 :goto_0

    .line 987
    :cond_8
    aget v3, v2, v7

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c

    .line 996
    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_9

    .line 997
    const v3, 0x7f09035c

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    .line 999
    :cond_9
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-nez v3, :cond_a

    .line 1000
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1001
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1004
    :cond_a
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-ne v3, v9, :cond_b

    .line 1005
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1008
    :cond_b
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1009
    iput-boolean v6, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    .line 1010
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_c
    move v3, v4

    .line 1015
    goto/16 :goto_0

    :cond_d
    move v3, v4

    .line 1018
    goto/16 :goto_0
.end method

.method private handleSetCBMessage(Landroid/os/AsyncResult;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/16 v1, 0xc8

    const/16 v0, 0x64

    .line 1026
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 1027
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

    invoke-static {v0, v3}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 1029
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_2

    .line 1030
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1031
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_0

    .line 1033
    const/16 v0, 0x190

    .line 1074
    :goto_0
    return v0

    .line 1034
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_1

    .line 1035
    const-string v0, "SIM_PUK2"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    move v0, v1

    .line 1036
    goto :goto_0

    .line 1038
    :cond_1
    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 1051
    goto :goto_0

    .line 1045
    :pswitch_0
    const/16 v0, 0x258

    goto :goto_0

    .line 1048
    :pswitch_1
    const/16 v0, 0x1f4

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1055
    goto :goto_0

    .line 1057
    :cond_3
    if-nez p2, :cond_5

    .line 1059
    const-string v1, "handleSetCBMessage() has been processed ACTIVATE"

    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1071
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->requestCBQueryCommand()V

    goto :goto_0

    .line 1060
    :cond_5
    if-ne p2, v3, :cond_6

    .line 1061
    const-string v1, "handleSetCBMessage() has been processed DEACTIVATE"

    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1062
    :cond_6
    const/4 v1, 0x2

    if-ne p2, v1, :cond_7

    .line 1063
    const-string v1, "handleSetCBMessage() has been processed CANCELALL"

    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1065
    :cond_7
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    .line 1066
    const-string v1, "handleSetCBMessage() has been processed CONFIRM"

    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1067
    const v1, 0x7f09036a

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1038
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
    .line 1480
    const-string v0, "CallBarring"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 1484
    const-string v0, "CallBarring"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1485
    return-void
.end method

.method private requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "process"
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "confirmPassword"

    .prologue
    .line 1296
    const-string v1, "AB"

    .line 1298
    .local v1, facility:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    .line 1301
    return-void
.end method

.method private requestCBQueryCommand()V
    .locals 5

    .prologue
    .line 836
    const-string v0, "AO"

    .line 838
    .local v0, facility:Ljava/lang/String;
    iget v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    packed-switch v1, :pswitch_data_0

    .line 864
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    .line 866
    return-void

    .line 840
    :pswitch_0
    const-string v0, "AO"

    .line 841
    goto :goto_0

    .line 844
    :pswitch_1
    const-string v0, "OI"

    .line 845
    goto :goto_0

    .line 848
    :pswitch_2
    const-string v0, "OX"

    .line 849
    goto :goto_0

    .line 852
    :pswitch_3
    const-string v0, "AI"

    .line 853
    goto :goto_0

    .line 856
    :pswitch_4
    const-string v0, "IR"

    .line 857
    goto :goto_0

    .line 860
    :pswitch_5
    const-string v0, "AB"

    goto :goto_0

    .line 838
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
    .locals 8
    .parameter "process"

    .prologue
    const/4 v7, 0x1

    .line 782
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->callbarring_password:Ljava/lang/String;

    .line 783
    .local v2, password:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 785
    const-string v2, ""

    .line 788
    :cond_0
    const-string v1, "AO"

    .line 789
    .local v1, facility:Ljava/lang/String;
    const/4 v0, 0x0

    .line 791
    .local v0, bActivate:Z
    packed-switch p1, :pswitch_data_0

    .line 803
    const-string v3, "requestCBSetCommand (process) Exception!"

    invoke-static {v3, v7}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 806
    :goto_0
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    packed-switch v3, :pswitch_data_1

    .line 831
    :goto_1
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, p1, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v0, v1, v2, v4}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    .line 833
    return-void

    .line 793
    :pswitch_0
    const/4 v0, 0x1

    .line 794
    goto :goto_0

    .line 796
    :pswitch_1
    const/4 v0, 0x0

    .line 797
    goto :goto_0

    .line 799
    :pswitch_2
    const/4 v0, 0x0

    .line 800
    goto :goto_0

    .line 808
    :pswitch_3
    const-string v1, "AO"

    .line 809
    goto :goto_1

    .line 812
    :pswitch_4
    const-string v1, "OI"

    .line 813
    goto :goto_1

    .line 816
    :pswitch_5
    const-string v1, "OX"

    .line 817
    goto :goto_1

    .line 820
    :pswitch_6
    const-string v1, "AI"

    .line 821
    goto :goto_1

    .line 824
    :pswitch_7
    const-string v1, "IR"

    .line 825
    goto :goto_1

    .line 827
    :pswitch_8
    const-string v1, "AB"

    goto :goto_1

    .line 791
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 806
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

.method private setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1079
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_0

    .line 1080
    const-string v0, "setAppState: illegal error state without reason."

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 1081
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1083
    :cond_0
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    .line 1084
    return-void
.end method

.method private setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V
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

    .line 1089
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAppState() mAppState:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

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

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1092
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_0

    .line 1093
    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1221
    :goto_0
    return-void

    .line 1099
    :cond_0
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_6

    .line 1100
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

    const-string v1, " mCBVisible : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1103
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    if-nez v0, :cond_1

    .line 1104
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCBVisible : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " so, we try remove busy dialog"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1108
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    if-eqz v0, :cond_4

    .line 1109
    sparse-switch p2, :sswitch_data_0

    .line 1158
    :goto_1
    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 1159
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    if-nez v0, :cond_2

    .line 1160
    iput-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    .line 1161
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1165
    :cond_2
    if-eq p2, v4, :cond_3

    const/16 v0, 0x320

    if-eq p2, v0, :cond_3

    if-eq p2, v5, :cond_3

    if-eq p2, v6, :cond_3

    const/16 v0, 0x384

    if-eq p2, v0, :cond_3

    if-ne p2, v7, :cond_3

    .line 1173
    :cond_3
    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    goto/16 :goto_0

    .line 1111
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1113
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1117
    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1121
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1123
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1127
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1129
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1133
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1135
    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1139
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1141
    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1145
    :sswitch_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1147
    const/16 v0, 0x2bc

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1154
    :cond_4
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCBVisible : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " so, skip displaying dialog"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1155
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    goto/16 :goto_1

    .line 1161
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 1177
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 1179
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$19;->$SwitchMap$com$android$phone$callsettings$CallBarring$AppState:[I

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1220
    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    goto/16 :goto_0

    .line 1183
    :pswitch_0
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-eq p1, v0, :cond_7

    .line 1184
    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1189
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1191
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    if-eqz v0, :cond_9

    .line 1192
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_8

    .line 1193
    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_3

    .line 1194
    :cond_8
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_7

    .line 1195
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_3

    .line 1198
    :cond_9
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCBVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so, skip displaying dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1204
    :pswitch_2
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-eq p1, v0, :cond_a

    .line 1205
    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1209
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    goto :goto_3

    .line 1212
    :pswitch_3
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-eq p1, v0, :cond_b

    .line 1213
    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1217
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    goto/16 :goto_3

    .line 1109
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

    .line 1179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setCallBarring(I)V
    .locals 5
    .parameter "process"

    .prologue
    const/4 v4, 0x1

    .line 750
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_2

    .line 756
    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    .line 757
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    .line 759
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 760
    .local v0, radioState:I
    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 762
    if-nez v0, :cond_0

    .line 763
    const-string v1, "CallBarring"

    const-string v2, "STATE_IN_SERVICE"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->requestCBSetCommand(I)V

    .line 778
    .end local v0           #radioState:I
    :goto_0
    return-void

    .line 766
    .restart local v0       #radioState:I
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 767
    const-string v1, "CallBarring"

    const-string v2, "STATE_POWER_OFF"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 771
    :cond_1
    const-string v1, "CallBarring"

    const-string v2, "MSG_EXCEPTION"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_0

    .line 775
    .end local v0           #radioState:I
    :cond_2
    const-string v1, "CallBarring"

    const-string v2, "setDisplayMode: radio is off!"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 776
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_0
.end method

.method private showError(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1340
    const v0, 0x7f0a00c4

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1341
    if-eqz v0, :cond_0

    .line 1342
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1345
    :cond_0
    return-void
.end method

.method private showPasswordDialog()V
    .locals 4

    .prologue
    .line 1408
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f040017

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1416
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

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->passwordDialog:Landroid/app/Dialog;

    .line 1420
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->passwordDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1429
    const v0, 0x7f0a00c6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPassword:Landroid/widget/EditText;

    .line 1430
    const v0, 0x7f0a00c7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPassword:Landroid/widget/EditText;

    .line 1431
    const v0, 0x7f0a00c8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    .line 1433
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 1434
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    .line 1436
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->passwordDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1438
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/CallBarring$18;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/CallBarring$18;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1444
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 1394
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPwdChangeSubmit:Z

    .line 1395
    return-void

    .line 1394
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0xc8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 277
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 278
    const v3, 0x7f06000f

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 280
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 281
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 287
    const-string v3, "callbarring_baoc_pref"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

    .line 288
    const-string v3, "callbarring_baoic_pref"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

    .line 289
    const-string v3, "callbarring_baoicxh_pref"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

    .line 290
    const-string v3, "callbarring_baic_pref"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

    .line 291
    const-string v3, "callbarring_baicr_pref"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

    .line 293
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->factory:Landroid/view/LayoutInflater;

    .line 300
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->factory:Landroid/view/LayoutInflater;

    const v4, 0x7f040004

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    .line 301
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    const v4, 0x7f0a0021

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    .line 303
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 305
    new-instance v3, Lcom/android/phone/callsettings/CallBarring$1;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/CallBarring$1;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->doActivate:Ljava/lang/Runnable;

    .line 322
    new-instance v3, Lcom/android/phone/callsettings/CallBarring$2;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/CallBarring$2;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->doDeactivate:Ljava/lang/Runnable;

    .line 338
    new-instance v3, Lcom/android/phone/callsettings/CallBarring$3;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/CallBarring$3;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->doCheckStatus:Ljava/lang/Runnable;

    .line 344
    new-instance v3, Lcom/android/phone/callsettings/CallBarring$4;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/CallBarring$4;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->doConfirm:Ljava/lang/Runnable;

    .line 356
    sget-object v3, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    .line 358
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ctc_dual_mode"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 360
    :cond_1
    const-string v3, "feature_chn_duos_gsm_gsm"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "feature_chn_duos_support_cgg"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 365
    :cond_2
    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    sput v3, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 372
    :goto_0
    sget v3, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    invoke-static {v3}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 373
    sget v3, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    invoke-static {v3}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 395
    :cond_3
    :goto_1
    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 396
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    sget v4, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimStateDs(I)I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    sget v4, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimStateDs(I)I

    move-result v3

    if-ne v3, v6, :cond_c

    .line 398
    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    .line 399
    const-string v3, "CallBarring"

    const-string v4, "skip set or get CallBarring"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 401
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 402
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 370
    .end local v2           #i:I
    :cond_5
    sput v6, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    goto :goto_0

    .line 374
    :cond_6
    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 379
    :cond_7
    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    sput v3, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 383
    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 384
    sget v3, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsDsds;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 385
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    goto/16 :goto_1

    .line 386
    :cond_8
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 387
    sget v3, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    invoke-static {v3}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 388
    sget v3, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    invoke-static {v3}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    goto/16 :goto_1

    .line 391
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 392
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    goto/16 :goto_1

    .line 406
    :cond_a
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v6, :cond_c

    .line 408
    :cond_b
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    .line 409
    const-string v3, "CallBarring"

    const-string v4, "skip set or get CallBarring"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 411
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 412
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 411
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 417
    .end local v2           #i:I
    :cond_c
    iput-boolean v6, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    .line 418
    if-eqz p1, :cond_e

    .line 419
    move-object v1, p1

    .line 420
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "mCB_Checked"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 421
    const-string v3, "mSelectedIndex"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 425
    .end local v1           #bundle:Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v6}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 426
    :cond_d
    return-void

    .line 423
    :cond_e
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->getCallBarring()V

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    const v9, 0x7f0902ba

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 554
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateDialog id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 556
    iput-boolean v7, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    .line 558
    sparse-switch p1, :sswitch_data_0

    .line 703
    const v3, 0x7f090364

    .line 704
    .local v3, msgId:I
    const v4, 0x7f090353

    .line 705
    .local v4, titleId:I
    packed-switch p1, :pswitch_data_0

    .line 710
    :goto_0
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    .line 714
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :goto_1
    return-object v0

    .line 562
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->factory:Landroid/view/LayoutInflater;

    .line 563
    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->factory:Landroid/view/LayoutInflater;

    const v6, 0x7f040004

    invoke-virtual {v5, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    .line 564
    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    const v6, 0x7f0a0021

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    .line 566
    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    const v6, 0x7f090373

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHint(I)V

    .line 570
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->BADialog:Landroid/app/AlertDialog$Builder;

    .line 571
    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->BADialog:Landroid/app/AlertDialog$Builder;

    const v6, 0x7f090372

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 572
    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->BADialog:Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 574
    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->BADialog:Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/CallBarring$10;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/CallBarring$10;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 588
    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->BADialog:Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0902bb

    new-instance v7, Lcom/android/phone/callsettings/CallBarring$11;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/CallBarring$11;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 598
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setCancelable(Z)V

    .line 599
    new-instance v5, Lcom/android/phone/callsettings/CallBarring$12;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/CallBarring$12;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 607
    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 609
    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->BADialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 613
    :sswitch_1
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 614
    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 615
    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 617
    iput p1, p0, Lcom/android/phone/callsettings/CallBarring;->mPrevBusyDialog:I

    .line 619
    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_1

    .line 622
    :sswitch_2
    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setCancelable(Z)V

    .line 623
    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    const v6, 0x7f090078

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_1

    .line 628
    :sswitch_3
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setCancelable(Z)V

    .line 629
    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    const v6, 0x7f090077

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 630
    new-instance v5, Lcom/android/phone/callsettings/CallBarring$13;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/CallBarring$13;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 635
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_1

    .line 648
    :sswitch_4
    const v4, 0x7f090076

    .line 649
    .restart local v4       #titleId:I
    const/4 v2, 0x0

    .line 650
    .local v2, isFDN:Z
    sparse-switch p1, :sswitch_data_2

    .line 678
    const v3, 0x7f09007b

    .line 682
    .restart local v3       #msgId:I
    :goto_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 684
    .local v1, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setCancelable(Z)V

    .line 685
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 686
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 687
    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/android/phone/callsettings/CallBarring$14;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/CallBarring$14;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 697
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 699
    .local v0, dialog:Landroid/app/AlertDialog;
    goto/16 :goto_1

    .line 652
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v1           #err_builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #msgId:I
    :sswitch_5
    const v3, 0x7f09007a

    .line 653
    .restart local v3       #msgId:I
    goto :goto_2

    .line 656
    .end local v3           #msgId:I
    :sswitch_6
    const v3, 0x7f09007d

    .line 657
    .restart local v3       #msgId:I
    goto :goto_2

    .line 660
    .end local v3           #msgId:I
    :sswitch_7
    const v3, 0x7f090364

    .line 661
    .restart local v3       #msgId:I
    goto :goto_2

    .line 664
    .end local v3           #msgId:I
    :sswitch_8
    const v3, 0x7f090365

    .line 665
    .restart local v3       #msgId:I
    goto :goto_2

    .line 668
    .end local v3           #msgId:I
    :sswitch_9
    const v3, 0x7f090366

    .line 669
    .restart local v3       #msgId:I
    goto :goto_2

    .line 672
    .end local v3           #msgId:I
    :sswitch_a
    const/4 v2, 0x1

    .line 673
    const v4, 0x7f0902b3

    .line 674
    const v3, 0x7f090351

    .line 675
    .restart local v3       #msgId:I
    goto :goto_2

    .line 707
    .end local v2           #isFDN:Z
    :pswitch_0
    const v3, 0x7f090364

    goto/16 :goto_0

    .line 558
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

    .line 705
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch

    .line 619
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_2
        0x384 -> :sswitch_3
    .end sparse-switch

    .line 650
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

    .line 1289
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1290
    const/4 v0, 0x1

    const v1, 0x7f090374

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020471

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1292
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1398
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPwdChangeSubmit:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPwdChangeSubmit:Z

    move-object v0, p1

    .line 1400
    check-cast v0, Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->checkPassword(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1401
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1405
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1448
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1450
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1476
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1473
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->showPasswordDialog()V

    .line 1474
    const/4 v0, 0x1

    goto :goto_0

    .line 1450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 476
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 478
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 480
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xc8

    .line 434
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 436
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 438
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->BADialog:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/CallBarring$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/CallBarring$5;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->passwordDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/CallBarring$6;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/CallBarring$6;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 453
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/CallBarring$7;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/CallBarring$7;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 459
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/CallBarring$8;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/CallBarring$8;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 468
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 484
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 485
    const-string v0, "mCB_Checked"

    iget-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 486
    const-string v0, "mSelectedIndex"

    iget v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 504
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

    .line 506
    const-string v1, "callbarring_baoc_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 508
    .local v0, isChecked:Z
    iput v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 509
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 512
    .end local v0           #isChecked:Z
    :cond_0
    const-string v1, "callbarring_baoic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 514
    .restart local v0       #isChecked:Z
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 515
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 518
    .end local v0           #isChecked:Z
    :cond_1
    const-string v1, "callbarring_baoicxh_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 519
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 520
    .restart local v0       #isChecked:Z
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 521
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 524
    .end local v0           #isChecked:Z
    :cond_2
    const-string v1, "callbarring_baic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 525
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 526
    .restart local v0       #isChecked:Z
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 527
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 530
    .end local v0           #isChecked:Z
    :cond_3
    const-string v1, "callbarring_baicr_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 531
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 532
    .restart local v0       #isChecked:Z
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 533
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 536
    .end local v0           #isChecked:Z
    :cond_4
    iget-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    if-eqz v1, :cond_5

    .line 537
    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    .line 549
    :goto_0
    return-void

    .line 539
    :cond_5
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    .line 540
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    .line 542
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/CallBarring$9;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/CallBarring$9;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 490
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStop()V

    .line 493
    return-void
.end method
