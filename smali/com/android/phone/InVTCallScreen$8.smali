.class Lcom/android/phone/InVTCallScreen$8;
.super Landroid/content/BroadcastReceiver;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1635
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$8;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1637
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1638
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$8;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InVTCallScreen:mPowerOffAnimationReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1639
    const-string v1, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1640
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$8;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v2, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsPowerOffAnimationStarted:Z
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$7702(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1641
    :cond_0
    return-void
.end method
