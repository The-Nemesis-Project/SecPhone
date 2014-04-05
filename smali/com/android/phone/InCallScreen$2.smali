.class Lcom/android/phone/InCallScreen$2;
.super Landroid/os/Handler;
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
    .line 748
    iput-object p1, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .parameter "msg"

    .prologue
    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Handler : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mIsDestroyed:Z
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$500(Lcom/android/phone/InCallScreen;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Handler: ignoring message "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "; we\'re destroyed!"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 1229
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    const-string v24, "feature_srvcc_kor"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSecImsCallStateSrvcc()Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x6c

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "This is SEC IMS Call State - return"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 766
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Handler: handling message "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " while not in foreground"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 776
    :cond_3
    const-string v24, "ims_rcs"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v24

    if-nez v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v24

    if-nez v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v24

    if-nez v24, :cond_4

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v27, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/phone/InCallScreen;->getFrgndCallContactName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v24 .. v26}, Lcom/android/phone/RcsShare;->disconnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    sparse-switch v24, :sswitch_data_0

    .line 1226
    const-string v24, "InCallScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mHandler: unexpected message: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 788
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 793
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/android/phone/InCallScreen;->mIsPhoneStateChanged:Z
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$802(Lcom/android/phone/InCallScreen;Z)Z

    .line 794
    const-string v24, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 796
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    #calls: Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 800
    :sswitch_2
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v10

    .line 801
    .local v10, icCM:Lcom/android/phone/IMSConferenceCallMgr;
    if-eqz v10, :cond_6

    .line 802
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/phone/IMSConferenceCallMgr;->setDirectConfCall(Z)V

    .line 805
    :cond_6
    const-string v24, "support_fwim"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 807
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/phone/InCallScreen;->m_Fwim_Receiver:Landroid/content/BroadcastReceiver;
    invoke-static/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Landroid/content/BroadcastReceiver;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    #calls: Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    .line 813
    const-string v24, "ims_rcs"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Landroid/content/Intent;

    const-string v26, "com.samsung.rcs.intent.action.END_SHARING_SERVICE_DIALOG"

    invoke-direct/range {v25 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 817
    :cond_8
    const-string v24, "voice_call_recording"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mOptionMenu:Landroid/view/Menu;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Landroid/view/Menu;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "close menu"

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mOptionMenu:Landroid/view/Menu;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Landroid/view/Menu;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/view/Menu;->close()V

    goto/16 :goto_0

    .line 808
    :catch_0
    move-exception v7

    .line 809
    .local v7, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "m_Fwim_Receiver not register"

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    goto :goto_1

    .line 835
    .end local v7           #e:Ljava/lang/Exception;
    .end local v10           #icCM:Lcom/android/phone/IMSConferenceCallMgr;
    :sswitch_3
    const-string v24, "common_volte_vt_kor"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "Received EVENT_HEADSET_PLUG_STATE_CHANGED event"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    .line 838
    .local v9, fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    .line 839
    .local v18, rCall:Lcom/android/internal/telephony/Call;
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v24

    if-nez v24, :cond_9

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 840
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v24

    if-nez v24, :cond_a

    .line 841
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v24

    sget-boolean v25, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_a

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    sget-boolean v25, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 851
    .end local v9           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v18           #rCall:Lcom/android/internal/telephony/Call;
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)V

    .line 858
    const-string v24, "tablet_device"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 861
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallTouchUi;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallTouchUi;->refreshAudioModePopup()V

    goto/16 :goto_0

    .line 845
    .restart local v9       #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v18       #rCall:Lcom/android/internal/telephony/Call;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_2

    .line 872
    .end local v9           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v18           #rCall:Lcom/android/internal/telephony/Call;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->onMMICancel()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 881
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->dismissMmiStartedDialog()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/MmiCode;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    #calls: Lcom/android/phone/InCallScreen;->onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/MmiCode;)V

    goto/16 :goto_0

    .line 886
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    move/from16 v24, v0

    if-eqz v24, :cond_d

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-char v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v26

    #calls: Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/InCallScreen;->access$1700(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    .line 889
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "Handler: POST_ON_DIAL_CHARS msg ignore because incallscreen not in foreground"

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 894
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 898
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 902
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2000(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 906
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "REQUEST_UPDATE_BLUETOOTH_INDICATION..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 912
    const-string v24, "common_volte_vt_kor"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v24

    if-eqz v24, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v24

    if-nez v24, :cond_f

    .line 914
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v24

    if-nez v24, :cond_f

    .line 915
    const-string v24, "InCallScreen"

    const-string v25, "During Call BT or EarPhone is not connected, then switch on the speaker. "

    invoke-static/range {v24 .. v25}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v24

    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_f

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v24

    sget-boolean v25, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    sget-boolean v25, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 925
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallTouchUi;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallTouchUi;->refreshAudioModePopup()V

    goto/16 :goto_0

    .line 932
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "Received PHONE_CDMA_CALL_WAITING event ..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 936
    .local v6, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingAutoRejectedCall:Z

    move/from16 v24, v0

    if-nez v24, :cond_10

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mOptionMenu:Landroid/view/Menu;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Landroid/view/Menu;

    move-result-object v24

    if-eqz v24, :cond_10

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mOptionMenu:Landroid/view/Menu;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Landroid/view/Menu;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/view/Menu;->close()V

    .line 946
    :cond_10
    const-string v24, " disable_notification_in_waiting_call_ringing"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->updateExpandedViewState()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2200(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 952
    .end local v6           #cn:Lcom/android/internal/telephony/Connection;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/OtaUtils;->onOtaCloseSpcNotice()V

    goto/16 :goto_0

    .line 958
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/OtaUtils;->onOtaCloseFailureNotice()V

    goto/16 :goto_0

    .line 964
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "- DISMISSING mPausePromptDialog."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Dialog;->dismiss()V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$2302(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 972
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_0

    .line 978
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 981
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    #calls: Lcom/android/phone/InCallScreen;->updateScreenOrientation(Landroid/content/res/Configuration;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$2500(Lcom/android/phone/InCallScreen;Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 985
    :sswitch_12
    const-string v24, "ims_auto_call_test"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/android/phone/InCallScreen;->isCallInProgress:Z
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$2602(Lcom/android/phone/InCallScreen;Z)Z

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x67

    #calls: Lcom/android/phone/InCallScreen;->broadCastForAutoTest(I)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$2700(Lcom/android/phone/InCallScreen;I)V

    .line 989
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->onIncomingRing()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2800(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 993
    :sswitch_13
    const-string v24, "support_fwim"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 994
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    move-object/from16 v0, v24

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/Connection;

    .line 996
    .local v5, c:Lcom/android/internal/telephony/Connection;
    if-eqz v5, :cond_0

    .line 997
    const/16 v19, 0x0

    .line 998
    .local v19, rejectCheck:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v5}, Lcom/android/phone/PhoneUtils;->isAutoRejectCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v19

    .line 1000
    const/16 v24, 0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->onNewRingingConnection()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 1003
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->onDefensiveNewRingingConnection()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3000(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 1007
    .end local v5           #c:Lcom/android/internal/telephony/Connection;
    .end local v19           #rejectCheck:Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->onNewRingingConnection()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 1013
    :sswitch_14
    const-string v24, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->isFirstEmergencyCall:Z
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$3102(Lcom/android/phone/InCallScreen;Z)Z

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->emergencyNetwork:I
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3200(Lcom/android/phone/InCallScreen;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->access$3300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 1016
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/CallController;->retryEmergencyCall()V

    goto/16 :goto_0

    .line 1022
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "ecmp state changed "

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 1023
    const-string v24, "ims_volte"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 1024
    const-string v24, "true"

    const-string v25, "persist.sys.ims.reg"

    const-string v26, "false"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "ims registered"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x97

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1028
    :cond_14
    const-string v24, "common_volte"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 1029
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "ims registered"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x97

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1037
    :sswitch_16
    const-string v24, "sec_product_feature_common_dsds_support"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 1038
    const/16 v20, 0x0

    .line 1039
    .local v20, simId:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/CallController;->getIntentOfOriginCall()Landroid/content/Intent;

    move-result-object v11

    .line 1040
    .local v11, intent:Landroid/content/Intent;
    const-string v24, "simId"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 1041
    const-string v24, "simId"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 1046
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "EVENT_SERVICE_STATE_CHANGED simId:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SIM_SLOT_1 : ServiceState "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/ServiceState;->getState()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SIM_SLOT_2 : ServiceState "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget-object v26, v26, v27

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/ServiceState;->getState()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 1050
    if-nez v20, :cond_15

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getState()I

    move-result v24

    if-nez v24, :cond_0

    .line 1052
    :cond_15
    const/16 v24, 0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getState()I

    move-result v24

    if-nez v24, :cond_0

    .line 1075
    .end local v11           #intent:Landroid/content/Intent;
    .end local v20           #simId:I
    :cond_16
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x97

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x97

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 1078
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3500(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v24

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3500(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Dialog;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "STATE_IN_SERVICE : start call "

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 1080
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3602(Z)Z

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3500(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Dialog;->dismiss()V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$3502(Lcom/android/phone/InCallScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1083
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/CallController;->getIntentOfOriginCall()Landroid/content/Intent;

    move-result-object v11

    .line 1085
    .restart local v11       #intent:Landroid/content/Intent;
    if-eqz v11, :cond_0

    .line 1086
    const-string v24, "common_volte"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_19

    const-string v24, "android.phone.extra.CALL_TYPE"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_19

    .line 1087
    const-string v24, "common_volte_vt_kor"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 1089
    :try_start_1
    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v16

    .line 1090
    .local v16, number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "STATE_IN_SERVICE : start call number "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 1091
    if-eqz v16, :cond_18

    .line 1092
    new-instance v12, Landroid/content/Intent;

    const-string v24, "android.intent.action.CALL_PRIVILEGED"

    const-string v25, "tel"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v11           #intent:Landroid/content/Intent;
    .local v12, intent:Landroid/content/Intent;
    move-object v11, v12

    .line 1098
    .end local v12           #intent:Landroid/content/Intent;
    .end local v16           #number:Ljava/lang/String;
    .restart local v11       #intent:Landroid/content/Intent;
    :cond_18
    :goto_4
    const-string v24, "videocall"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1100
    :cond_19
    const/high16 v24, 0x1000

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1101
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1043
    .restart local v20       #simId:I
    :cond_1a
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getDefaultSimForVoiceCalls()I

    move-result v20

    goto/16 :goto_3

    .line 1056
    .end local v11           #intent:Landroid/content/Intent;
    .end local v20           #simId:I
    :cond_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/telephony/ServiceState;

    .line 1057
    .local v22, state:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/CallController;->getIntentOfOriginCall()Landroid/content/Intent;

    move-result-object v11

    .line 1058
    .restart local v11       #intent:Landroid/content/Intent;
    const/4 v4, 0x0

    .line 1059
    .local v4, bOutgoingPSVT:Z
    if-eqz v11, :cond_1c

    .line 1060
    const-string v24, "common_volte"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1c

    const-string v24, "android.phone.extra.CALL_TYPE"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    .line 1062
    const/4 v4, 0x1

    .line 1065
    :cond_1c
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getState()I

    move-result v24

    if-nez v24, :cond_0

    .line 1068
    if-eqz v4, :cond_16

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v24

    if-nez v24, :cond_16

    goto/16 :goto_0

    .line 1094
    .end local v4           #bOutgoingPSVT:Z
    .end local v22           #state:Landroid/telephony/ServiceState;
    :catch_1
    move-exception v8

    .line 1095
    .local v8, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "VoiceMailNumberMissingException: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1108
    .end local v8           #ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    .end local v11           #intent:Landroid/content/Intent;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "statusbar"

    invoke-virtual/range {v24 .. v25}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/StatusBarManager;

    .line 1110
    .local v23, statusBar:Landroid/app/StatusBarManager;
    invoke-virtual/range {v23 .. v23}, Landroid/app/StatusBarManager;->showCallView()V

    goto/16 :goto_0

    .line 1115
    .end local v23           #statusBar:Landroid/app/StatusBarManager;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->internalHangup()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 1121
    :sswitch_1a
    const-string v24, "InCallScreen"

    const-string v25, "videocall received modifyCall request"

    invoke-static/range {v24 .. v25}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 1123
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1124
    .local v3, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->onOpenCloseDialpad()V

    .line 1126
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/Connection;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    #calls: Lcom/android/phone/InCallScreen;->handleModifyCallRequest(Lcom/android/internal/telephony/Connection;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$3800(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 1130
    .end local v3           #ar:Landroid/os/AsyncResult;
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mUpgradeDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3900(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v24

    if-eqz v24, :cond_1e

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mUpgradeDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3900(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Dialog;->dismiss()V

    .line 1134
    :cond_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    .line 1136
    .local v17, r:Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_21

    .line 1138
    :try_start_2
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [I

    check-cast v24, [I

    const/16 v25, 0x2

    aget v21, v24, v25

    .line 1140
    .local v21, sipError:I
    const/16 v24, 0x456

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_20

    .line 1141
    const-string v24, "common_volte_vt_kor"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 1142
    const v24, 0x7f09077a

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->displayToast(I)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 1149
    .end local v21           #sipError:I
    :catch_2
    move-exception v8

    .line 1150
    .local v8, ex:Ljava/lang/IndexOutOfBoundsException;
    const-string v24, "InCallScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "modify call exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1144
    .end local v8           #ex:Ljava/lang/IndexOutOfBoundsException;
    .restart local v21       #sipError:I
    :cond_1f
    const v24, 0x7f09077b

    :try_start_3
    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->displayToast(I)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1151
    .end local v21           #sipError:I
    :catch_3
    move-exception v14

    .line 1152
    .local v14, nex:Ljava/lang/NullPointerException;
    const-string v24, "InCallScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "modify call exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1146
    .end local v14           #nex:Ljava/lang/NullPointerException;
    .restart local v21       #sipError:I
    :cond_20
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "modify call fail: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 1156
    .end local v21           #sipError:I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "videocall: IMS Modify call request to RIL returned without exception"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 1161
    .local v15, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v15}, Lcom/android/phone/CallNotifier;->saveSwitchedLog()V

    .line 1163
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 1164
    .local v13, newCallType:I
    if-nez v13, :cond_24

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v24

    if-eqz v24, :cond_22

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->onOpenCloseDialpad()V

    .line 1167
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$4002(Lcom/android/phone/InCallScreen;Z)Z

    .line 1168
    const v24, 0x7f09077d

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    .line 1188
    :cond_23
    :goto_5
    const-string v24, "service_mirrorcall"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    #calls: Lcom/android/phone/InCallScreen;->broadcastMirrorCallAppIntentCallState(I)V
    invoke-static {v0, v13}, Lcom/android/phone/InCallScreen;->access$4100(Lcom/android/phone/InCallScreen;I)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v13, v1}, Lcom/android/phone/InCallScreen;->broadcastUWAAppIntentCallState(IZ)V

    goto/16 :goto_0

    .line 1169
    :cond_24
    const/16 v24, 0x3

    move/from16 v0, v24

    if-eq v13, v0, :cond_25

    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v13, v0, :cond_25

    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v13, v0, :cond_23

    .line 1171
    :cond_25
    const-string v24, "common_volte_vt"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_28

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$4002(Lcom/android/phone/InCallScreen;Z)Z

    .line 1173
    const-string v24, "vi_animation"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_26

    .line 1174
    invoke-static {}, Lcom/android/phone/CallAnimation;->clearAnimation()V

    .line 1176
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v24

    if-nez v24, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v24

    if-nez v24, :cond_27

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v24

    sget-boolean v25, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_27

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    sget-boolean v25, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1181
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    goto/16 :goto_5

    .line 1183
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_23

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_5

    .line 1197
    .end local v13           #newCallType:I
    .end local v15           #notifier:Lcom/android/phone/CallNotifier;
    .end local v17           #r:Landroid/os/AsyncResult;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mModifyCallPromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$4200(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mModifyCallPromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$4200(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Dialog;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_29

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 1200
    .restart local v15       #notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v15}, Lcom/android/phone/CallNotifier;->playUpgradeTimeoutTone()V

    .line 1202
    .end local v15           #notifier:Lcom/android/phone/CallNotifier;
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "- DISMISSING mModifyCallPromptDialog."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mModifyCallPromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$4200(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Dialog;->dismiss()V

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mModifyCallPromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$4202(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1209
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 1210
    const-string v24, "InCallScreen"

    const-string v25, "- TURN_ON_SCREEN_FOR_NEW_INCOMING"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1211
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->forceWakeUpScreen()V

    goto/16 :goto_0

    .line 1215
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "- PLAY_LOW_BATTERY_TONE"

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 1216
    invoke-static {}, Lcom/android/phone/PhoneUtils;->playLowBatteryTone()V

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/android/phone/InCallScreen;->islowbatterysoundplayed:Z
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$4302(Lcom/android/phone/InCallScreen;Z)Z

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0xc8

    const-wide/32 v26, 0x1d4c0

    invoke-virtual/range {v24 .. v27}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1221
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "- STOP_LOW_BATTERY_TONE"

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 1222
    invoke-static {}, Lcom/android/phone/PhoneUtils;->stopLowBatteryTone()V

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->islowbatterysoundplayed:Z
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$4302(Lcom/android/phone/InCallScreen;Z)Z

    goto/16 :goto_0

    .line 784
    :sswitch_data_0
    .sparse-switch
        0x34 -> :sswitch_5
        0x35 -> :sswitch_4
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_6
        0x6a -> :sswitch_7
        0x6b -> :sswitch_8
        0x6c -> :sswitch_9
        0x6e -> :sswitch_0
        0x72 -> :sswitch_a
        0x73 -> :sswitch_b
        0x76 -> :sswitch_c
        0x77 -> :sswitch_d
        0x78 -> :sswitch_e
        0x79 -> :sswitch_f
        0x7a -> :sswitch_10
        0x7b -> :sswitch_12
        0x7c -> :sswitch_13
        0x7d -> :sswitch_1a
        0x7e -> :sswitch_1b
        0x7f -> :sswitch_1c
        0x82 -> :sswitch_14
        0x96 -> :sswitch_16
        0x97 -> :sswitch_17
        0x98 -> :sswitch_11
        0x99 -> :sswitch_15
        0xa0 -> :sswitch_18
        0xaa -> :sswitch_19
        0xbe -> :sswitch_1d
        0xc8 -> :sswitch_1e
        0xd2 -> :sswitch_1f
    .end sparse-switch
.end method
