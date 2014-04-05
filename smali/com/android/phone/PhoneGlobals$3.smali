.class Lcom/android/phone/PhoneGlobals$3;
.super Landroid/os/Handler;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    .line 778
    const-string v19, "PhoneApp"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Handler : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 1306
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 787
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 797
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/high16 v20, 0x7f0c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 799
    const-string v19, "PhoneApp"

    const-string v20, "Ignoring EVENT_SIM_NETWORK_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 803
    :cond_1
    const-string v19, "nck_block_feature"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    const-string v19, "1"

    const-string v20, "ril.perso_nwk_puk"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 806
    const-string v19, "PhoneApp"

    const-string v20, "network perm blocked, do not show sim depersonal panel"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 812
    :cond_2
    const-string v19, "show_icc_ndp"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 813
    const-string v19, "PhoneApp"

    const-string v20, "show sim depersonal panel"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    new-instance v9, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;)V

    .line 816
    .local v9, ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 824
    .end local v9           #ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    :sswitch_3
    const-string v19, "PhoneApp"

    const-string v20, "show sim service provider depersonal panel"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-string v19, "show_icc_ndp"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 826
    new-instance v14, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;Z)V

    .line 828
    .local v14, spdpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    invoke-virtual {v14}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 837
    .end local v14           #spdpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    :sswitch_4
    const-string v19, "PhoneApp"

    const-string v20, "- updating in-call notification from handler..."

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 842
    :sswitch_5
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "airplane_mode_on"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/4 v8, 0x1

    .line 845
    .local v8, isAirplaneModeOn:Z
    :goto_1
    if-nez v8, :cond_0

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto/16 :goto_0

    .line 843
    .end local v8           #isAirplaneModeOn:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 849
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto/16 :goto_0

    .line 854
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto/16 :goto_0

    .line 859
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v19

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    sget-boolean v19, Lcom/android/phone/PhoneGlobals;->mIsInitiatedMMI:Z

    if-eqz v19, :cond_0

    .line 860
    const-string v19, "PhoneApp"

    const-string v20, "keep MMI_INITIATE event"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mMmiInitMsg:Landroid/os/AsyncResult;

    goto/16 :goto_0

    .line 866
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    #calls: Lcom/android/phone/PhoneGlobals;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$200(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 870
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    #calls: Lcom/android/phone/PhoneGlobals;->onMMICompleteSecondary(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$300(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 874
    :sswitch_a
    const-string v19, "sec_product_feature_common_dsds_support"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 875
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 876
    .local v4, arg:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/Phone;

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    .line 878
    .end local v4           #arg:Landroid/os/AsyncResult;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    .line 883
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    .line 887
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    #calls: Lcom/android/phone/PhoneGlobals;->onSSInfo(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$400(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 892
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    #calls: Lcom/android/phone/PhoneGlobals;->onSSInfoSecondary(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$500(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 900
    :sswitch_e
    const-string v19, "feature_srvcc_kor"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 901
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSecImsCallStateSrvcc()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 902
    const-string v19, "PhoneApp"

    const-string v20, "EVENT_WIRED_HEADSET_PLUG : break"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 906
    :cond_6
    const-string v19, "feature_chn_duos"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 908
    :cond_7
    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 915
    .local v10, phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :goto_2
    sget-object v19, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v19

    if-ne v10, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v19

    if-nez v19, :cond_b

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v19

    if-nez v19, :cond_12

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 923
    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 925
    :cond_8
    const-string v19, "extra_volume"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 929
    :cond_9
    sget-boolean v19, Lcom/android/phone/PhoneGlobals;->mIsDockConnected:Z

    if-eqz v19, :cond_11

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 935
    :goto_3
    const-string v19, "support_folder_hardkey"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mIsHardKeyboardOpen:Z
    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->access$600(Lcom/android/phone/PhoneGlobals;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 939
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    .line 956
    :goto_4
    const-string v19, "headset_highest_priority_for_call"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 960
    :cond_b
    sget-object v19, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v19

    if-ne v10, v0, :cond_c

    .line 961
    const-string v19, "headset_highest_priority_for_call"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c

    const-string v19, "support_incomingcall_multi_window"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v19

    if-eqz v19, :cond_c

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v19

    if-nez v19, :cond_15

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->setAcceptViaSpeakerBtn(Z)V

    .line 969
    :cond_c
    const-string v19, "feature_chn_duos"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/PhoneGlobals;->getRinger(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/Ringer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/Ringer;->updateHeadsetRingtoneState()V

    .line 976
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CallNotifier;->updateRingbackToneVolume()V

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 981
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    .line 983
    const-string v19, "feature_att"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_d

    const-string v19, "feature_tmo"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 985
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v19

    if-nez v19, :cond_e

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->access$700(Lcom/android/phone/PhoneGlobals;)I

    move-result v19

    if-eqz v19, :cond_e

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "preferred_tty_mode"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I
    invoke-static/range {v19 .. v20}, Lcom/android/phone/PhoneGlobals;->access$702(Lcom/android/phone/PhoneGlobals;I)I

    .line 993
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z
    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->access$800(Lcom/android/phone/PhoneGlobals;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 994
    const/16 v19, 0xe

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 910
    .end local v10           #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    .restart local v10       #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    goto/16 :goto_2

    .line 912
    .end local v10           #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    .restart local v10       #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    goto/16 :goto_2

    .line 932
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 946
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 947
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 949
    :cond_13
    const-string v19, "extra_volume"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 953
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    goto/16 :goto_4

    .line 964
    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 972
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/Ringer;->updateHeadsetRingtoneState()V

    goto/16 :goto_6

    .line 1002
    .end local v10           #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    const-string v20, "READY"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->access$900(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v19

    if-eqz v19, :cond_17

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->access$900(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->finish()V

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static/range {v19 .. v20}, Lcom/android/phone/PhoneGlobals;->access$902(Lcom/android/phone/PhoneGlobals;Landroid/app/Activity;)Landroid/app/Activity;

    .line 1010
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->access$1000(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->access$1000(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->dismiss()V

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v19 .. v20}, Lcom/android/phone/PhoneGlobals;->access$1002(Lcom/android/phone/PhoneGlobals;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 1024
    :sswitch_10
    const/4 v6, 0x0

    .line 1025
    .local v6, inDockMode:Z
    sget v19, Lcom/android/phone/PhoneGlobals;->mDockState:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_18

    sget v19, Lcom/android/phone/PhoneGlobals;->mDockState:I

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_18

    sget v19, Lcom/android/phone/PhoneGlobals;->mDockState:I

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 1030
    :cond_18
    const/4 v6, 0x1

    .line 1032
    :cond_19
    const-string v19, "PhoneApp"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "received EVENT_DOCK_STATE_CHANGED. Phone inDock = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const-string v19, "audio_separate_deskdock_path"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 1036
    const-string v19, "PhoneApp"

    const-string v20, "setParameter - DeskDockIPC"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    const-string v20, "audio"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 1038
    .local v5, audioManager:Landroid/media/AudioManager;
    if-eqz v6, :cond_1c

    .line 1039
    sget v19, Lcom/android/phone/PhoneGlobals;->mDockState:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 1040
    const-string v19, "DeskDockIPC=on"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1047
    .end local v5           #audioManager:Landroid/media/AudioManager;
    :cond_1a
    :goto_7
    const-string v19, "not_spk_auto_changed_in_dock"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 1049
    if-eqz v6, :cond_1b

    sget v19, Lcom/android/phone/PhoneGlobals;->mDockState:I

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1052
    :cond_1b
    const-string v19, "feature_srvcc_kor"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 1053
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSecImsCallStateSrvcc()Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 1054
    const-string v19, "PhoneApp"

    const-string v20, "EVENT_DOCK_STATE_CHANGED : break"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 1043
    .restart local v5       #audioManager:Landroid/media/AudioManager;
    :cond_1c
    const-string v19, "DeskDockIPC=off"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_7

    .line 1059
    .end local v5           #audioManager:Landroid/media/AudioManager;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    .line 1060
    .restart local v10       #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v19, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v19

    if-ne v10, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v19

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1062
    const-string v19, "restore_spk_unplugged_dock"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_21

    .line 1063
    if-eqz v6, :cond_20

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1071
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1e

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/InVTCallScreen;->requestUpdateDockUi()V

    .line 1074
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1f

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/InCallScreen;->requestUpdateDockUi()V

    .line 1077
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    goto/16 :goto_0

    .line 1066
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_8

    .line 1069
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_8

    .line 1084
    .end local v6           #inDockMode:Z
    .end local v10           #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v19

    if-eqz v19, :cond_22

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->access$700(Lcom/android/phone/PhoneGlobals;)I

    move-result v16

    .line 1089
    .local v16, ttyMode:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x10

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1087
    .end local v16           #ttyMode:I
    :cond_22
    const/16 v16, 0x0

    .restart local v16       #ttyMode:I
    goto :goto_9

    .line 1093
    .end local v16           #ttyMode:I
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    #calls: Lcom/android/phone/PhoneGlobals;->handleQueryTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$1100(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1097
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    #calls: Lcom/android/phone/PhoneGlobals;->handleSetTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$1200(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1100
    :sswitch_14
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    goto/16 :goto_0

    .line 1103
    :sswitch_15
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/phone/PhoneGlobals;->mIsScreenOn:Z

    .line 1104
    const-string v19, "raft"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1105
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    goto/16 :goto_0

    .line 1109
    :sswitch_16
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/phone/PhoneGlobals;->mIsScreenOn:Z

    .line 1110
    const-string v19, "raft"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_23

    .line 1111
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    .line 1114
    :cond_23
    const-string v19, "reject_call_with_message_drawer_while_in_secure_lock_pending"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_24

    .line 1115
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->clearRejectCallWithMessagePendingList()V

    .line 1117
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mMmiState:Lcom/android/internal/telephony/MmiCode$State;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->access$1300(Lcom/android/phone/PhoneGlobals;)Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isShowingMmiDialog()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mMmiState:Lcom/android/internal/telephony/MmiCode$State;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->access$1300(Lcom/android/phone/PhoneGlobals;)Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1119
    const-string v19, "PhoneApp"

    const-string v20, "endInCallScreenSession..."

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto/16 :goto_0

    .line 1125
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "surface_palm_touch"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 1127
    .local v18, val:I
    const-string v19, "PhoneApp"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "EVENT_PALM_DOWN : value = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    if-lez v18, :cond_0

    .line 1129
    const-string v19, "feature_multisim"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_26

    .line 1130
    const/4 v13, 0x0

    .local v13, simSlot:I
    :goto_a
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v13, v0, :cond_0

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v19

    if-eqz v19, :cond_25

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_0

    .line 1130
    :cond_25
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 1136
    .end local v13           #simSlot:I
    :cond_26
    const-string v19, "sec_product_feature_common_dsds_support"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_28

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v19

    if-eqz v19, :cond_27

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_0

    .line 1139
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_0

    .line 1142
    :cond_28
    const-string v19, "feature_chn_duos"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_29

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/PhoneGlobals;->getNotifier(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/CallNotifier;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/PhoneGlobals;->getNotifier(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/CallNotifier;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_0

    .line 1147
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_0

    .line 1156
    .end local v18           #val:I
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/InCallScreen;->checkCurrentAudioPath()V

    goto/16 :goto_0

    .line 1162
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothHeadset;->isDualHfConnected()Z

    move-result v19

    if-eqz v19, :cond_2a

    const-string v15, "DUAL"

    .line 1164
    .local v15, state:Ljava/lang/String;
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v19, v0

    const-string v20, "DUAL"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v15}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1163
    .end local v15           #state:Ljava/lang/String;
    :cond_2a
    const-string v15, "SINGLE"

    goto :goto_b

    .line 1170
    :sswitch_1a
    const-string v19, "PhoneApp"

    const-string v20, "mHandler: EVENT_QC_ACQUIRE_CALL"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/phone/PhoneGlobals;->sRestrictedCallForQC:Z

    goto/16 :goto_0

    .line 1176
    :sswitch_1b
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVideoCallType()Z

    move-result v19

    if-nez v19, :cond_0

    sget-boolean v19, Lcom/android/phone/PhoneGlobals;->mIsDockConnected:Z

    if-nez v19, :cond_0

    .line 1177
    const-string v19, "PhoneApp"

    const-string v20, "VE: mHandler: HANDLE_MSG_READY_PLAY"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v19

    if-eqz v19, :cond_2b

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/CallCard;->enableVisualExpression(Z)V

    .line 1181
    :cond_2b
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getHandler()Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x11eb

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1185
    :sswitch_1c
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVideoCallType()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1186
    const-string v19, "PhoneApp"

    const-string v20, "VE: mHandler: HANDLE_MSG_STOP_PLAY"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getHandler()Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x11ec

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/CallCard;->enableVisualExpression(Z)V

    goto/16 :goto_0

    .line 1194
    :sswitch_1d
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVideoCallType()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1195
    const-string v19, "PhoneApp"

    const-string v20, "VE: mHandler: HANDLE_MSG_MEDIA_ERROR"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getHandler()Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x11ec

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/CallCard;->enableVisualExpression(Z)V

    goto/16 :goto_0

    .line 1204
    :sswitch_1e
    const-string v19, "ManualSelectionReceiver"

    const-string v20, "Selection Automatic Done "

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1207
    :sswitch_1f
    const-string v19, "PhoneApp"

    const-string v20, "EVENT_GET_PREFERRED_NETWORK "

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1209
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1210
    .local v3, ar:Landroid/os/AsyncResult;
    const/16 v17, 0x0

    .line 1211
    .local v17, type:I
    if-nez v3, :cond_2c

    .line 1212
    const-string v19, "PhoneApp"

    const-string v20, "ar is null...."

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1215
    :cond_2c
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    if-nez v19, :cond_2d

    .line 1216
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [I

    check-cast v19, [I

    const/16 v20, 0x0

    aget v17, v19, v20

    .line 1217
    const-string v19, "PhoneApp"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "get preferred network type="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    packed-switch v17, :pswitch_data_0

    .line 1232
    const-string v19, "ril.roaming.networkmode"

    const-string v20, "AUTO"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :goto_c
    const-string v19, "PhoneApp"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleGetPreferredNetworkTypeResponse  set to = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ril.roaming.networkmode"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1220
    :cond_2d
    const-string v19, "PhoneApp"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "get preferred network type, exception="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1226
    :pswitch_0
    const-string v19, "ril.roaming.networkmode"

    const-string v20, "GSM"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 1229
    :pswitch_1
    const-string v19, "ril.roaming.networkmode"

    const-string v20, "WCDMA"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 1241
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v17           #type:I
    :sswitch_20
    const-string v19, "ril.ICC2_TYPE"

    const-string v20, "0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2e

    const-string v19, "ril.ICC2_TYPE"

    const-string v20, "0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2f

    .line 1243
    :cond_2e
    const-string v19, "PhoneApp"

    const-string v20, "check network 2"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1247
    :cond_2f
    const-string v19, "PhoneApp"

    const-string v20, "check network 1"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1253
    :sswitch_21
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->access$1400()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1254
    const-string v19, "PhoneApp"

    const-string v20, " EVENT_DATA_ROAM_ACCESS Show Toast"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->ShowDataRoamingToast()V

    .line 1256
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->access$1402(Z)Z

    goto/16 :goto_0

    .line 1260
    :sswitch_22
    const-string v19, "PhoneApp"

    const-string v20, " EVENT_DATA_ROAMING_DENY Notify!"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/NotificationMgr;->showAllowDataAccess()V

    goto/16 :goto_0

    .line 1265
    :sswitch_23
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    .line 1266
    .local v12, set:Ljava/lang/Boolean;
    const-string v19, "PhoneApp"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "EVENT_SET_PS_CHANNEL :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/phone/PhoneGlobals;->setChannel(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 1271
    .end local v12           #set:Ljava/lang/Boolean;
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    .line 1272
    .local v11, serviceState:I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    #calls: Lcom/android/phone/PhoneGlobals;->isGlobalPopupDisplay()Z
    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->access$1500(Lcom/android/phone/PhoneGlobals;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1273
    const-string v19, "PhoneApp"

    const-string v20, "GlobalNetworkSelectAlertDialog is start"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    new-instance v7, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1275
    .local v7, intent:Landroid/content/Intent;
    const-string v19, "com.android.phone"

    const-string v20, "com.android.phone.GlobalNetworkSelectAlertDialog"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1276
    const/high16 v19, 0x1000

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1282
    .end local v7           #intent:Landroid/content/Intent;
    .end local v11           #serviceState:I
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x24

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_30

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x24

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1284
    :cond_30
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->getDataRoamingGuardInstance()Lcom/android/phone/DataRoamingGuard;

    move-result-object v19

    if-nez v19, :cond_0

    .line 1285
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingDataRoaming()V

    goto/16 :goto_0

    .line 1289
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    #calls: Lcom/android/phone/PhoneGlobals;->handleCallStateChanged()V
    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->access$1600(Lcom/android/phone/PhoneGlobals;)V

    goto/16 :goto_0

    .line 1293
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1b

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_31

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1b

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1295
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    #calls: Lcom/android/phone/PhoneGlobals;->handleShowInCallScreen()V
    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->access$1700(Lcom/android/phone/PhoneGlobals;)V

    goto/16 :goto_0

    .line 1299
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->makeGoToSleepWithNoLockSound()V

    goto/16 :goto_0

    .line 780
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_e
        0x8 -> :sswitch_f
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0xc -> :sswitch_0
        0xd -> :sswitch_10
        0xe -> :sswitch_11
        0xf -> :sswitch_12
        0x10 -> :sswitch_13
        0x11 -> :sswitch_1
        0x12 -> :sswitch_1a
        0x14 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_1e
        0x1b -> :sswitch_27
        0x1d -> :sswitch_23
        0x1e -> :sswitch_19
        0x1f -> :sswitch_2
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_24
        0x24 -> :sswitch_25
        0x25 -> :sswitch_28
        0x28 -> :sswitch_26
        0x33 -> :sswitch_7
        0x34 -> :sswitch_8
        0x35 -> :sswitch_a
        0x3e -> :sswitch_9
        0x3f -> :sswitch_b
        0x46 -> :sswitch_c
        0x47 -> :sswitch_d
        0x2bc -> :sswitch_1f
        0x11ea -> :sswitch_1b
        0x11ec -> :sswitch_1c
        0x11f1 -> :sswitch_1d
    .end sparse-switch

    .line 1224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
