.class Lcom/android/phone/BluetoothPhoneService$3;
.super Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .parameter

    .prologue
    .line 809
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public answerCall()Z
    .locals 3

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method public cdmaSetSecondCallState(Z)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1070
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1072
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1073
    return-void
.end method

.method public cdmaSwapSecondCallState()V
    .locals 4

    .prologue
    .line 1064
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1066
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1067
    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1012
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1024
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phoneMgrs:[Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSimForVoiceCalls()I

    move-result v1

    .line 1025
    .local v1, simID:I
    if-nez v1, :cond_1

    .line 1026
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, operatorName:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$1400()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMSLOT1 operatorName:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 1035
    .end local v1           #simID:I
    :cond_0
    :goto_0
    return-object v0

    .line 1029
    .end local v0           #operatorName:Ljava/lang/String;
    .restart local v1       #simID:I
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 1030
    .restart local v0       #operatorName:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$1400()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMSLOT2 operatorName:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    goto :goto_0

    .line 1033
    .end local v0           #operatorName:Ljava/lang/String;
    .end local v1           #simID:I
    :cond_2
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #operatorName:Ljava/lang/String;
    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hangupCall()Z
    .locals 3

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 825
    :goto_0
    return v0

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_0

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 822
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_0

    .line 825
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listCurrentCalls()Z
    .locals 4

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1046
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1047
    const/4 v1, 0x1

    return v1
.end method

.method public declared-synchronized processChld(I)Z
    .locals 13
    .parameter "chld"

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 848
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v10, "android.permission.MODIFY_PHONE_STATE"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 850
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 851
    .local v4, phoneType:I
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 852
    .local v5, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 853
    .local v1, backgroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 854
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    iget-object v9, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v9, :cond_0

    .line 855
    const-string v9, "BluetoothPhoneService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chld=2; CONF -> THRWAY ; when 2nd call is incomming; app.cdmaPhoneCallState.IsThreeWayCallOrigStateDialing() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_0
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    .line 860
    .local v2, isGeneric:Z
    const-string v9, "BluetoothPhoneService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isGeneric = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    if-nez p1, :cond_2

    .line 863
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 864
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1007
    :goto_0
    monitor-exit p0

    return v7

    .line 866
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    goto :goto_0

    .line 868
    :cond_2
    if-ne p1, v7, :cond_c

    .line 869
    if-ne v4, v12, :cond_6

    .line 870
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 872
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "CHLD:1 Callwaiting Answer call"

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 873
    :cond_3
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 848
    .end local v0           #app:Lcom/android/phone/PhoneGlobals;
    .end local v1           #backgroundCall:Lcom/android/internal/telephony/Call;
    .end local v2           #isGeneric:Z
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #phoneType:I
    .end local v5           #ringingCall:Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 878
    .restart local v0       #app:Lcom/android/phone/PhoneGlobals;
    .restart local v1       #backgroundCall:Lcom/android/internal/telephony/Call;
    .restart local v2       #isGeneric:Z
    .restart local v3       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #phoneType:I
    .restart local v5       #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "CHLD:1 Hangup Call"

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 879
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 882
    :cond_6
    if-ne v4, v7, :cond_b

    .line 886
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 887
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    move-result v7

    goto :goto_0

    .line 888
    :cond_7
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 889
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    goto :goto_0

    .line 890
    :cond_8
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 891
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    goto/16 :goto_0

    .line 892
    :cond_9
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 893
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    goto/16 :goto_0

    :cond_a
    move v7, v8

    .line 895
    goto/16 :goto_0

    .line 898
    :cond_b
    const-string v7, "BluetoothPhoneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bad phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 899
    goto/16 :goto_0

    .line 901
    :cond_c
    if-ne p1, v12, :cond_1b

    .line 902
    if-ne v4, v12, :cond_17

    .line 908
    const-string v9, "feature_lgt"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 909
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 910
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v8, "CHLD:2 Callwaiting Answer call"

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 911
    :cond_d
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 912
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 914
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/phone/BluetoothPhoneService$3;->cdmaSetSecondCallState(Z)V

    goto/16 :goto_0

    .line 916
    :cond_e
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v9

    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v9, v10, :cond_16

    iget-object v9, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v9, :cond_16

    iget-object v9, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v9

    if-nez v9, :cond_16

    .line 920
    if-eqz v2, :cond_10

    .line 922
    invoke-virtual {p0}, Lcom/android/phone/BluetoothPhoneService$3;->cdmaSwapSecondCallState()V

    .line 924
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "CHLD:2 Swap Calls; is Generic"

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 925
    :cond_f
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 928
    :cond_10
    const-string v8, "BluetoothPhoneService"

    const-string v9, "CHLD:2 Swap Calls is not Generic"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 933
    :cond_11
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 934
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "CHLD:2 Callwaiting Answer call"

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 935
    :cond_12
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 936
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 938
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/phone/BluetoothPhoneService$3;->cdmaSetSecondCallState(Z)V

    goto/16 :goto_0

    .line 940
    :cond_13
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v9

    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v9, v10, :cond_16

    iget-object v9, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v9, :cond_16

    iget-object v9, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v9

    if-nez v9, :cond_16

    .line 944
    if-eqz v2, :cond_15

    .line 946
    invoke-virtual {p0}, Lcom/android/phone/BluetoothPhoneService$3;->cdmaSwapSecondCallState()V

    .line 948
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_14

    const-string v8, "CHLD:2 Swap Calls; is Generic"

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 949
    :cond_14
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 952
    :cond_15
    const-string v8, "BluetoothPhoneService"

    const-string v9, "CHLD:2 Swap Calls is not Generic"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 957
    :cond_16
    const-string v7, "BluetoothPhoneService"

    const-string v9, "CDMA fail to do hold active and accept held"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 958
    goto/16 :goto_0

    .line 959
    :cond_17
    if-ne v4, v7, :cond_1a

    .line 960
    const-string v9, "feature_lgt"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v9

    if-nez v9, :cond_19

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v9

    if-nez v9, :cond_19

    .line 962
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v7

    if-eqz v7, :cond_18

    const-string v7, "CHLD:2 do not work - don\'t support change to hold call if has only foregroundCall"

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    :cond_18
    move v7, v8

    .line 963
    goto/16 :goto_0

    .line 965
    :cond_19
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 968
    :cond_1a
    const-string v7, "BluetoothPhoneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 969
    goto/16 :goto_0

    .line 971
    :cond_1b
    const/4 v9, 0x3

    if-ne p1, v9, :cond_23

    .line 972
    if-ne v4, v12, :cond_20

    .line 973
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    .line 976
    .local v6, state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v9, :cond_1e

    .line 977
    if-eqz v2, :cond_1c

    .line 978
    const-string v8, "BluetoothPhoneService"

    const-string v9, "CHLD:3 Merge Calls is Generic"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 981
    :cond_1c
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1d

    const-string v8, "CHLD:3 Merge Calls is not Generic"

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 982
    :cond_1d
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto/16 :goto_0

    .line 985
    :cond_1e
    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v7, :cond_1f

    move v7, v8

    .line 989
    goto/16 :goto_0

    .line 991
    :cond_1f
    const-string v7, "BluetoothPhoneService"

    const-string v9, "GSG no call to add conference"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 992
    goto/16 :goto_0

    .line 993
    .end local v6           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_20
    if-ne v4, v7, :cond_22

    .line 994
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-eqz v9, :cond_21

    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 995
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto/16 :goto_0

    .line 998
    :cond_21
    const-string v7, "BluetoothPhoneService"

    const-string v9, "GSG no call to merge"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 999
    goto/16 :goto_0

    .line 1002
    :cond_22
    const-string v7, "BluetoothPhoneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 1003
    goto/16 :goto_0

    .line 1006
    :cond_23
    const-string v7, "BluetoothPhoneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bad CHLD value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v7, v8

    .line 1007
    goto/16 :goto_0
.end method

.method public queryPhoneState()Z
    .locals 4

    .prologue
    .line 1051
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1053
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1054
    const/4 v1, 0x1

    return v1
.end method

.method public sendDtmf(I)Z
    .locals 6
    .parameter "dtmf"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 829
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDtmf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 835
    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 836
    int-to-char v2, p1

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 837
    .local v1, s:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v4, v5}, Lcom/android/internal/telephony/CallManager;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z

    move-result v0

    .line 841
    .end local v1           #s:Ljava/lang/String;
    .local v0, ret:Z
    :goto_0
    return v0

    .line 839
    .end local v0           #ret:Z
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    int-to-char v3, p1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallManager;->sendDtmf(C)Z

    move-result v0

    .restart local v0       #ret:Z
    goto :goto_0
.end method

.method public updateBtHandsfreeAfterRadioTechnologyChange()V
    .locals 3

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothPhoneService"

    const-string v1, "updateBtHandsfreeAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #calls: Lcom/android/phone/BluetoothPhoneService;->updateBtPhoneStateAfterRadioTechnologyChange()V
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1600(Lcom/android/phone/BluetoothPhoneService;)V

    .line 1061
    return-void
.end method
