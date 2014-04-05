.class public Lcom/android/phone/WfcSupplimentaryServiceHelper;
.super Ljava/lang/Object;
.source "WfcSupplimentaryServiceHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field mIMSCallSessionListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mImsInterfaceForVoLTE:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

.field private mSSPendingCommands:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/phone/WfcSupplimentaryServiceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/WfcSupplimentaryServiceHelper;->mSSPendingCommands:Ljava/util/HashMap;

    .line 76
    new-instance v0, Lcom/android/phone/WfcSupplimentaryServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/phone/WfcSupplimentaryServiceHelper$1;-><init>(Lcom/android/phone/WfcSupplimentaryServiceHelper;)V

    iput-object v0, p0, Lcom/android/phone/WfcSupplimentaryServiceHelper;->mIMSCallSessionListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 44
    iput-object p1, p0, Lcom/android/phone/WfcSupplimentaryServiceHelper;->mContext:Landroid/content/Context;

    .line 46
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iput-object v0, p0, Lcom/android/phone/WfcSupplimentaryServiceHelper;->mImsInterfaceForVoLTE:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    .line 48
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/phone/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/WfcSupplimentaryServiceHelper;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/phone/WfcSupplimentaryServiceHelper;->mSSPendingCommands:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public registerListener()V
    .locals 3

    .prologue
    .line 54
    sget-object v1, Lcom/android/phone/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "registerListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/android/phone/WfcSupplimentaryServiceHelper;->mImsInterfaceForVoLTE:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    if-nez v1, :cond_0

    .line 57
    sget-object v1, Lcom/android/phone/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "mImsInterfaceForVoLTE is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 62
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/WfcSupplimentaryServiceHelper;->mImsInterfaceForVoLTE:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iget-object v2, p0, Lcom/android/phone/WfcSupplimentaryServiceHelper;->mIMSCallSessionListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->registerForCallStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    sget-object v1, Lcom/android/phone/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
