.class Lcom/android/phone/InCallScreen$81;
.super Landroid/content/BroadcastReceiver;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 13054
    iput-object p1, p0, Lcom/android/phone/InCallScreen$81;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0xc8

    const/4 v6, 0x1

    .line 13057
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 13060
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13061
    iget-object v3, p0, Lcom/android/phone/InCallScreen$81;->this$0:Lcom/android/phone/InCallScreen;

    const-string v4, "ACTION_BATTERY_LOW"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 13062
    sget-boolean v3, Lcom/android/phone/PhoneUtilsIms;->mIsBatteryLow:Z

    if-nez v3, :cond_0

    .line 13063
    sput-boolean v6, Lcom/android/phone/PhoneUtilsIms;->mIsBatteryLow:Z

    .line 13064
    iget-object v3, p0, Lcom/android/phone/InCallScreen$81;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->performBatteryLowProcess()V

    .line 13104
    :cond_0
    :goto_0
    return-void

    .line 13066
    :cond_1
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13067
    const-string v3, "status"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 13068
    .local v2, mBatteryStatus:I
    const-string v3, "level"

    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 13070
    .local v1, mBatteryLevel:I
    iget-object v3, p0, Lcom/android/phone/InCallScreen$81;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mLowBatteryWarningLevel:I
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$6900(Lcom/android/phone/InCallScreen;)I

    move-result v3

    if-gt v1, v3, :cond_3

    if-eq v2, v8, :cond_3

    .line 13071
    sget-boolean v3, Lcom/android/phone/PhoneUtilsIms;->mIsBatteryLow:Z

    if-nez v3, :cond_2

    .line 13072
    sput-boolean v6, Lcom/android/phone/PhoneUtilsIms;->mIsBatteryLow:Z

    .line 13073
    iget-object v3, p0, Lcom/android/phone/InCallScreen$81;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->performBatteryLowProcess()V

    .line 13079
    :cond_2
    :goto_1
    const-string v3, "support_low_battery_sound_during_call"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13080
    iget-object v3, p0, Lcom/android/phone/InCallScreen$81;->this$0:Lcom/android/phone/InCallScreen;

    const-string v4, "ACTION_BATTERY_CHANGED"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v6}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 13081
    iget-object v3, p0, Lcom/android/phone/InCallScreen$81;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBatteryLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v6}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 13082
    iget-object v3, p0, Lcom/android/phone/InCallScreen$81;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBatteryStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v6}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 13083
    iget-object v3, p0, Lcom/android/phone/InCallScreen$81;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "islowbatterysoundplayed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen$81;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->islowbatterysoundplayed:Z
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$4300(Lcom/android/phone/InCallScreen;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v6}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 13084
    const/4 v3, 0x5

    if-gt v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/InCallScreen$81;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_4

    if-eq v2, v8, :cond_4

    .line 13088
    iget-object v3, p0, Lcom/android/phone/InCallScreen$81;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->islowbatterysoundplayed:Z
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$4300(Lcom/android/phone/InCallScreen;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 13089
    iget-object v3, p0, Lcom/android/phone/InCallScreen$81;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 13090
    iget-object v3, p0, Lcom/android/phone/InCallScreen$81;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 13076
    :cond_3
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/phone/PhoneUtilsIms;->mIsBatteryLow:Z

    goto/16 :goto_1

    .line 13094
    :cond_4
    iget-object v3, p0, Lcom/android/phone/InCallScreen$81;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->islowbatterysoundplayed:Z
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$4300(Lcom/android/phone/InCallScreen;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13095
    iget-object v3, p0, Lcom/android/phone/InCallScreen$81;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 13096
    iget-object v3, p0, Lcom/android/phone/InCallScreen$81;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xd2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
