.class Lcom/android/phone/NetworkSetting$14;
.super Landroid/os/CountDownTimer;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSetting;->reScanManualSelection(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCalled:Z

.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;JJ)V
    .locals 1
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2101
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$14;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 2102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting$14;->mCalled:Z

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 2115
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting$14;->mCalled:Z

    if-nez v0, :cond_0

    .line 2116
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$14;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v0, v0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const-string v1, "Searching for network is aborted!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2119
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .parameter "millisUntilFinished"

    .prologue
    .line 2106
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting$14;->mCalled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$14;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$3500(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting$14;->mCalled:Z

    .line 2108
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$14;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 2109
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$14;->this$0:Lcom/android/phone/NetworkSetting;

    sget-object v1, Lcom/android/phone/NetworkSetting$userSelectionType;->SEARCH:Lcom/android/phone/NetworkSetting$userSelectionType;

    #calls: Lcom/android/phone/NetworkSetting;->checkDataConnection(Lcom/android/phone/NetworkSetting$userSelectionType;)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$2900(Lcom/android/phone/NetworkSetting;Lcom/android/phone/NetworkSetting$userSelectionType;)V

    .line 2111
    :cond_0
    return-void
.end method
