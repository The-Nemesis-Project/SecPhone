.class public Lcom/android/phone/EndCallButtonsView;
.super Landroid/widget/RelativeLayout;
.source "EndCallButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private HAND_ADAPTABLE_OPERATION:Ljava/lang/String;

.field private ONE_HAND_DIRECTION:Ljava/lang/String;

.field private ONE_HAND_ENABLED:Ljava/lang/String;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCreateButton:Landroid/widget/Button;

.field mEndcallBottomFrame:Landroid/view/View;

.field private mIpCallButton:Landroid/widget/Button;

.field private mIsOnehandOn:Z

.field private mLeftArrow:Landroid/view/View;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRightArrow:Landroid/view/View;

.field private mSendMsgButton:Landroid/widget/Button;

.field private mSimState_1:Ljava/lang/String;

.field private mSimState_2:Ljava/lang/String;

.field private mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field private mUpdateButton:Landroid/widget/Button;

.field private mVideoCallButton:Landroid/widget/Button;

.field private mViewButton:Landroid/widget/Button;

.field private mVoiceCallButton:Landroid/widget/Button;

.field private mVoiceCallButtonFrame:Landroid/view/View;

.field private mVoiceCallButtonSim1:Landroid/widget/Button;

.field private mVoiceCallButtonSim1Frame:Landroid/view/View;

.field private mVoiceCallButtonSim2:Landroid/widget/Button;

.field private mVoiceCallButtonSim2Frame:Landroid/view/View;

.field private simActive1:Z

.field private simActive2:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 71
    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 75
    iput-boolean v2, p0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    .line 81
    const-string v0, "onehand_dialer_enabled"

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_ENABLED:Ljava/lang/String;

    .line 83
    const-string v0, "onehand_direction"

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    .line 85
    const-string v0, "hand_adaptable_operation"

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->HAND_ADAPTABLE_OPERATION:Ljava/lang/String;

    .line 95
    iput-boolean v2, p0, Lcom/android/phone/EndCallButtonsView;->simActive1:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/phone/EndCallButtonsView;->simActive2:Z

    .line 101
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "phone1_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/EndCallButtonsView;->simActive1:Z

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "phone2_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/phone/EndCallButtonsView;->simActive2:Z

    .line 106
    :cond_0
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 107
    return-void

    :cond_1
    move v0, v2

    .line 102
    goto :goto_0

    :cond_2
    move v1, v2

    .line 103
    goto :goto_1
.end method

.method private ForceFinishInCallscreen()V
    .locals 2

    .prologue
    .line 570
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 571
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    .line 572
    .local v1, inCallScreen:Lcom/android/phone/InCallScreen;
    if-eqz v1, :cond_0

    .line 573
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->forceFinish()V

    .line 575
    :cond_0
    return-void
.end method

.method private blockEndAnimation()V
    .locals 3

    .prologue
    .line 563
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 564
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    .line 565
    .local v1, inCallScreen:Lcom/android/phone/InCallScreen;
    if-eqz v1, :cond_0

    .line 566
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->setBlockEndAnimation(Z)V

    .line 568
    :cond_0
    return-void
.end method

.method private getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "call"

    .prologue
    .line 908
    if-nez p1, :cond_0

    .line 909
    const/4 v1, 0x0

    .line 915
    :goto_0
    return-object v1

    .line 911
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 912
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 913
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 915
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0
.end method

.method private getInsertedSimNum()I
    .locals 3

    .prologue
    .line 109
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSimState_1:Ljava/lang/String;

    .line 110
    const-string v0, "ril.ICC_TYPE_1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSimState_2:Ljava/lang/String;

    .line 111
    const-string v0, "LOG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimState_1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSimState_1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mSimState_2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSimState_2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSimState_1:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSimState_2:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x2

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 920
    .line 921
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumber: conn.getAddress() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumber: conn.getOrigDialString() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 925
    if-eqz v0, :cond_0

    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumber: callerInfo.phoneNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 928
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 929
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 954
    :cond_1
    :goto_0
    return-object v0

    .line 936
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->hasExtentionNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 939
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 942
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 944
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 947
    :cond_5
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 949
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 950
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 973
    const-string v0, "EndCallButtonsView"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 977
    const-string v0, "EndCallButtonsView"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 978
    return-void
.end method

.method private startActivitySafely(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 982
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    :goto_0
    return-void

    .line 983
    :catch_0
    move-exception v0

    .line 985
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public disableAllButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 539
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 540
    const-string v0, "ip_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 547
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 549
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 550
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->getInsertedSimNum()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 551
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 553
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneMultiSimUtils;->getCallSimIconDim(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 556
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 557
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/phone/PhoneMultiSimUtils;->getCallSimIconDim(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 560
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x2

    const/4 v9, 0x0

    const/high16 v8, 0x1000

    const/4 v1, 0x1

    .line 580
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", id "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 583
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 588
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v5, :cond_21

    .line 590
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v3, v0

    .line 596
    :goto_1
    if-nez v3, :cond_3

    .line 597
    const-string v0, "onClick : call is null"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 867
    :cond_0
    :goto_2
    return-void

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 593
    :cond_2
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 601
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/phone/EndCallButtonsView;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 603
    if-nez v5, :cond_4

    .line 604
    const-string v0, "onClick : connection is null"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    goto :goto_2

    .line 608
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/phone/EndCallButtonsView;->getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    .line 610
    const-string v6, "roaming_auto_dial"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 611
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    .line 612
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick: Roaming area before - phoneNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 613
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 614
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 615
    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtilsExt;->setEndCallNumberForLGTRAD(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    .line 619
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick: Roaming area after - phoneNumber = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    :cond_5
    move-object v3, v0

    .line 623
    packed-switch v4, :pswitch_data_0

    .line 864
    :pswitch_0
    const-string v0, "EndCallButtonsView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: unexpected click: View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 617
    :cond_6
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 625
    :pswitch_1
    if-eqz v3, :cond_0

    .line 626
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 627
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 629
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 631
    if-eqz v0, :cond_7

    instance-of v4, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v4, :cond_7

    .line 632
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    iput-object v0, v4, Lcom/android/phone/PhoneGlobals;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 635
    :cond_7
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    invoke-static {v5, v3, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v4, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 639
    const-string v0, "android.phone.extra.CALL_DIRECTCALL"

    const-string v3, "Redial"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 643
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 649
    :goto_4
    const-string v2, "simnum"

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 660
    :cond_8
    :goto_5
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 661
    const-string v0, "CALL_END"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 663
    :cond_9
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 665
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 666
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 646
    :cond_a
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v0

    if-ne v0, v1, :cond_20

    move v0, v2

    .line 647
    goto :goto_4

    .line 650
    :cond_b
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 652
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "CURRENT_NETWORK"

    invoke-static {v0, v3, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    move v2, v1

    .line 657
    :cond_c
    const-string v0, "simnum"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 672
    :pswitch_2
    if-eqz v3, :cond_0

    .line 673
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 674
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 675
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    const-string v5, "tel"

    invoke-static {v5, v3, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 677
    const-string v3, "feature_chn_duos_cdma_gsm"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 679
    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v3

    if-nez v3, :cond_f

    move v2, v1

    .line 685
    :cond_d
    :goto_6
    const-string v3, "simnum"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    :cond_e
    :goto_7
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 697
    const-string v2, "ipcall"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 698
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 682
    :cond_f
    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v3

    if-eq v3, v1, :cond_d

    move v2, v1

    goto :goto_6

    .line 686
    :cond_10
    const-string v3, "feature_chn_duos_gsm_gsm"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 688
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "CURRENT_NETWORK"

    invoke-static {v3, v4, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_11

    move v2, v1

    .line 693
    :cond_11
    const-string v3, "simnum"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7

    .line 702
    :pswitch_3
    if-eqz v3, :cond_0

    .line 703
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 704
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 706
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 708
    if-eqz v0, :cond_12

    instance-of v1, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_12

    .line 709
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 711
    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    invoke-static {v2, v3, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 712
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 713
    const-string v1, "simSlot"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 714
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 718
    :pswitch_4
    if-eqz v3, :cond_0

    .line 719
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 720
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 722
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 724
    if-eqz v0, :cond_13

    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_13

    .line 725
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    iput-object v0, v2, Lcom/android/phone/PhoneGlobals;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 727
    :cond_13
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    invoke-static {v4, v3, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 728
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 729
    const-string v2, "simSlot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 730
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 735
    :pswitch_5
    if-eqz v3, :cond_0

    .line 736
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 737
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 739
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    invoke-static {v5, v3, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 741
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 743
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "CURRENT_NETWORK"

    invoke-static {v3, v4, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_14

    move v2, v1

    .line 748
    :cond_14
    const-string v3, "simnum"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 750
    :cond_15
    const-string v2, "videocall"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 751
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 753
    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 754
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 755
    const-string v0, "support_incomingcall_penwindow"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    :cond_16
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->ForceFinishInCallscreen()V

    goto/16 :goto_2

    .line 761
    :pswitch_6
    if-eqz v3, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 763
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    invoke-static {v2, v3, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 765
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 767
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 768
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->makeFullScreenIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 770
    :cond_17
    const-string v1, "support_oem_message_for_kk"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 771
    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    :cond_18
    invoke-direct {p0, v0}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    .line 774
    const-string v0, "support_incomingcall_penwindow"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    :cond_19
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->ForceFinishInCallscreen()V

    goto/16 :goto_2

    .line 779
    :pswitch_7
    if-eqz v3, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 781
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 784
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 786
    const-string v1, "sip"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    :goto_8
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 794
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 795
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->makeFullScreenIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 797
    :cond_1a
    invoke-direct {p0, v0}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    .line 798
    const-string v0, "support_incomingcall_penwindow"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    :cond_1b
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->ForceFinishInCallscreen()V

    goto/16 :goto_2

    .line 789
    :cond_1c
    const-string v1, "phone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    .line 803
    :pswitch_8
    if-eqz v3, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 805
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 808
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 810
    const-string v1, "sip"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    :goto_9
    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 821
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 822
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->makeFullScreenIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 824
    :cond_1d
    invoke-direct {p0, v0}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    .line 825
    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->ForceFinishInCallscreen()V

    goto/16 :goto_2

    .line 813
    :cond_1e
    const-string v1, "phone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    const-string v1, "phone_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9

    .line 831
    :pswitch_9
    if-eqz v3, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 833
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 834
    instance-of v1, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_0

    .line 835
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 836
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 837
    iget-wide v2, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 839
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 840
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 842
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 843
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->makeFullScreenIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 845
    :cond_1f
    invoke-direct {p0, v0}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    .line 846
    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->ForceFinishInCallscreen()V

    goto/16 :goto_2

    .line 853
    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 854
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 858
    :pswitch_b
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_20
    move v0, v1

    goto/16 :goto_4

    :cond_21
    move-object v3, v0

    goto/16 :goto_1

    .line 623
    :pswitch_data_0
    .packed-switch 0x7f0a0183
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const v7, 0x7f0a0189

    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 118
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 120
    const v2, 0x7f0a0186

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mEndcallBottomFrame:Landroid/view/View;

    .line 121
    const-string v2, "end_call_two_button"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mEndcallBottomFrame:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mEndcallBottomFrame:Landroid/view/View;

    const v5, 0x7f02009f

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 125
    :cond_0
    const v2, 0x7f0a0187

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    .line 126
    const v2, 0x7f0a018e

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonFrame:Landroid/view/View;

    .line 127
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->getInsertedSimNum()I

    move-result v2

    if-lt v2, v8, :cond_1f

    .line 128
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mEndcallBottomFrame:Landroid/view/View;

    const v5, 0x7f0200a5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 129
    const v2, 0x7f0a018f

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    .line 130
    const v2, 0x7f0a0190

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    .line 131
    const v2, 0x7f0a018c

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    .line 132
    const v2, 0x7f0a018d

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    .line 134
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonFrame:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonFrame:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonFrame:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 142
    :cond_2
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    if-eqz v2, :cond_3

    .line 143
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-boolean v2, p0, Lcom/android/phone/EndCallButtonsView;->simActive2:Z

    if-eqz v2, :cond_1d

    .line 147
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/phone/PhoneMultiSimUtils;->getCallSimIcon(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v4, v5, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 152
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    if-eqz v2, :cond_4

    .line 153
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-boolean v2, p0, Lcom/android/phone/EndCallButtonsView;->simActive1:Z

    if-eqz v2, :cond_1e

    .line 157
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/phone/PhoneMultiSimUtils;->getCallSimIcon(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v4, v5, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 176
    :cond_4
    :goto_1
    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    .line 177
    const-string v2, "change_order_of_endcall_buttons"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 178
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_5
    const v2, 0x7f0a018a

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    .line 181
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    if-nez v2, :cond_6

    .line 182
    const-string v2, "mVideoCallButton is null"

    invoke-direct {p0, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 183
    const v2, 0x7f0a0189

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    :cond_7
    const v2, 0x7f0a018b

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    .line 192
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    :cond_8
    const v2, 0x7f0a0183

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    .line 194
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :cond_9
    const v2, 0x7f0a0184

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    .line 196
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_a
    const v2, 0x7f0a0185

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    .line 198
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    :cond_b
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_21

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    .line 200
    const-string v2, "support_onehand_operation"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    if-eqz v2, :cond_d

    .line 201
    const v2, 0x7f0a0192

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    .line 202
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    :cond_c
    const v2, 0x7f0a0191

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    .line 204
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :cond_d
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v2, :cond_e

    .line 208
    new-instance v2, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v2}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 209
    :cond_e
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->getInsertedSimNum()I

    move-result v2

    if-lt v2, v8, :cond_22

    .line 210
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    :cond_f
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    :cond_10
    :goto_4
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    :cond_11
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    :cond_12
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    :cond_13
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    :cond_14
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    :cond_15
    const-string v2, "ip_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 227
    const v2, 0x7f0a0188

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    .line 228
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_16

    .line 229
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 231
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :cond_16
    const-string v2, "enlarge_end_call_button_text"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 259
    .local v1, size:I
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 260
    :cond_17
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 261
    :cond_18
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 262
    :cond_19
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 265
    .end local v1           #size:I
    :cond_1a
    const-string v2, "change_message_icon_for_vzw"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v2, :cond_1b

    .line 266
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    const v3, 0x7f0204d1

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 268
    :cond_1b
    const-string v2, "change_message_icon_for_att"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v2, :cond_1c

    .line 269
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    const v3, 0x7f0204cf

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 270
    :cond_1c
    return-void

    .line 149
    :cond_1d
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/phone/PhoneMultiSimUtils;->getCallSimIconDim(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v4, v5, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 159
    :cond_1e
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/phone/PhoneMultiSimUtils;->getCallSimIconDim(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v4, v5, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_1

    .line 163
    :cond_1f
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonFrame:Landroid/view/View;

    if-eqz v2, :cond_20

    .line 164
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonFrame:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_20
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_4

    .line 167
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const-string v2, "service_callmessage"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "single_lte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inflate exception - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    goto/16 :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :cond_21
    move v2, v4

    .line 199
    goto/16 :goto_3

    .line 213
    :cond_22
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_4
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 871
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 904
    :cond_0
    :goto_0
    return v4

    .line 874
    :pswitch_0
    const-string v0, "service_callmessage"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EndCallButtonsView;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 879
    if-nez v1, :cond_1

    .line 880
    const-string v0, "onLongClick : connection is null"

    invoke-direct {p0, v0, v5}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 884
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    .line 885
    if-eqz v0, :cond_0

    .line 890
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "*230#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 891
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 893
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlaceCall Message :Sending intent to start outgoing call : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 895
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 896
    const-string v2, "com.sec.android.app.dialertab.callmessage.CallMessageActivity"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 898
    const-string v2, "dest_number"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0

    .line 871
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0187
        :pswitch_0
    .end packed-switch
.end method

.method public setLeftOneHandModeArrow()V
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 968
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 969
    :cond_1
    return-void
.end method

.method public setRightOneHandModeArrow()V
    .locals 2

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 962
    :cond_1
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 34
    .parameter "cm"

    .prologue
    .line 273
    const-string v29, "updateState..."

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 274
    const-string v29, "feature_chn_duos"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 275
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneGlobals;->getInCallScreenActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    if-nez v29, :cond_0

    .line 277
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 278
    :cond_0
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "updateState() state = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 280
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 284
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 286
    const-string v29, "feature_chn_duos"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1c

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 288
    .local v6, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v29

    sget-object v30, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 299
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/phone/EndCallButtonsView;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v14

    .line 301
    .local v14, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v14, :cond_42

    .line 302
    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v17

    .line 303
    .local v17, isEmergencyCall:Z
    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 304
    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_3

    const-string v29, "114"

    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 305
    const-string v29, "ril.simtype"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 306
    .local v27, sSimType:Ljava/lang/String;
    const-string v29, "18"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1d

    .line 307
    const/16 v17, 0x1

    .line 311
    :goto_1
    const-string v29, "lock"

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "missing_phone_lock"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 312
    const/16 v17, 0x1

    .line 315
    .end local v27           #sSimType:Ljava/lang/String;
    :cond_3
    if-nez v17, :cond_1e

    const/4 v13, 0x1

    .line 316
    .local v13, canVoiceCall:Z
    :goto_2
    if-nez v17, :cond_1f

    const/4 v8, 0x1

    .line 317
    .local v8, canIpCall:Z
    :goto_3
    if-nez v17, :cond_20

    const/4 v11, 0x1

    .line 318
    .local v11, canVideoCall:Z
    :goto_4
    if-nez v17, :cond_21

    const/4 v10, 0x1

    .line 319
    .local v10, canSendMsgButton:Z
    :goto_5
    const/4 v9, 0x0

    .line 320
    .local v9, canSaveCall:Z
    const/4 v12, 0x0

    .line 321
    .local v12, canViewContact:Z
    const/16 v20, 0x0

    .line 324
    .local v20, isVoiceMail:Z
    const/4 v15, 0x0

    .line 325
    .local v15, disableAllSendButton:Z
    const/16 v19, 0x0

    .line 327
    .local v19, isInvalidNumber:Z
    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v26

    .line 329
    .local v26, presentation:I
    const-string v5, "20"

    .line 330
    .local v5, LOCK_PCW_ENABLED:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "lock_pcw_enabled"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 332
    .local v21, lockPcwState:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/EndCallButtonsView;->getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v25

    .line 334
    .local v25, phoneNumber:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "presentation: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " / isCheckInvalidNumber: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {v25 .. v25}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 336
    if-eqz v21, :cond_22

    const-string v29, "20"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_22

    .line 337
    const-string v29, "EndCallButtonsView : LOCK_PCW_ENABLED"

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 338
    const/4 v15, 0x1

    .line 368
    :cond_4
    :goto_6
    const-string v29, "feature_ktt"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 369
    const-string v29, "ril.domesticOtaStart"

    const-string v30, ""

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_5

    const-string v29, "KtfNumberReg"

    const-string v30, "ril.domesticOta"

    const-string v31, ""

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 371
    const/4 v15, 0x1

    .line 374
    :cond_5
    const-string v29, "emergency_find_lost_phone"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 375
    if-eqz v25, :cond_7

    .line 376
    const-string v29, "+82263439000"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6

    const-string v29, "1521044"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isFindService()Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_7

    .line 379
    :cond_6
    const/4 v15, 0x1

    .line 380
    const/4 v12, 0x0

    .line 381
    const/4 v9, 0x0

    .line 386
    :cond_7
    if-eqz v15, :cond_8

    .line 387
    const/4 v13, 0x0

    .line 388
    const/4 v8, 0x0

    .line 389
    const/4 v11, 0x0

    .line 390
    const/4 v10, 0x0

    .line 393
    :cond_8
    const-string v29, "support_onehand_operation"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    move/from16 v29, v0

    if-eqz v29, :cond_c

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2b

    const/16 v23, 0x1

    .line 395
    .local v23, mIsOnehandOptionRight:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->HAND_ADAPTABLE_OPERATION:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2c

    const/16 v22, 0x1

    .line 396
    .local v22, mIsHandAdaptEnable:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v23, :cond_2d

    const/16 v29, 0x0

    :goto_9
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    move-object/from16 v29, v0

    if-eqz v29, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v23, :cond_2e

    const/16 v29, 0x8

    :goto_a
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    :cond_a
    const-string v29, "ssuport_hand_adapt_operation"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    if-eqz v22, :cond_c

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    move-object/from16 v29, v0

    if-eqz v29, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v23, :cond_2f

    const/16 v29, 0x4

    :goto_b
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    move-object/from16 v29, v0

    if-eqz v29, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v23, :cond_30

    const/16 v29, 0x8

    :goto_c
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 405
    .end local v22           #mIsHandAdaptEnable:Z
    .end local v23           #mIsOnehandOptionRight:Z
    :cond_c
    const-string v29, "feature_multisim"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_33

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/EndCallButtonsView;->getInsertedSimNum()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_33

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    move-object/from16 v29, v0

    if-eqz v29, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    move-object/from16 v29, v0

    if-eqz v29, :cond_d

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    move-object/from16 v29, v0

    if-eqz v29, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    move-object/from16 v29, v0

    if-eqz v29, :cond_e

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 414
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    if-eqz v29, :cond_f

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonFrame:Landroid/view/View;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 418
    :cond_f
    if-eqz v13, :cond_11

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    move-object/from16 v29, v0

    if-eqz v29, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    move-object/from16 v29, v0

    if-eqz v29, :cond_10

    .line 420
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/EndCallButtonsView;->simActive1:Z

    move/from16 v29, v0

    if-eqz v29, :cond_31

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Lcom/android/phone/PhoneMultiSimUtils;->getCallSimIcon(Landroid/content/Context;I)I

    move-result v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v29 .. v33}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 428
    :cond_10
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    move-object/from16 v29, v0

    if-eqz v29, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    move-object/from16 v29, v0

    if-eqz v29, :cond_11

    .line 429
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/EndCallButtonsView;->simActive2:Z

    move/from16 v29, v0

    if-eqz v29, :cond_32

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/android/phone/PhoneMultiSimUtils;->getCallSimIcon(Landroid/content/Context;I)I

    move-result v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v29 .. v33}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 453
    :cond_11
    :goto_e
    const-string v29, "hd_voice_network_prefer"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_35

    .line 454
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v7

    .line 455
    .local v7, callType:I
    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->isVoLTECall(I)Z

    move-result v18

    .line 456
    .local v18, isHDVoicePrefered:Z
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "HD Voice preferred = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0204eb

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 458
    .local v28, voiceCallButton:Landroid/graphics/drawable/Drawable;
    if-eqz v18, :cond_12

    .line 459
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0204c1

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 461
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 481
    .end local v7           #callType:I
    .end local v18           #isHDVoicePrefered:Z
    .end local v28           #voiceCallButton:Landroid/graphics/drawable/Drawable;
    :cond_13
    :goto_f
    const-string v29, "ip_call"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    if-eqz v8, :cond_39

    const/16 v29, 0x1

    :goto_10
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 484
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    if-eqz v29, :cond_15

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    if-eqz v11, :cond_3a

    const/16 v29, 0x1

    :goto_11
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 487
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    if-eqz v10, :cond_3b

    const/16 v29, 0x1

    :goto_12
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    if-eqz v9, :cond_3c

    const/16 v29, 0x0

    :goto_13
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    if-eqz v9, :cond_3d

    const/16 v29, 0x0

    :goto_14
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    if-eqz v12, :cond_3e

    const/16 v29, 0x0

    :goto_15
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 492
    const-string v29, "support_focused_button"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 493
    if-eqz v9, :cond_3f

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->clearFocus()V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->requestFocus()Z

    .line 502
    :cond_16
    :goto_16
    const-string v29, "feature_ctc"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_17

    if-eqz v20, :cond_17

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x4

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x4

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 507
    :cond_17
    const-string v29, "feature_chn"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_18

    .line 508
    if-eqz v19, :cond_18

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 515
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    if-eqz v29, :cond_19

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    const-string v30, "video_call_disable"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_40

    const/16 v30, 0x0

    :goto_17
    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 519
    :cond_19
    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1a

    .line 520
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_41

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 529
    :cond_1a
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1b

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 536
    .end local v5           #LOCK_PCW_ENABLED:Ljava/lang/String;
    .end local v8           #canIpCall:Z
    .end local v9           #canSaveCall:Z
    .end local v10           #canSendMsgButton:Z
    .end local v11           #canVideoCall:Z
    .end local v12           #canViewContact:Z
    .end local v13           #canVoiceCall:Z
    .end local v15           #disableAllSendButton:Z
    .end local v17           #isEmergencyCall:Z
    .end local v19           #isInvalidNumber:Z
    .end local v20           #isVoiceMail:Z
    .end local v21           #lockPcwState:Ljava/lang/String;
    .end local v25           #phoneNumber:Ljava/lang/String;
    .end local v26           #presentation:I
    :cond_1b
    :goto_19
    return-void

    .line 293
    .end local v6           #call:Lcom/android/internal/telephony/Call;
    .end local v14           #conn:Lcom/android/internal/telephony/Connection;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 294
    .restart local v6       #call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v29

    sget-object v30, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    goto/16 :goto_0

    .line 309
    .restart local v14       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v17       #isEmergencyCall:Z
    .restart local v27       #sSimType:Ljava/lang/String;
    :cond_1d
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 315
    .end local v27           #sSimType:Ljava/lang/String;
    :cond_1e
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 316
    .restart local v13       #canVoiceCall:Z
    :cond_1f
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 317
    .restart local v8       #canIpCall:Z
    :cond_20
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 318
    .restart local v11       #canVideoCall:Z
    :cond_21
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 340
    .restart local v5       #LOCK_PCW_ENABLED:Ljava/lang/String;
    .restart local v9       #canSaveCall:Z
    .restart local v10       #canSendMsgButton:Z
    .restart local v12       #canViewContact:Z
    .restart local v15       #disableAllSendButton:Z
    .restart local v19       #isInvalidNumber:Z
    .restart local v20       #isVoiceMail:Z
    .restart local v21       #lockPcwState:Ljava/lang/String;
    .restart local v25       #phoneNumber:Ljava/lang/String;
    .restart local v26       #presentation:I
    :cond_22
    sget v29, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_2a

    sget v29, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_2a

    .line 343
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_25

    if-eqz v25, :cond_23

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v29

    if-eqz v29, :cond_24

    :cond_23
    invoke-static/range {v25 .. v25}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_25

    .line 345
    :cond_24
    const/4 v15, 0x1

    goto/16 :goto_6

    .line 347
    :cond_25
    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v24

    .line 348
    .local v24, o:Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v29, v0

    if-eqz v29, :cond_26

    move-object/from16 v16, v24

    .line 349
    check-cast v16, Lcom/android/internal/telephony/CallerInfo;

    .line 350
    .local v16, info:Lcom/android/internal/telephony/CallerInfo;
    if-nez v17, :cond_27

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v29, v0

    if-nez v29, :cond_27

    const/4 v9, 0x1

    .line 351
    :goto_1a
    if-nez v17, :cond_28

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v29, v0

    if-eqz v29, :cond_28

    const/4 v12, 0x1

    .line 352
    :goto_1b
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v29

    if-eqz v29, :cond_29

    .line 353
    const/16 v20, 0x1

    .line 358
    .end local v16           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_26
    :goto_1c
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    .line 359
    const/4 v15, 0x1

    goto/16 :goto_6

    .line 350
    .restart local v16       #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_27
    const/4 v9, 0x0

    goto :goto_1a

    .line 351
    :cond_28
    const/4 v12, 0x0

    goto :goto_1b

    .line 355
    :cond_29
    const/16 v20, 0x0

    goto :goto_1c

    .line 363
    .end local v16           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v24           #o:Ljava/lang/Object;
    :cond_2a
    const/4 v15, 0x1

    .line 364
    const/16 v19, 0x1

    goto/16 :goto_6

    .line 394
    :cond_2b
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 395
    .restart local v23       #mIsOnehandOptionRight:Z
    :cond_2c
    const/16 v22, 0x0

    goto/16 :goto_8

    .line 396
    .restart local v22       #mIsHandAdaptEnable:Z
    :cond_2d
    const/16 v29, 0x8

    goto/16 :goto_9

    .line 397
    :cond_2e
    const/16 v29, 0x0

    goto/16 :goto_a

    .line 400
    :cond_2f
    const/16 v29, 0x8

    goto/16 :goto_b

    .line 401
    :cond_30
    const/16 v29, 0x4

    goto/16 :goto_c

    .line 424
    .end local v22           #mIsHandAdaptEnable:Z
    .end local v23           #mIsOnehandOptionRight:Z
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Lcom/android/phone/PhoneMultiSimUtils;->getCallSimIconDim(Landroid/content/Context;I)I

    move-result v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v29 .. v33}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_d

    .line 433
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/android/phone/PhoneMultiSimUtils;->getCallSimIconDim(Landroid/content/Context;I)I

    move-result v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v29 .. v33}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_e

    .line 445
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0204eb

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v29 .. v33}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    if-eqz v13, :cond_34

    const/16 v29, 0x1

    :goto_1d
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_e

    :cond_34
    const/16 v29, 0x0

    goto :goto_1d

    .line 462
    :cond_35
    const-string v29, "common_volte"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 463
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0204eb

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 464
    .restart local v28       #voiceCallButton:Landroid/graphics/drawable/Drawable;
    const-string v29, "support_onehand_operation"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    move/from16 v29, v0

    if-eqz v29, :cond_36

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v29

    if-nez v29, :cond_36

    .line 466
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0204ec

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 467
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneUtilsIms;->isVolteIconPossible(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_38

    .line 468
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0204c1

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 470
    const-string v29, "support_onehand_operation"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_37

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    move/from16 v29, v0

    if-eqz v29, :cond_37

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v29

    if-nez v29, :cond_37

    .line 472
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0204c2

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 474
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const v30, 0x7f0902a7

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setText(I)V

    .line 478
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f

    .line 476
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const v30, 0x7f0902a6

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1e

    .line 482
    .end local v28           #voiceCallButton:Landroid/graphics/drawable/Drawable;
    :cond_39
    const/16 v29, 0x0

    goto/16 :goto_10

    .line 485
    :cond_3a
    const/16 v29, 0x0

    goto/16 :goto_11

    .line 487
    :cond_3b
    const/16 v29, 0x0

    goto/16 :goto_12

    .line 489
    :cond_3c
    const/16 v29, 0x8

    goto/16 :goto_13

    .line 490
    :cond_3d
    const/16 v29, 0x8

    goto/16 :goto_14

    .line 491
    :cond_3e
    const/16 v29, 0x8

    goto/16 :goto_15

    .line 497
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->clearFocus()V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_16

    .line 516
    :cond_40
    const/16 v30, 0x8

    goto/16 :goto_17

    .line 524
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_18

    .line 534
    .end local v5           #LOCK_PCW_ENABLED:Ljava/lang/String;
    .end local v8           #canIpCall:Z
    .end local v9           #canSaveCall:Z
    .end local v10           #canSendMsgButton:Z
    .end local v11           #canVideoCall:Z
    .end local v12           #canViewContact:Z
    .end local v13           #canVoiceCall:Z
    .end local v15           #disableAllSendButton:Z
    .end local v17           #isEmergencyCall:Z
    .end local v19           #isInvalidNumber:Z
    .end local v20           #isVoiceMail:Z
    .end local v21           #lockPcwState:Ljava/lang/String;
    .end local v25           #phoneNumber:Ljava/lang/String;
    .end local v26           #presentation:I
    :cond_42
    const-string v29, "EndCallButtonsView : connection is NullPointer at updateState"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    goto/16 :goto_19
.end method
