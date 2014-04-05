.class public Lcom/android/phone/InPSVTCallMenu;
.super Lcom/android/phone/InVTCallMenu;
.source "InPSVTCallMenu.java"


# static fields
.field private static ONE_HAND_ENABLED:Ljava/lang/String;


# instance fields
.field private mDisableOutGoingMenu:Z

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mMenuSelected:I

.field private mVideoCallPanel:Lcom/android/phone/VideoCallPanel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "onehand_dialer_enabled"

    sput-object v0, Lcom/android/phone/InPSVTCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 2
    .parameter "inCallScreen"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallMenu;-><init>(Lcom/android/phone/VTCommonFunction;)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InPSVTCallMenu;->mMenuSelected:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InPSVTCallMenu;->mDisableOutGoingMenu:Z

    .line 52
    const-string v0, "InPSVTCallMenu constructor..."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;Z)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 57
    invoke-static {}, Lcom/android/phone/VideoCallPanel;->getInstance()Lcom/android/phone/VideoCallPanel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    .line 58
    return-void
.end method

.method private handleOneHandMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 624
    const-string v1, "support_onehand_operation"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isOnehandModeOn()Z

    move-result v0

    .line 627
    .local v0, isOnehandOn:Z
    if-eqz v0, :cond_2

    .line 628
    iget-object v1, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/InPSVTCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 629
    const-string v1, "ssuport_hand_adapt_operation"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getHandAdaptEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    const-string v1, "onehand on"

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 631
    iget-object v1, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->unregistCallHandGripChangeObserver()V

    .line 632
    iget-object v1, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallScreen;->setHandGripCondition(Z)V

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 645
    .end local v0           #isOnehandOn:Z
    :cond_1
    :goto_0
    return-void

    .line 636
    .restart local v0       #isOnehandOn:Z
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/InPSVTCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 637
    const-string v1, "ssuport_hand_adapt_operation"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getHandAdaptEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 638
    const-string v1, "one hand off"

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->registCallHandGripChangeObserver()V

    .line 640
    iget-object v1, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v4}, Lcom/android/phone/InCallScreen;->setHandGripCondition(Z)V

    .line 642
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_0
.end method

.method private prepareOptionVTMenuForEasyMode(Landroid/view/Menu;)Z
    .locals 14
    .parameter "menu"

    .prologue
    const v13, 0x7f0a0417

    const v12, 0x7f0a041a

    const v11, 0x7f0a0419

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 411
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v9

    if-ge v2, v9, :cond_12

    .line 412
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 413
    .local v4, itemId:I
    sparse-switch v4, :sswitch_data_0

    .line 411
    :cond_0
    :goto_1
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    :sswitch_1
    const v9, 0x7f0a027e

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 416
    .local v6, switchCam:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/phone/InPSVTCallMenu;->isDialerOpened()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 417
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 419
    invoke-virtual {p0}, Lcom/android/phone/InPSVTCallMenu;->isShowMe()Z

    move-result v9

    if-eqz v9, :cond_1

    sget-boolean v9, Lcom/android/phone/VtInCallButtonsView;->mIsSwitchCameraClicked:Z

    if-nez v9, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InPSVTCallMenu;->mdmGetAllowCamera()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/phone/InPSVTCallMenu;->mdmIsCameraEnabled(Z)Z

    move-result v9

    if-eqz v9, :cond_1

    move v1, v7

    .line 421
    .local v1, bCanSwitchCamera:Z
    :goto_2
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .end local v1           #bCanSwitchCamera:Z
    :cond_1
    move v1, v8

    .line 419
    goto :goto_2

    .line 423
    :cond_2
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 427
    .end local v6           #switchCam:Landroid/view/MenuItem;
    :sswitch_2
    const v9, 0x7f0a0416

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 428
    .local v5, keypad:Landroid/view/MenuItem;
    iget-object v9, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 429
    invoke-virtual {p0}, Lcom/android/phone/InPSVTCallMenu;->isDialerOpened()Z

    move-result v9

    if-nez v9, :cond_4

    .line 430
    iget-boolean v9, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v9, :cond_3

    .line 431
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 433
    :cond_3
    const v9, 0x7f020790

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 434
    const v9, 0x7f09042c

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 436
    :cond_4
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 439
    :cond_5
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 444
    .end local v5           #keypad:Landroid/view/MenuItem;
    :sswitch_3
    const-string v9, "common_volte_vt_kor"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 445
    const-string v9, "no_receiver_in_call"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 447
    iget-boolean v9, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v9, :cond_0

    .line 448
    const/4 v3, 0x1

    .line 449
    .local v3, isSpeakerEnable:Z
    iget-object v9, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_7

    .line 451
    :cond_6
    sget-boolean v9, Lcom/android/phone/PhoneGlobals;->mIsDockConnected:Z

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v9

    if-nez v9, :cond_8

    move v3, v7

    .line 455
    :cond_7
    :goto_3
    if-eqz v3, :cond_a

    .line 456
    iget-object v9, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 457
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 458
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 459
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_8
    move v3, v8

    .line 451
    goto :goto_3

    .line 461
    :cond_9
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 462
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 463
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 466
    :cond_a
    sget-boolean v9, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    if-eqz v9, :cond_b

    .line 467
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 468
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 469
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 471
    :cond_b
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 472
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 473
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 479
    .end local v3           #isSpeakerEnable:Z
    :cond_c
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 480
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 485
    :sswitch_4
    iget-object v9, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 486
    iget-boolean v9, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v9, :cond_0

    .line 487
    invoke-interface {p1, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 488
    const v9, 0x7f0a0418

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 491
    :cond_d
    iget-boolean v9, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v9, :cond_e

    .line 492
    invoke-interface {p1, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 493
    const v9, 0x7f0a0418

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 496
    :cond_e
    const-string v9, "common_volte_vt_kor"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 497
    iget-object v9, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 498
    invoke-interface {p1, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 500
    :cond_f
    invoke-interface {p1, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 506
    :sswitch_5
    const v9, 0x7f0a0428

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 507
    .local v0, addUserVideo:Landroid/view/MenuItem;
    const-string v9, "ims_conference_call"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 508
    const-string v9, "feature_lgt"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 509
    iget-object v9, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtilsExt;->isAvailableAddUser(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 510
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 511
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 514
    :cond_10
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 515
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 519
    :cond_11
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 520
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 525
    .end local v0           #addUserVideo:Landroid/view/MenuItem;
    .end local v4           #itemId:I
    :cond_12
    return v7

    .line 413
    :sswitch_data_0
    .sparse-switch
        0x7f0a027e -> :sswitch_1
        0x7f0a0416 -> :sswitch_2
        0x7f0a0417 -> :sswitch_0
        0x7f0a0418 -> :sswitch_4
        0x7f0a0419 -> :sswitch_0
        0x7f0a041a -> :sswitch_3
        0x7f0a0428 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method protected clearVTCommonFunctionReference()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/phone/InVTCallMenu;->clearVTCommonFunctionReference()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 64
    return-void
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    return v0
.end method

.method isFarEndRecord()Z
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x0

    return v0
.end method

.method isNearEndRecord()Z
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x0

    return v0
.end method

.method isShowMe()Z
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget-boolean v0, v0, Lcom/android/phone/InIMSCallState;->isShowMe:Z

    return v0
.end method

.method mdmGetAllowCamera()Z
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v0, v0, Lcom/android/phone/InVTCallState;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v0, v0, Lcom/android/phone/InVTCallState;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    .line 658
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method mdmIsCameraEnabled(Z)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v0, v0, Lcom/android/phone/InVTCallState;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v0, v0, Lcom/android/phone/InVTCallState;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    .line 665
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 530
    invoke-super {p0, p1}, Lcom/android/phone/InVTCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- optionsItemSelected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  title: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 535
    iget-object v2, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v2, :cond_0

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "optionsItemSelected("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), but null mInCallScreen!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;Z)V

    .line 620
    :goto_0
    return v0

    .line 540
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 601
    :sswitch_0
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->switchCamera()V

    :cond_1
    :goto_1
    move v0, v1

    .line 620
    goto :goto_0

    .line 542
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a006a

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 546
    :sswitch_2
    const-string v0, " Menu : Select camera on/off"

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->onModifyCallByCameraButton()V

    goto :goto_1

    .line 550
    :sswitch_3
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->showShowMeButton()V

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->sendStillImage()V

    goto :goto_1

    .line 559
    :sswitch_4
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 560
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 561
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    const v2, 0x7f0903e8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 565
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->sendLiveVideo()V

    goto :goto_1

    .line 570
    :sswitch_5
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->showAlternativeImageDialog()V

    goto :goto_1

    .line 577
    :sswitch_6
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a0428

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 581
    :sswitch_7
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ims_vt_call_mediashare"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->MediashareStart()V

    goto/16 :goto_1

    .line 589
    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a01d7

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 592
    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a01d8

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 595
    :sswitch_a
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a01d9

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 598
    :sswitch_b
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a01c9

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 606
    :sswitch_c
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 607
    iget-object v2, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v2, :cond_1

    .line 608
    iget-object v2, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v2, v0}, Lcom/android/phone/VideoCallPanel;->captureSurfaceImage(Z)V

    goto/16 :goto_1

    .line 614
    :sswitch_d
    invoke-direct {p0}, Lcom/android/phone/InPSVTCallMenu;->handleOneHandMode()V

    goto/16 :goto_1

    .line 540
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a027e -> :sswitch_0
        0x7f0a0365 -> :sswitch_3
        0x7f0a03f9 -> :sswitch_b
        0x7f0a040e -> :sswitch_1
        0x7f0a040f -> :sswitch_8
        0x7f0a0410 -> :sswitch_9
        0x7f0a0411 -> :sswitch_a
        0x7f0a0412 -> :sswitch_2
        0x7f0a0413 -> :sswitch_2
        0x7f0a0414 -> :sswitch_4
        0x7f0a0415 -> :sswitch_5
        0x7f0a0426 -> :sswitch_d
        0x7f0a0427 -> :sswitch_d
        0x7f0a0428 -> :sswitch_6
        0x7f0a0429 -> :sswitch_7
        0x7f0a042a -> :sswitch_c
    .end sparse-switch
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 30
    .parameter "menu"

    .prologue
    .line 68
    const-string v27, "prepareOptionsMenu()..."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v12

    .line 74
    .local v12, inCallControlState:Lcom/android/phone/InCallControlState;
    const-string v27, "feature_chn_duos"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/InCallScreen;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    .line 76
    .local v9, fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/InCallScreen;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 77
    .local v3, bgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/InCallScreen;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v23

    .line 84
    .local v23, rCall:Lcom/android/internal/telephony/Call;
    :goto_0
    const-string v27, "common_volte_vt_kor"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 85
    const-string v27, "support_easy_mode"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 88
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InPSVTCallMenu;->prepareOptionVTMenuForEasyMode(Landroid/view/Menu;)Z

    move-result v27

    .line 408
    :goto_1
    return v27

    .line 79
    .end local v3           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v9           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v23           #rCall:Lcom/android/internal/telephony/Call;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    .line 80
    .restart local v9       #fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 81
    .restart local v3       #bgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v23

    .restart local v23       #rCall:Lcom/android/internal/telephony/Call;
    goto :goto_0

    .line 90
    :cond_1
    const/16 v27, 0x0

    goto :goto_1

    .line 94
    :cond_2
    const-string v27, "common_volte_vt_kor"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 96
    invoke-super/range {p0 .. p1}, Lcom/android/phone/InVTCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    .line 102
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 104
    const/16 v27, 0x0

    goto :goto_1

    .line 98
    :cond_4
    invoke-super/range {p0 .. p1}, Lcom/android/phone/InVTCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_2

    .line 108
    :cond_5
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_2e

    .line 109
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/view/MenuItem;->getItemId()I

    move-result v15

    .line 110
    .local v15, itemId:I
    sparse-switch v15, :sswitch_data_0

    .line 108
    :cond_6
    :goto_4
    :sswitch_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 112
    :sswitch_1
    const-string v27, "vzw_volte_ui"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_7

    const-string v27, "att_volte_ui"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 114
    :cond_7
    const v27, 0x7f0a040e

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    .line 115
    .local v25, switchToVoiceCall:Landroid/view/MenuItem;
    const v27, 0x7f020680

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 116
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v4

    .line 117
    .local v4, callType:I
    const/16 v27, 0x3

    move/from16 v0, v27

    if-ne v4, v0, :cond_8

    .line 118
    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 120
    :cond_8
    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 125
    .end local v4           #callType:I
    .end local v25           #switchToVoiceCall:Landroid/view/MenuItem;
    :sswitch_2
    const-string v27, "vzw_volte_ui"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_9

    const-string v27, "att_volte_ui"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 127
    :cond_9
    const v27, 0x7f0a03f9

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    .line 128
    .local v21, mergeCalls:Landroid/view/MenuItem;
    const v27, 0x7f02069d

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 129
    iget-boolean v0, v12, Lcom/android/phone/InCallControlState;->canMerge:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_a

    const-string v27, "support_merge_call"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 131
    const/16 v27, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 133
    :cond_a
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 139
    .end local v21           #mergeCalls:Landroid/view/MenuItem;
    :sswitch_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v4

    .line 140
    .restart local v4       #callType:I
    const-string v27, "vzw_volte_ui"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_b

    const/16 v27, 0xa

    move/from16 v0, v27

    if-ne v4, v0, :cond_c

    .line 141
    :cond_b
    const v27, 0x7f0a0412

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 142
    const v27, 0x7f0a0413

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 144
    :cond_c
    const/16 v27, 0x3

    move/from16 v0, v27

    if-eq v4, v0, :cond_d

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v4, v0, :cond_e

    .line 145
    :cond_d
    const v27, 0x7f0a0412

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 146
    const v27, 0x7f0a0413

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 148
    :cond_e
    const v27, 0x7f0a0412

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 149
    const v27, 0x7f0a0413

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 155
    .end local v4           #callType:I
    :sswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    move/from16 v27, v0

    if-nez v27, :cond_6

    .line 156
    const v27, 0x7f0a0365

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 157
    .local v10, hideMe:Landroid/view/MenuItem;
    const v27, 0x7f0a0414

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    .line 158
    .local v24, showMe:Landroid/view/MenuItem;
    const-string v27, "common_volte_vt_kor"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_11

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InPSVTCallMenu;->isShowMe()Z

    move-result v27

    if-eqz v27, :cond_10

    .line 161
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 162
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InPSVTCallMenu;->mdmGetAllowCamera()Z

    move-result v27

    if-eqz v27, :cond_f

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/InPSVTCallMenu;->mdmIsCameraEnabled(Z)Z

    move-result v27

    if-nez v27, :cond_6

    .line 164
    :cond_f
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 167
    :cond_10
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 168
    const/16 v27, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 172
    :cond_11
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 177
    .end local v10           #hideMe:Landroid/view/MenuItem;
    .end local v24           #showMe:Landroid/view/MenuItem;
    :sswitch_5
    const-string v27, "common_volte_vt_kor"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 179
    const v27, 0x7f0a0416

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 180
    .local v16, keypad:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v27

    if-nez v27, :cond_14

    .line 181
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    move/from16 v27, v0

    if-nez v27, :cond_12

    .line 182
    const/16 v27, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 184
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InPSVTCallMenu;->isDialerOpened()Z

    move-result v27

    if-eqz v27, :cond_13

    .line 185
    const v27, 0x7f02078e

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 186
    const v27, 0x7f0903fd

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 188
    :cond_13
    const v27, 0x7f020790

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 189
    const v27, 0x7f09042c

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 192
    :cond_14
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 198
    .end local v16           #keypad:Landroid/view/MenuItem;
    :sswitch_6
    const v27, 0x7f0a042a

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 199
    .local v5, capture:Landroid/view/MenuItem;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 200
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    const-string v27, "common_volte_vt_kor"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v27

    if-eqz v27, :cond_15

    .line 203
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 204
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/phone/InVTCallState;->mIsFarFrameReady:Z

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 206
    :cond_15
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 210
    .end local v5           #capture:Landroid/view/MenuItem;
    :sswitch_7
    const-string v27, "common_volte_vt_kor"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 212
    const v27, 0x7f0a0415

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    .line 213
    .local v22, outImg:Landroid/view/MenuItem;
    const/16 v27, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 214
    const/16 v27, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 219
    .end local v22           #outImg:Landroid/view/MenuItem;
    :sswitch_8
    const v27, 0x7f0a0428

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 220
    .local v2, addUserVideo:Landroid/view/MenuItem;
    const-string v27, "ims_conference_call"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_17

    .line 221
    const-string v27, "feature_lgt"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneUtilsExt;->isAvailableAddUser(Lcom/android/internal/telephony/Call;)Z

    move-result v27

    if-eqz v27, :cond_16

    .line 223
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 224
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 227
    :cond_16
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 228
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 232
    :cond_17
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 233
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 238
    .end local v2           #addUserVideo:Landroid/view/MenuItem;
    :sswitch_9
    const-string v27, "common_volte_vt_kor"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    const-string v27, "feature_lgt"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    const-string v27, "ims_vt_call_mediashare"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 242
    const v27, 0x7f0a0429

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    .line 243
    .local v20, media_share:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/phone/InVTCallState;->isMediaShareEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_18

    const-string v27, "com.lguplus.lte.mediashare"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/android/phone/PhoneUtilsExt;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 245
    const/16 v27, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 246
    const/16 v27, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 248
    :cond_18
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 249
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 257
    .end local v20           #media_share:Landroid/view/MenuItem;
    :sswitch_a
    const-string v27, "common_volte_vt_kor"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1f

    .line 258
    const-string v27, "no_receiver_in_call"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_6

    .line 260
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    move/from16 v27, v0

    if-nez v27, :cond_6

    .line 261
    const/4 v14, 0x1

    .line 262
    .local v14, isSpeakerEnable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_1a

    .line 264
    :cond_19
    sget-boolean v27, Lcom/android/phone/PhoneGlobals;->mIsDockConnected:Z

    if-nez v27, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v27

    if-nez v27, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v27

    if-nez v27, :cond_1b

    const/4 v14, 0x1

    .line 268
    :cond_1a
    :goto_5
    if-eqz v14, :cond_1d

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_1c

    .line 270
    const v27, 0x7f0a0419

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 271
    const v27, 0x7f0a041a

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 272
    const v27, 0x7f0a041a

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 264
    :cond_1b
    const/4 v14, 0x0

    goto :goto_5

    .line 274
    :cond_1c
    const v27, 0x7f0a0419

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 275
    const v27, 0x7f0a041a

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 276
    const v27, 0x7f0a0419

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 279
    :cond_1d
    sget-boolean v27, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    if-eqz v27, :cond_1e

    .line 280
    const v27, 0x7f0a0419

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 281
    const v27, 0x7f0a041a

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 282
    const v27, 0x7f0a041a

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 284
    :cond_1e
    const v27, 0x7f0a0419

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 285
    const v27, 0x7f0a041a

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 286
    const v27, 0x7f0a0419

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 292
    .end local v14           #isSpeakerEnable:Z
    :cond_1f
    const v27, 0x7f0a0419

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 293
    const v27, 0x7f0a041a

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 298
    :sswitch_b
    const-string v27, "common_volte_vt_kor"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 302
    const-string v27, "support_onehand_any_screen"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_20

    .line 303
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isOnehandAnyScreen()Z

    move-result v27

    if-eqz v27, :cond_20

    .line 304
    const v27, 0x7f0a0426

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 305
    const v27, 0x7f0a0427

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 310
    :cond_20
    const-string v27, "support_onehand_operation"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_26

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    sget-object v28, Lcom/android/phone/InPSVTCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_22

    const/4 v13, 0x1

    .line 313
    .local v13, isOnehandOn:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/InCallScreen;->isPortraitMode()Z

    move-result v27

    if-eqz v27, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_25

    .line 314
    if-eqz v13, :cond_23

    .line 315
    const v27, 0x7f0a0426

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 316
    const v27, 0x7f0a0427

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 321
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v27

    if-nez v27, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v27

    if-eqz v27, :cond_24

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InPSVTCallMenu;->isDialerOpened()Z

    move-result v27

    if-nez v27, :cond_24

    .line 322
    const v27, 0x7f0a0426

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 323
    const v27, 0x7f0a0427

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 311
    .end local v13           #isOnehandOn:Z
    :cond_22
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 318
    .restart local v13       #isOnehandOn:Z
    :cond_23
    const v27, 0x7f0a0426

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 319
    const v27, 0x7f0a0427

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    .line 325
    :cond_24
    const v27, 0x7f0a0426

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 326
    const v27, 0x7f0a0427

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 329
    :cond_25
    const v27, 0x7f0a0426

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 330
    const v27, 0x7f0a0427

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 333
    .end local v13           #isOnehandOn:Z
    :cond_26
    const v27, 0x7f0a0426

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 334
    const v27, 0x7f0a0427

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 338
    :sswitch_c
    const-string v27, "vzw_volte_ui"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_27

    const-string v27, "att_volte_ui"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 340
    :cond_27
    const v27, 0x7f0a041f

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 341
    .local v8, emotionalAnimation:Landroid/view/MenuItem;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 346
    .end local v8           #emotionalAnimation:Landroid/view/MenuItem;
    :sswitch_d
    const-string v27, "vzw_volte_ui"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_28

    const-string v27, "att_volte_ui"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 348
    :cond_28
    const v27, 0x7f0a0421

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 349
    .local v7, cartoonViewOn:Landroid/view/MenuItem;
    const v27, 0x7f0a0422

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 350
    .local v6, cartoonViewOff:Landroid/view/MenuItem;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 351
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 355
    .end local v6           #cartoonViewOff:Landroid/view/MenuItem;
    .end local v7           #cartoonViewOn:Landroid/view/MenuItem;
    :sswitch_e
    const-string v27, "vzw_volte_ui"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_29

    const-string v27, "att_volte_ui"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 357
    :cond_29
    const v27, 0x7f0a0420

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v26

    .line 358
    .local v26, themeView:Landroid/view/MenuItem;
    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 364
    .end local v26           #themeView:Landroid/view/MenuItem;
    :sswitch_f
    const-string v27, "add_vt_hold_in_menu"

    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 365
    const v27, 0x7f0a040f

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 366
    .local v17, mHoldButton:Landroid/view/MenuItem;
    const v27, 0x7f0a0410

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    .line 367
    .local v19, mUnholdButton:Landroid/view/MenuItem;
    const v27, 0x7f0a0411

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 370
    .local v18, mSwapButton:Landroid/view/MenuItem;
    iget-boolean v0, v12, Lcom/android/phone/InCallControlState;->canHold:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2b

    .line 371
    iget-boolean v0, v12, Lcom/android/phone/InCallControlState;->onHold:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2a

    .line 372
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 373
    const/16 v27, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 378
    :goto_8
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 375
    :cond_2a
    const/16 v27, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 376
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8

    .line 379
    :cond_2b
    iget-boolean v0, v12, Lcom/android/phone/InCallControlState;->canSwap:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2c

    .line 380
    const/16 v27, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 381
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 382
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 392
    :cond_2c
    iget-boolean v0, v12, Lcom/android/phone/InCallControlState;->supportsHold:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2d

    .line 393
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 394
    const/16 v27, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 395
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 396
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 398
    :cond_2d
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 399
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 400
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 408
    .end local v15           #itemId:I
    .end local v17           #mHoldButton:Landroid/view/MenuItem;
    .end local v18           #mSwapButton:Landroid/view/MenuItem;
    .end local v19           #mUnholdButton:Landroid/view/MenuItem;
    :cond_2e
    const/16 v27, 0x1

    goto/16 :goto_1

    .line 110
    :sswitch_data_0
    .sparse-switch
        0x7f0a0365 -> :sswitch_0
        0x7f0a03f9 -> :sswitch_2
        0x7f0a040e -> :sswitch_1
        0x7f0a040f -> :sswitch_0
        0x7f0a0410 -> :sswitch_0
        0x7f0a0411 -> :sswitch_f
        0x7f0a0412 -> :sswitch_0
        0x7f0a0413 -> :sswitch_3
        0x7f0a0414 -> :sswitch_4
        0x7f0a0415 -> :sswitch_7
        0x7f0a0416 -> :sswitch_5
        0x7f0a0419 -> :sswitch_0
        0x7f0a041a -> :sswitch_a
        0x7f0a041f -> :sswitch_c
        0x7f0a0420 -> :sswitch_e
        0x7f0a0421 -> :sswitch_0
        0x7f0a0422 -> :sswitch_d
        0x7f0a0426 -> :sswitch_b
        0x7f0a0427 -> :sswitch_b
        0x7f0a0428 -> :sswitch_8
        0x7f0a0429 -> :sswitch_9
        0x7f0a042a -> :sswitch_6
    .end sparse-switch
.end method
