.class Lcom/android/phone/InCallScreen$78;
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
    .line 12894
    iput-object p1, p0, Lcom/android/phone/InCallScreen$78;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x3

    .line 12896
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 12897
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.uplus.agent.action.CONVERT_CALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12899
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen$78;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen$78;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/CallManager;->getCallType(Lcom/android/internal/telephony/Call;)I

    move-result v1

    .line 12900
    .local v1, callType:I
    if-nez v1, :cond_1

    .line 12901
    iget-object v3, p0, Lcom/android/phone/InCallScreen$78;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v4, 0x3

    #calls: Lcom/android/phone/InCallScreen;->requestModifyCall(I)V
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$6800(Lcom/android/phone/InCallScreen;I)V

    .line 12909
    .end local v1           #callType:I
    :cond_0
    :goto_0
    return-void

    .line 12902
    .restart local v1       #callType:I
    :cond_1
    if-ne v1, v5, :cond_0

    .line 12903
    iget-object v3, p0, Lcom/android/phone/InCallScreen$78;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v4, 0x0

    #calls: Lcom/android/phone/InCallScreen;->requestModifyCall(I)V
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$6800(Lcom/android/phone/InCallScreen;I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12905
    .end local v1           #callType:I
    :catch_0
    move-exception v2

    .line 12906
    .local v2, e:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "getCallType"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallStateException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
