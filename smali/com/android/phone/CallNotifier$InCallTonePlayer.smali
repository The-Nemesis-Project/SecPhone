.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;

.field private toneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1
    .parameter
    .parameter "toneId"

    .prologue
    .line 4871
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 4872
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4873
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 4874
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 4875
    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 4879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "InCallTonePlayer.run (toneId = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v21 .. v23}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 4881
    const/16 v17, 0x0

    .line 4884
    .local v17, toneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    .line 4886
    .local v9, phoneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneGlobals;->acquirePartialWakeLock()V

    .line 4889
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_VoiceCall_TunnigCallWaitingToneAs"

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v19

    .line 4892
    .local v19, tunningCallWaitingTone:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 5031
    :pswitch_0
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Bad toneId: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 4894
    :pswitch_1
    const/16 v17, 0x16

    .line 4895
    if-lez v19, :cond_a

    .line 4896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 4897
    const/16 v18, 0x50

    .line 4904
    .local v18, toneVolume:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "InCallTonePlayer: WAITING :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v21 .. v23}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 4905
    const-string v21, "gsm.operator.iso-country"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4906
    .local v3, countryCode:Ljava/lang/String;
    const-string v21, "ca"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 4907
    .local v5, isCountryCan:Ljava/lang/Boolean;
    const-string v21, "dcm_callwait_tone_long_feature"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 4911
    const/16 v15, 0x5208

    .line 5034
    .end local v3           #countryCode:Ljava/lang/String;
    .end local v5           #isCountryCan:Ljava/lang/Boolean;
    .local v15, toneLengthMillis:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "InCallTonePlayer.run (toneType="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", toneVolume="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", toneLengthMillis="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 5040
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    .line 5043
    const/4 v6, 0x0

    .line 5044
    .local v6, isVideoCall:Z
    :try_start_0
    const-string v21, "feature_chn_duos"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 5045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v6

    .line 5049
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v21

    if-eqz v21, :cond_1b

    .line 5050
    if-eqz v6, :cond_19

    .line 5051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v21

    if-eqz v21, :cond_18

    const/4 v14, 0x6

    .line 5064
    .local v14, stream:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "InCallTonePlayer: stream :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v21 .. v23}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 5066
    const-string v21, "common_volte"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    const-string v21, "feature_lgt"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v9, v0, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v21, v0

    const/16 v22, 0xc

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 5069
    const-wide/16 v21, 0x190

    invoke-static/range {v21 .. v22}, Landroid/os/SystemClock;->sleep(J)V

    .line 5072
    :cond_0
    new-instance v21, Landroid/media/ToneGenerator;

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-direct {v0, v14, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5094
    .end local v14           #stream:I
    :goto_4
    const/4 v7, 0x1

    .line 5095
    .local v7, needToStopTone:Z
    const/4 v8, 0x0

    .line 5097
    .local v8, okToPlayTone:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 5098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    .line 5099
    .local v11, ringerMode:I
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v9, v0, :cond_22

    .line 5100
    const/16 v21, 0x5d

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    .line 5101
    if-eqz v11, :cond_1

    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    .line 5103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "- InCallTonePlayer: start playing call tone="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 5104
    const/4 v8, 0x1

    .line 5105
    const/4 v7, 0x0

    .line 5132
    :cond_1
    :goto_5
    const-string v21, "custom_waiting_tone"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 5133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "volume_waiting_tone"

    const/16 v23, 0x2

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 5134
    .local v10, rate:I
    const/high16 v20, 0x3f80

    .line 5135
    .local v20, volFloat:F
    const-wide/high16 v21, 0x4000

    add-int/lit8 v23, v10, -0x2

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v20, v0

    .line 5136
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v21, v0

    const/16 v22, 0x10

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v21, v0

    const/16 v22, 0x11

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 5141
    :cond_2
    :try_start_1
    const-string v16, "situation=15;device=0"

    .line 5142
    .local v16, toneSituation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    mul-float v12, v21, v20

    .line 5143
    .local v12, situationVolume:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/media/ToneGenerator;->setVolume(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5150
    .end local v10           #rate:I
    .end local v12           #situationVolume:F
    .end local v16           #toneSituation:Ljava/lang/String;
    .end local v20           #volFloat:F
    :cond_3
    :goto_6
    const-string v21, "use_situation_gain_for_ringbacktones"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 5151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v21, v0

    const/16 v22, 0xc

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 5153
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v21

    const-string v22, "situation=12"

    invoke-virtual/range {v21 .. v22}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    .line 5154
    .restart local v12       #situationVolume:F
    const-string v21, "add_situation_gain_for_ringbacktones"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 5155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v21

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_4

    const v21, 0x3f333333

    add-float v12, v12, v21

    .line 5157
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/media/ToneGenerator;->setVolume(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 5164
    .end local v12           #situationVolume:F
    :cond_5
    :goto_7
    monitor-enter p0

    .line 5165
    if-eqz v8, :cond_6

    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 5166
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 5167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5169
    add-int/lit8 v21, v15, 0x14

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    :try_start_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 5175
    :goto_8
    if-eqz v7, :cond_6

    .line 5176
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/ToneGenerator;->stopTone()V

    .line 5180
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/ToneGenerator;->release()V

    .line 5181
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 5182
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5185
    .end local v11           #ringerMode:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneGlobals;->releasePartialWakeLock()V

    .line 5201
    const-string v21, "feature_chn_duos"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_23

    .line 5202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v13

    .line 5206
    .local v13, state:Lcom/android/internal/telephony/PhoneConstants$State;
    :goto_9
    sget-object v21, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v21

    if-ne v13, v0, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v21, v0

    const/16 v22, 0xc

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 5207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "InCallTonePlayer:calling resetAudioStateAfterDisconnect  + "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v21 .. v23}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 5208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 5210
    :cond_8
    return-void

    .line 4899
    .end local v6           #isVideoCall:Z
    .end local v7           #needToStopTone:Z
    .end local v8           #okToPlayTone:Z
    .end local v13           #state:Lcom/android/internal/telephony/PhoneConstants$State;
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :cond_9
    move/from16 v18, v19

    .restart local v18       #toneVolume:I
    goto/16 :goto_0

    .line 4902
    .end local v18           #toneVolume:I
    :cond_a
    const/16 v18, 0x50

    .restart local v18       #toneVolume:I
    goto/16 :goto_0

    .line 4912
    .restart local v3       #countryCode:Ljava/lang/String;
    .restart local v5       #isCountryCan:Ljava/lang/Boolean;
    :cond_b
    const-string v21, "feature_can_bmc"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 4913
    const v15, 0x7fffffeb

    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 4916
    .end local v15           #toneLengthMillis:I
    :cond_c
    const/16 v15, 0x1db0

    .line 4918
    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 4920
    .end local v3           #countryCode:Ljava/lang/String;
    .end local v5           #isCountryCan:Ljava/lang/Boolean;
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :pswitch_2
    const-string v21, "common_volte"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    const-string v21, "feature_kor"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v9, v0, :cond_d

    .line 4923
    const/16 v17, 0x11

    .line 4924
    const/16 v18, 0x50

    .line 4925
    .restart local v18       #toneVolume:I
    const/16 v15, 0x1194

    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 4926
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :cond_d
    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v9, v0, :cond_e

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v9, v0, :cond_11

    .line 4928
    :cond_e
    const/16 v17, 0x60

    .line 4929
    const-string v21, "feature_kdi"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 4930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 4931
    const/16 v18, 0x50

    .line 4938
    .restart local v18       #toneVolume:I
    :goto_a
    const/16 v15, 0x3e8

    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 4933
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :cond_f
    const/16 v18, 0x32

    .restart local v18       #toneVolume:I
    goto :goto_a

    .line 4936
    .end local v18           #toneVolume:I
    :cond_10
    const/16 v18, 0x32

    .restart local v18       #toneVolume:I
    goto :goto_a

    .line 4939
    .end local v18           #toneVolume:I
    :cond_11
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v9, v0, :cond_12

    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v9, v0, :cond_12

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v9, v0, :cond_13

    .line 4942
    :cond_12
    const/16 v17, 0x11

    .line 4943
    const/16 v18, 0x50

    .line 4944
    .restart local v18       #toneVolume:I
    const/16 v15, 0x1194

    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 4946
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :cond_13
    new-instance v21, Ljava/lang/IllegalStateException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unexpected phone type: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 4950
    :pswitch_3
    const/16 v17, 0x12

    .line 4951
    const/16 v18, 0x50

    .line 4952
    .restart local v18       #toneVolume:I
    const/16 v15, 0xfa0

    .line 4953
    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 4956
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :pswitch_4
    const/16 v17, 0x1b

    .line 4957
    const/16 v18, 0x50

    .line 4958
    .restart local v18       #toneVolume:I
    const/16 v15, 0xc8

    .line 4959
    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 4961
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 4963
    const/16 v17, 0x5d

    .line 4964
    const/16 v18, 0x50

    .line 4965
    .restart local v18       #toneVolume:I
    const/16 v15, 0x2ee

    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 4967
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :cond_14
    const/16 v17, 0x1b

    .line 4968
    const/16 v18, 0x50

    .line 4969
    .restart local v18       #toneVolume:I
    const/16 v15, 0xc8

    .line 4971
    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 4973
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :pswitch_6
    const/16 v17, 0x56

    .line 4974
    const/16 v18, 0x50

    .line 4975
    .restart local v18       #toneVolume:I
    const/16 v15, 0x1388

    .line 4976
    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 4978
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :pswitch_7
    const/16 v17, 0x26

    .line 4979
    const/16 v18, 0x50

    .line 4980
    .restart local v18       #toneVolume:I
    const/16 v15, 0xfa0

    .line 4981
    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 4983
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :pswitch_8
    const/16 v17, 0x25

    .line 4984
    const/16 v18, 0x32

    .line 4985
    .restart local v18       #toneVolume:I
    const/16 v15, 0x1f4

    .line 4986
    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 4989
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :pswitch_9
    const/16 v17, 0x5f

    .line 4990
    const/16 v18, 0x32

    .line 4991
    .restart local v18       #toneVolume:I
    const/16 v15, 0x177

    .line 4992
    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 4994
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :pswitch_a
    const/16 v17, 0x57

    .line 4995
    const/16 v18, 0x32

    .line 4996
    .restart local v18       #toneVolume:I
    const/16 v15, 0x1388

    .line 4997
    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 4999
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :pswitch_b
    const-string v21, "volte_cdma_ringback_tone"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 5000
    const/16 v17, 0x23

    .line 5006
    :goto_b
    const/16 v18, 0x50

    .line 5008
    .restart local v18       #toneVolume:I
    const v15, 0x7fffffeb

    .line 5009
    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 5001
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :cond_15
    const-string v21, "feature_kor"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 5002
    const/16 v17, 0x23

    goto :goto_b

    .line 5004
    :cond_16
    const/16 v17, 0x17

    goto :goto_b

    .line 5011
    :pswitch_c
    const/16 v17, 0x15

    .line 5012
    const/16 v18, 0x50

    .line 5013
    .restart local v18       #toneVolume:I
    const/16 v15, 0xfa0

    .line 5014
    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 5016
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :pswitch_d
    const/16 v17, 0x19

    .line 5017
    const/16 v18, 0x32

    .line 5018
    .restart local v18       #toneVolume:I
    const/16 v15, 0x3e8

    .line 5019
    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 5021
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :pswitch_e
    const/16 v17, 0x66

    .line 5022
    const/16 v18, 0x50

    .line 5023
    .restart local v18       #toneVolume:I
    const/16 v15, 0x258

    .line 5024
    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 5026
    .end local v15           #toneLengthMillis:I
    .end local v18           #toneVolume:I
    :pswitch_f
    const/16 v17, 0x67

    .line 5027
    const/16 v18, 0x32

    .line 5028
    .restart local v18       #toneVolume:I
    const/16 v15, 0x154

    .line 5029
    .restart local v15       #toneLengthMillis:I
    goto/16 :goto_1

    .line 5047
    .restart local v6       #isVideoCall:Z
    :cond_17
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v6

    goto/16 :goto_2

    .line 5051
    :cond_18
    const/16 v14, 0xb

    goto/16 :goto_3

    .line 5054
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v21

    if-eqz v21, :cond_1a

    const/4 v14, 0x6

    .restart local v14       #stream:I
    :goto_c
    goto/16 :goto_3

    .end local v14           #stream:I
    :cond_1a
    const/4 v14, 0x0

    goto :goto_c

    .line 5058
    :cond_1b
    if-eqz v6, :cond_1c

    .line 5059
    const/16 v14, 0xb

    .restart local v14       #stream:I
    goto/16 :goto_3

    .line 5061
    .end local v14           #stream:I
    :cond_1c
    const/4 v14, 0x0

    .restart local v14       #stream:I
    goto/16 :goto_3

    .line 5074
    .end local v14           #stream:I
    :catch_0
    move-exception v4

    .line 5075
    .local v4, e:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 5077
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_4

    .line 5107
    .end local v4           #e:Ljava/lang/RuntimeException;
    .restart local v7       #needToStopTone:Z
    .restart local v8       #okToPlayTone:Z
    .restart local v11       #ringerMode:I
    :cond_1d
    const/16 v21, 0x60

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_1e

    const/16 v21, 0x26

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_1e

    const/16 v21, 0x27

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_1e

    const/16 v21, 0x25

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_1e

    const/16 v21, 0x5f

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_1f

    .line 5112
    :cond_1e
    if-eqz v11, :cond_1

    .line 5113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 5114
    const/4 v8, 0x1

    .line 5115
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 5117
    :cond_1f
    const/16 v21, 0x57

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_20

    const/16 v21, 0x56

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_21

    .line 5119
    :cond_20
    if-eqz v11, :cond_1

    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    .line 5121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 5122
    const/4 v8, 0x1

    .line 5123
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 5126
    :cond_21
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 5129
    :cond_22
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 5144
    .restart local v10       #rate:I
    .restart local v20       #volFloat:F
    :catch_1
    move-exception v4

    .line 5145
    .local v4, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "CUSTOM_WAITING_TONE: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_6

    .line 5158
    .end local v4           #e:Ljava/lang/Exception;
    .end local v10           #rate:I
    .end local v20           #volFloat:F
    :catch_2
    move-exception v4

    .line 5159
    .restart local v4       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "USE_SITUATION_GAIN_FOR_RINGBACKTONES: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_7

    .line 5170
    .end local v4           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 5171
    .local v4, e:Ljava/lang/InterruptedException;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "InCallTonePlayer stopped: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_8

    .line 5182
    .end local v4           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v21

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v21

    .line 5204
    .end local v11           #ringerMode:I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v13

    .restart local v13       #state:Lcom/android/internal/telephony/PhoneConstants$State;
    goto/16 :goto_9

    .line 4892
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "vol"

    .prologue
    .line 5222
    iget-object v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 5223
    iget-object v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, p1}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 5225
    :cond_0
    return-void
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 5213
    monitor-enter p0

    .line 5214
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5215
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 5217
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 5218
    monitor-exit p0

    .line 5219
    return-void

    .line 5218
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
