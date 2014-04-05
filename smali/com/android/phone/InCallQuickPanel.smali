.class public Lcom/android/phone/InCallQuickPanel;
.super Landroid/widget/RemoteViews;
.source "InCallQuickPanel.java"


# static fields
.field private static final mQuickPanelReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mPhoneApp:Lcom/android/phone/PhoneGlobals;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/phone/InCallQuickPanel$1;

    invoke-direct {v0}, Lcom/android/phone/InCallQuickPanel$1;-><init>()V

    sput-object v0, Lcom/android/phone/InCallQuickPanel;->mQuickPanelReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "layoutId"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 186
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    .line 187
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 188
    invoke-direct {p0}, Lcom/android/phone/InCallQuickPanel;->initInCallQuickPanel()V

    .line 189
    return-void
.end method

.method private getCallBaseTime()J
    .locals 6

    .prologue
    .line 495
    iget-object v4, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 496
    .local v3, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 498
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v4

    if-nez v4, :cond_0

    .line 499
    move-object v3, v0

    .line 502
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 503
    :cond_1
    const-wide/16 v4, -0x1

    .line 507
    :goto_0
    return-wide v4

    .line 506
    :cond_2
    invoke-static {v3}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v1

    .line 507
    .local v1, duration:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    goto :goto_0
.end method

.method private getCallerNameforConf()Ljava/lang/String;
    .locals 8

    .prologue
    .line 467
    const/4 v2, 0x0

    .line 468
    .local v2, callerName:Ljava/lang/String;
    const/4 v1, 0x1

    .line 469
    .local v1, bFirstInfo:Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v0, activeParticipants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v3

    .line 472
    .local v3, icCM:Lcom/android/phone/IMSConferenceCallMgr;
    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr;->getActiveParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 474
    :cond_0
    const-string v6, "InCallQuickPanel"

    const-string v7, "[getCallerNameforConf] activeParticipants is null"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v6, 0x0

    .line 491
    :goto_0
    return-object v6

    .line 478
    :cond_1
    const/4 v4, 0x0

    .local v4, index:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 479
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsIms;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 481
    .local v5, tempInfo:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 482
    if-eqz v1, :cond_3

    .line 483
    move-object v2, v5

    .line 484
    const/4 v1, 0x0

    .line 478
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 486
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .end local v5           #tempInfo:Ljava/lang/String;
    :cond_4
    move-object v6, v2

    .line 491
    goto :goto_0
.end method

.method private getRecordBaseTime()J
    .locals 5

    .prologue
    .line 511
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v2

    .line 512
    .local v2, recorder:Lcom/android/phone/PhoneVoiceRecorder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 513
    invoke-virtual {v2}, Lcom/android/phone/PhoneVoiceRecorder;->getRecordTime()J

    move-result-wide v0

    .line 514
    .local v0, duration:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 516
    .end local v0           #duration:J
    :goto_0
    return-wide v3

    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method private initInCallQuickPanel()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 193
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.SHOW_SCREEN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 195
    .local v0, PI:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.MUTE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 197
    .local v1, PI2:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.SPEAKER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 199
    .local v2, PI3:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.UNHOLD"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 201
    .local v3, PI4:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.END"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 204
    .local v4, PI5:Landroid/app/PendingIntent;
    const v5, 0x7f0a02c0

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 205
    const v5, 0x7f0a02c1

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 206
    const v5, 0x7f0a02c2

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 208
    const v5, 0x7f0a02c5

    invoke-virtual {p0, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 209
    const v5, 0x7f0a02c6

    invoke-virtual {p0, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 211
    const v5, 0x7f0a02c9

    invoke-virtual {p0, v5, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 212
    const v5, 0x7f0a02ca

    invoke-virtual {p0, v5, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 214
    const v5, 0x7f0a02c3

    invoke-virtual {p0, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 215
    const v5, 0x7f0a02cc

    invoke-virtual {p0, v5, v4}, Landroid/widget/RemoteViews;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 216
    return-void
.end method

.method public static registerQuickPanelReceiver()V
    .locals 3

    .prologue
    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.phone.SHOW_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v1, "com.android.phone.MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v1, "com.android.phone.SPEAKER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "com.android.phone.UNHOLD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "com.android.phone.END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    sget-object v2, Lcom/android/phone/InCallQuickPanel;->mQuickPanelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    return-void
.end method


# virtual methods
.method public updateInCallQuickPanel()V
    .locals 34

    .prologue
    .line 219
    const-wide/high16 v4, -0x8000

    .line 222
    .local v4, callDurationBaseTime:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    .line 224
    .local v22, call:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 225
    :cond_0
    const v2, 0x7f0a02c2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 226
    const v2, 0x7f0a02c0

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 227
    const v2, 0x7f0a02c1

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 228
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v25

    .line 230
    .local v25, context:Landroid/content/Context;
    const v2, 0x7f0a02c9

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0904fb

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 231
    const v2, 0x7f0a02ca

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0904fb

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 232
    const v2, 0x7f0a02cb

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0904fb

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 251
    .end local v25           #context:Landroid/content/Context;
    :cond_1
    :goto_0
    const/16 v32, 0x0

    .line 252
    .local v32, notMuteCase:Z
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v28

    .line 254
    .local v28, isECM:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 256
    const v2, 0x7f0a02c3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 257
    const v2, 0x7f0a02c4

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 258
    const v2, 0x7f0a02c8

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 303
    :goto_1
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getMute(Lcom/android/internal/telephony/Phone;)Z

    move-result v29

    .line 309
    .local v29, isMute:Z
    :goto_2
    const-string v2, "no_receiver_in_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 310
    if-nez v29, :cond_19

    .line 311
    const v2, 0x7f0a02c5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 312
    const v2, 0x7f0a02c6

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 334
    :goto_3
    const-string v2, "headset_highest_priority_for_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 337
    const v2, 0x7f0a02c9

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 338
    const v2, 0x7f0a02ca

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 339
    const v2, 0x7f0a02cb

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 361
    :goto_4
    const-string v2, "answering_call_in_external_screen"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isHardKeyboardOpened()Z

    move-result v2

    if-nez v2, :cond_2

    .line 363
    const v2, 0x7f0a02c9

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 364
    const v2, 0x7f0a02ca

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 365
    const v2, 0x7f0a02cb

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 368
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_3

    .line 369
    const v2, 0x7f0a02c5

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 370
    const v2, 0x7f0a02c6

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 371
    const v2, 0x7f0a02c7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 372
    const v2, 0x7f0a02c9

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 373
    const v2, 0x7f0a02ca

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 374
    const v2, 0x7f0a02cb

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 377
    :cond_3
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v27

    .line 380
    .local v27, inCallScreen:Lcom/android/phone/InCallScreen;
    if-eqz v27, :cond_4

    .line 381
    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v23

    .line 382
    .local v23, callCard:Lcom/android/phone/CallCard;
    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/CallCard;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 383
    const v2, 0x7f0a02c5

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 384
    const v2, 0x7f0a02c6

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 385
    const v2, 0x7f0a02c7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 387
    const v2, 0x7f0a02c9

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 388
    const v2, 0x7f0a02ca

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 389
    const v2, 0x7f0a02cb

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 395
    .end local v23           #callCard:Lcom/android/phone/CallCard;
    .end local v27           #inCallScreen:Lcom/android/phone/InCallScreen;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallQuickPanel;->getCallBaseTime()J

    move-result-wide v4

    .line 396
    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-lez v2, :cond_21

    .line 397
    const v2, 0x7f0a02ce

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 398
    const v3, 0x7f0a02ce

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 404
    :goto_5
    const-string v31, ""

    .line 405
    .local v31, name:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-nez v2, :cond_22

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallQuickPanel;->getCallerNameforConf()Ljava/lang/String;

    move-result-object v31

    .line 411
    :goto_6
    if-eqz v31, :cond_5

    .line 412
    const v2, 0x7f0a02cd

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 415
    :cond_5
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallQuickPanel;->getRecordBaseTime()J

    move-result-wide v8

    .line 417
    .local v8, recordDurationBaseTime:J
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-lez v2, :cond_23

    .line 418
    const v2, 0x7f0a02d0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 419
    const v7, 0x7f0a02d0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 420
    const v2, 0x7f0a02cf

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v25

    .line 422
    .restart local v25       #context:Landroid/content/Context;
    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v30

    .line 423
    .local v30, metrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v30

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v14, v2, 0x3

    .line 424
    .local v14, rightPadding:I
    const-string v2, "common_volte_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 425
    move-object/from16 v0, v30

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v14, v2, 0x2

    .line 427
    :cond_6
    const v11, 0x7f0a02cd

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 438
    .end local v8           #recordDurationBaseTime:J
    .end local v14           #rightPadding:I
    .end local v25           #context:Landroid/content/Context;
    .end local v30           #metrics:Landroid/util/DisplayMetrics;
    :goto_7
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v26

    .line 441
    .local v26, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    .line 442
    .local v21, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v25

    .line 443
    .restart local v25       #context:Landroid/content/Context;
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    if-nez v2, :cond_7

    .line 444
    move-object/from16 v26, v21

    .line 446
    :cond_7
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v33

    .line 447
    .local v33, simSlotID:I
    const v2, 0x7f0a02d1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 448
    const v2, 0x7f0a02d1

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsDsds;->getSimIconMini(Landroid/content/Context;I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 464
    .end local v21           #backgroundCall:Lcom/android/internal/telephony/Call;
    .end local v25           #context:Landroid/content/Context;
    .end local v26           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v33           #simSlotID:I
    :cond_8
    :goto_8
    return-void

    .line 235
    .end local v28           #isECM:Z
    .end local v29           #isMute:Z
    .end local v31           #name:Ljava/lang/String;
    .end local v32           #notMuteCase:Z
    :cond_9
    const v2, 0x7f0a02c2

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 236
    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_b

    .line 238
    const-string v2, "hd_voice_network_prefer"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 239
    const v2, 0x7f0a02c0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 240
    const v2, 0x7f0a02c1

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 242
    :cond_a
    const v2, 0x7f0a02c0

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 243
    const v2, 0x7f0a02c1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 246
    :cond_b
    const v2, 0x7f0a02c0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 247
    const v2, 0x7f0a02c1

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 259
    .restart local v28       #isECM:Z
    .restart local v32       #notMuteCase:Z
    :cond_c
    const-string v2, "support_nsri_secure"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isNSRISecureCall()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 261
    const v2, 0x7f0a02c3

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 262
    const v2, 0x7f0a02c4

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 263
    const v2, 0x7f0a02c8

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 265
    :cond_d
    const v2, 0x7f0a02c3

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v24

    .line 267
    .local v24, conn:Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_e

    if-eqz v24, :cond_12

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    if-eqz v28, :cond_12

    :cond_e
    const/16 v32, 0x1

    .line 270
    :goto_9
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_f

    if-eqz v24, :cond_13

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    if-eqz v28, :cond_13

    :cond_f
    const/16 v32, 0x1

    .line 275
    :cond_10
    :goto_a
    if-eqz v32, :cond_14

    .line 276
    const-string v2, "no_receiver_in_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 277
    const v2, 0x7f0a02c4

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 295
    :cond_11
    :goto_b
    const-string v2, "no_receiver_in_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 296
    const v2, 0x7f0a02c8

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 267
    :cond_12
    const/16 v32, 0x0

    goto :goto_9

    .line 271
    :cond_13
    const/16 v32, 0x0

    goto :goto_a

    .line 279
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_15

    .line 280
    const-string v2, "InCallQuickPanel"

    const-string v3, "Don\'t update mute button visibility"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v2, "support_easy_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 283
    const v2, 0x7f0a02c4

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_b

    .line 286
    :cond_15
    const-string v2, "support_easy_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 288
    const v2, 0x7f0a02c4

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_b

    .line 290
    :cond_16
    const v2, 0x7f0a02c4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_b

    .line 298
    :cond_17
    const v2, 0x7f0a02c8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 306
    .end local v24           #conn:Lcom/android/internal/telephony/Connection;
    :cond_18
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v29

    .restart local v29       #isMute:Z
    goto/16 :goto_2

    .line 314
    :cond_19
    const v2, 0x7f0a02c5

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 315
    const v2, 0x7f0a02c6

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 318
    :cond_1a
    if-eqz v32, :cond_1b

    .line 319
    const v2, 0x7f0a02c5

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 320
    const v2, 0x7f0a02c6

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 321
    const v2, 0x7f0a02c7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 323
    :cond_1b
    const v2, 0x7f0a02c7

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 324
    if-nez v29, :cond_1c

    .line 325
    const v2, 0x7f0a02c5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 326
    const v2, 0x7f0a02c6

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 328
    :cond_1c
    const v2, 0x7f0a02c5

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 329
    const v2, 0x7f0a02c6

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 340
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 341
    const v2, 0x7f0a02c9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 342
    const v2, 0x7f0a02ca

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 343
    const v2, 0x7f0a02cb

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4

    .line 345
    :cond_1e
    const v2, 0x7f0a02c9

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 346
    const v2, 0x7f0a02ca

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 347
    const v2, 0x7f0a02cb

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4

    .line 351
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 352
    const v2, 0x7f0a02c9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 353
    const v2, 0x7f0a02ca

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 358
    :goto_c
    const v2, 0x7f0a02cb

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4

    .line 355
    :cond_20
    const v2, 0x7f0a02c9

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 356
    const v2, 0x7f0a02ca

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_c

    .line 400
    :cond_21
    const v2, 0x7f0a02ce

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 401
    const v3, 0x7f0a02ce

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_5

    .line 408
    .restart local v31       #name:Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_6

    .line 429
    .restart local v8       #recordDurationBaseTime:J
    :cond_23
    const v2, 0x7f0a02d0

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 430
    const v7, 0x7f0a02d0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 431
    const v2, 0x7f0a02cf

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 432
    const v16, 0x7f0a02cd

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v15, p0

    invoke-virtual/range {v15 .. v20}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    goto/16 :goto_7

    .line 435
    .end local v8           #recordDurationBaseTime:J
    :cond_24
    const v2, 0x7f0a02d0

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 436
    const v2, 0x7f0a02cf

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_7

    .line 449
    :cond_25
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 450
    const-string v2, "feature_multisim_enable_dynamic"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_26

    .line 451
    const v2, 0x7f0a02d1

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_8

    .line 453
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v26

    .line 454
    .restart local v26       #foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    .line 455
    .restart local v21       #backgroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    if-nez v2, :cond_27

    .line 456
    move-object/from16 v26, v21

    .line 458
    :cond_27
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v33

    .line 459
    .restart local v33       #simSlotID:I
    const v2, 0x7f0a02d1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 460
    const v2, 0x7f0a02d1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    move/from16 v0, v33

    invoke-static {v3, v0}, Lcom/android/phone/PhoneMultiSimUtils;->getCallControllerSimIcon(Landroid/content/Context;I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_8
.end method
