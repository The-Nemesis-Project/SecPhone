.class Lcom/android/phone/InVTCallScreen$1;
.super Landroid/os/Handler;
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
    .line 974
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .parameter "msg"

    .prologue
    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Handler : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v18 .. v20}, Lcom/android/phone/InVTCallScreen;->access$000(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;Z)V

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsDestroyed:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Handler: ignoring message "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; we\'re destroyed!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1457
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 983
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Handler: handling message "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " while not in foreground"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 992
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    .line 993
    .local v3, app:Lcom/android/phone/PhoneGlobals;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    goto :goto_0

    .line 1117
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #calls: Lcom/android/phone/InVTCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 995
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 999
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->isFinishing()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1000
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #calls: Lcom/android/phone/InVTCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1004
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "InVTCallScreen ::PHONE_DISCONNECT - Processing started"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1006
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1007
    .local v6, disconectResult:Landroid/os/AsyncResult;
    iget-object v4, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 1008
    .local v4, c:Lcom/android/internal/telephony/Connection;
    if-eqz v4, :cond_5

    .line 1009
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 1012
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v9

    .line 1013
    .local v9, o:Ljava/lang/Object;
    instance-of v0, v9, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object v7, v9

    .line 1014
    check-cast v7, Lcom/android/internal/telephony/CallerInfo;

    .line 1015
    .local v7, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v7}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getCallNumber : voicemail - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1019
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    iget-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    #setter for: Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$702(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 1023
    .end local v7           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v9           #o:Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->isFarEndRecord()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1024
    const-string v18, "vt_audio_mixed_recording"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    const-string v18, "vt_audio_mixed_recording_via_stack"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingAudio()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$800(Lcom/android/phone/InVTCallScreen;)V

    .line 1030
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->isNearEndRecord()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    .line 1038
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)V

    .line 1041
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$1002(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/Message;

    invoke-direct/range {v19 .. v19}, Landroid/os/Message;-><init>()V

    #setter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$1102(Lcom/android/phone/InVTCallScreen;Landroid/os/Message;)Landroid/os/Message;

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1044
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1202(Z)Z

    .line 1045
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1302(Z)Z

    .line 1048
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1402(Z)Z

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1600(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "InVTCallScreen ::PHONE_DISCONNECT - DuringCall - Stoping VT Call"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1700(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1027
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    goto/16 :goto_1

    .line 1059
    :cond_a
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$1800()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "InVTCallScreen : PHONE_DISCONNECT - DuringCall - continueOnDisconnection()"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1900(Lcom/android/phone/InVTCallScreen;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2000(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1066
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "InVTCallScreen ::PHONE_DISCONNECT - onDisconnect()"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v18

    if-eqz v18, :cond_c

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lsiso/vt/VTManager;->releaseVTManager()V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lsiso/vt/VTManager;->deinitVTManager()V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$2102(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;

    .line 1074
    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v18

    if-nez v18, :cond_d

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1900(Lcom/android/phone/InVTCallScreen;)V

    .line 1080
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2000(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1078
    :cond_d
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    goto :goto_2

    .line 1093
    .end local v4           #c:Lcom/android/internal/telephony/Connection;
    .end local v6           #disconectResult:Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "EVENT_HEADSET_PLUG_STATE_CHANGED"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1095
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2200(Lcom/android/phone/InVTCallScreen;)Landroid/media/AudioManager;

    move-result-object v18

    if-eqz v18, :cond_e

    if-eqz v3, :cond_e

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2200(Lcom/android/phone/InVTCallScreen;)Landroid/media/AudioManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v18

    if-nez v18, :cond_e

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v18

    if-nez v18, :cond_e

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1112
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->updateSpeakerButton()V

    goto/16 :goto_0

    .line 1109
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_3

    .line 1121
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->onMMICancel()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1129
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->dismissMmiStartedDialog()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2500(Lcom/android/phone/InVTCallScreen;)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/MmiCode;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #calls: Lcom/android/phone/InVTCallScreen;->onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2600(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/MmiCode;)V

    goto/16 :goto_0

    .line 1135
    :sswitch_8
    const-string v18, "vt_post_dial_feature_support"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    #calls: Lcom/android/phone/InVTCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    .line 1139
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "POST_ON_DIAL_CHARS, but feature does not supported"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1144
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2800(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1148
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "DELAYED_MUTE_BUTTON_ENABLE"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mMuteEnable:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$2902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mMuteEnable:Z
    invoke-static/range {v19 .. v19}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v19

    #calls: Lcom/android/phone/InVTCallScreen;->updateMuteButton(Z)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$3000(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    .line 1156
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->dismissMenu(Z)V

    goto/16 :goto_0

    .line 1160
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "REQUEST_UPDATE_BLUETOOTH_INDICATION..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mHeadset:Landroid/widget/ToggleButton;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v18

    if-eqz v18, :cond_11

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mHeadset:Landroid/widget/ToggleButton;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1173
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->updateSpeakerButton()V

    goto/16 :goto_0

    .line 1179
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "Received PHONE_CDMA_CALL_WAITING event ..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1181
    const-string v18, "feature_chn_duos"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3200(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 1188
    .local v5, cn:Lcom/android/internal/telephony/Connection;
    :goto_4
    if-eqz v5, :cond_0

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateScreen()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3400(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1184
    .end local v5           #cn:Lcom/android/internal/telephony/Connection;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3300(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .restart local v5       #cn:Lcom/android/internal/telephony/Connection;
    goto :goto_4

    .line 1210
    .end local v5           #cn:Lcom/android/internal/telephony/Connection;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3500(Lcom/android/phone/InVTCallScreen;)Landroid/app/AlertDialog;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "- DISMISSING mPausePromptDialog."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3500(Lcom/android/phone/InVTCallScreen;)Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->dismiss()V

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$3502(Lcom/android/phone/InVTCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1219
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateButtonUI()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3600(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1223
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->updateSimUI()V

    goto/16 :goto_0

    .line 1227
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->bailOutAfterErrorDialog()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3700(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1231
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "mHandler:Response Received from Gallery"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$3802(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateSelectedImageFromGallery()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3900(Lcom/android/phone/InVTCallScreen;)V

    .line 1235
    invoke-static {}, Lcom/android/phone/PickImageFromGallery;->unregisterForImageGalleryResponse()V

    goto/16 :goto_0

    .line 1239
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "mHandler:Response on low memory"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->isFarEndRecord()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 1242
    const-string v18, "vt_audio_mixed_recording"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_14

    const-string v18, "vt_audio_mixed_recording_via_stack"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_14

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingAudio()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$800(Lcom/android/phone/InVTCallScreen;)V

    .line 1250
    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->releaseSelectVideo()V

    goto/16 :goto_0

    .line 1245
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    goto :goto_5

    .line 1247
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->isNearEndRecord()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    goto :goto_5

    .line 1256
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateSelectedVideoFromGallery()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4100(Lcom/android/phone/InVTCallScreen;)V

    .line 1257
    invoke-static {}, Lcom/android/phone/PickImageFromGallery;->unregisterForImageGalleryResponse()V

    goto/16 :goto_0

    .line 1261
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mHandler:start recording image casting: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/InVTCallScreen;->isShowMe()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Image:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static/range {v20 .. v20}, Lcom/android/phone/InVTCallScreen;->access$4200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Video:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static/range {v20 .. v20}, Lcom/android/phone/InVTCallScreen;->access$4000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->isShowMe()Z

    move-result v18

    if-nez v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-nez v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 1264
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$3802(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    goto/16 :goto_0

    .line 1267
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "preset_name"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1269
    .local v12, preset_name:Ljava/lang/String;
    if-nez v12, :cond_18

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "data/data/com.android.phone/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4300(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1272
    :cond_18
    const-string v18, "photo"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_1a

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "preset_path"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1275
    .local v11, presetImageSrc:Ljava/lang/String;
    if-eqz v11, :cond_19

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static {v0, v11}, Lcom/android/phone/InVTCallScreen;->access$4300(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1278
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "data/data/com.android.phone/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4300(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1280
    .end local v11           #presetImageSrc:Ljava/lang/String;
    :cond_1a
    const-string v18, "Default"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_1b

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "data/data/com.android.phone/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4300(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1282
    :cond_1b
    const-string v18, "video"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_22

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "preset_video_path"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1286
    .local v15, uriString:Ljava/lang/String;
    const/16 v17, 0x0

    .line 1287
    .local v17, videoUri:Landroid/net/Uri;
    const/16 v16, 0x0

    .line 1288
    .local v16, videoPath:Ljava/lang/String;
    if-eqz v15, :cond_1c

    .line 1289
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 1291
    :cond_1c
    if-eqz v17, :cond_1d

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    #calls: Lcom/android/phone/InVTCallScreen;->getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$4400(Lcom/android/phone/InVTCallScreen;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    .line 1294
    :cond_1d
    if-eqz v16, :cond_1e

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4502(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1298
    :cond_1e
    if-nez v15, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "uriString is Null,"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1299
    :cond_1f
    if-nez v17, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "videoUri is Null,"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1300
    :cond_20
    if-nez v16, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "videoPath is null,"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1301
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "so setting Default Image"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "data/data/com.android.phone/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4300(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1305
    .end local v15           #uriString:Ljava/lang/String;
    .end local v16           #videoPath:Ljava/lang/String;
    .end local v17           #videoUri:Landroid/net/Uri;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "data/data/com.android.phone/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4300(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1315
    .end local v12           #preset_name:Ljava/lang/String;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe()Z

    move-result v18

    if-eqz v18, :cond_25

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwipeAnimationFar:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v19

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4702(Lcom/android/phone/InVTCallScreen;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1322
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v18

    if-eqz v18, :cond_24

    const-string v18, "kor_cs_vt"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_23

    const-string v18, "vi_animation"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_24

    .line 1324
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v18 .. v20}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    new-instance v19, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    const/high16 v19, 0x3f80

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsSwitchCameraAnimationStarted:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$5002(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1331
    :cond_24
    new-instance v18, Lcom/android/phone/InVTCallScreen$SwitchAnimationTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen$SwitchAnimationTask;-><init>(Lcom/android/phone/InVTCallScreen;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "start"

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen$SwitchAnimationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1319
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwipeAnimationNear:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v19

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4702(Lcom/android/phone/InVTCallScreen;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    goto/16 :goto_6

    .line 1334
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe()Z

    move-result v18

    if-eqz v18, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationFarEnd:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_26

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationFarEnd:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1336
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1341
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "STOP_CAPTURE_IMAGE_ANIMATION:: Stop image animation"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5100(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_0

    .line 1347
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Landroid/telephony/ServiceState;

    .line 1348
    .local v13, state:Landroid/telephony/ServiceState;
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getState()I

    move-result v18

    if-nez v18, :cond_0

    .line 1353
    .end local v13           #state:Landroid/telephony/ServiceState;
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x97

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_27

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x97

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 1356
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5300(Lcom/android/phone/InVTCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5300(Lcom/android/phone/InVTCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "STATE_IN_SERVICE : start call "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5300(Lcom/android/phone/InVTCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$5302(Lcom/android/phone/InVTCallScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 1362
    .local v8, intent:Landroid/content/Intent;
    const/high16 v18, 0x1000

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1367
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->FallBackCallNumber:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_28

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2800(Lcom/android/phone/InVTCallScreen;)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.intent.action.CALL"

    const-string v21, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->FallBackCallNumber:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mAlreadyHasActionCall:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$5502(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 1372
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "case:EVENT_FALLBACK_AUTOMATIC FallBackCallNumber is null.."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2800(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1379
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MULTIMEDIA_RINGBACK_TONE_TIMER mMRBTstart:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mMRBTstart:Z
    invoke-static/range {v20 .. v20}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  mMRBTend:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mMRBTend:Z
    invoke-static/range {v20 .. v20}, Lcom/android/phone/InVTCallScreen;->access$5700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mMRBTstart:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-nez v18, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mMRBTend:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-eqz v18, :cond_2a

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mMRBTstart:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mMRBTend:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1382
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5800(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5800(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/InVTCallScreen;->access$5900(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5800(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallTime;->reset()V

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5800(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallTime;->startMRBTTimer()V

    .line 1386
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5800(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v18

    if-eqz v18, :cond_2b

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5800(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    .line 1390
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1397
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateScreen()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3400(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1400
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$6100(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1405
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 1406
    const-string v18, "feature_kor_open"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2c

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    const-wide/16 v19, 0x514

    invoke-virtual/range {v18 .. v20}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1410
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    new-instance v19, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 1409
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    const-wide/16 v19, 0x3e8

    invoke-virtual/range {v18 .. v20}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_7

    .line 1417
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/InVTCallScreen;->isShowMe()Z

    move-result v19

    #calls: Lcom/android/phone/InVTCallScreen;->updateCameraButtons(Z)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;Z)V

    .line 1418
    const-string v18, "support_kk_vt_tablet_multiwindow"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1419
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$6302(Z)Z

    goto/16 :goto_0

    .line 1424
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3300(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    const-string v18, "not_show_call_view_statusbar"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "statusbar"

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/StatusBarManager;

    .line 1428
    .local v14, statusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v14}, Landroid/app/StatusBarManager;->showCallView()V

    goto/16 :goto_0

    .line 1433
    .end local v14           #statusBar:Landroid/app/StatusBarManager;
    :sswitch_22
    const-string v18, "feature_chn_duos"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2f

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    .line 1438
    .local v10, phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :goto_8
    sget-object v18, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v18

    if-ne v10, v0, :cond_2e

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$6400(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_2d

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$6400(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$6400(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    .line 1443
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->endCallBottomButtonFrame:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$6500(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_2e

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->endCallBottomButtonFrame:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$6500(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 1446
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x8c

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1436
    .end local v10           #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_2f
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    .restart local v10       #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    goto :goto_8

    .line 1449
    .end local v10           #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/android/phone/InVTCallScreen;->updateCameraButtons(Z)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;Z)V

    .line 1450
    new-instance v18, Lcom/android/phone/InVTCallScreen$DualCameraTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen$DualCameraTask;-><init>(Lcom/android/phone/InVTCallScreen;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "start"

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen$DualCameraTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1453
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "HIDE_VOLUME_BAR Handler"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$1;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->hideVolumePanel()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$6600(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 993
    nop

    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_1
        0x34 -> :sswitch_7
        0x35 -> :sswitch_6
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_8
        0x6c -> :sswitch_9
        0x6e -> :sswitch_2
        0x6f -> :sswitch_b
        0x72 -> :sswitch_c
        0x73 -> :sswitch_d
        0x75 -> :sswitch_0
        0x76 -> :sswitch_0
        0x77 -> :sswitch_0
        0x78 -> :sswitch_e
        0x7a -> :sswitch_f
        0x7b -> :sswitch_11
        0x7c -> :sswitch_12
        0x7d -> :sswitch_13
        0x7e -> :sswitch_15
        0x80 -> :sswitch_18
        0x81 -> :sswitch_14
        0x82 -> :sswitch_a
        0x83 -> :sswitch_1d
        0x8c -> :sswitch_22
        0x96 -> :sswitch_19
        0x97 -> :sswitch_1a
        0x98 -> :sswitch_24
        0xaa -> :sswitch_1c
        0xb4 -> :sswitch_1e
        0xb5 -> :sswitch_1f
        0xb6 -> :sswitch_21
        0xb7 -> :sswitch_20
        0xbe -> :sswitch_10
        0x309 -> :sswitch_1b
        0x3e5 -> :sswitch_23
        0x3e7 -> :sswitch_16
        0x458 -> :sswitch_17
        0x270f -> :sswitch_0
    .end sparse-switch
.end method
