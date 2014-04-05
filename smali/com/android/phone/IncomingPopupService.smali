.class public Lcom/android/phone/IncomingPopupService;
.super Lcom/android/phone/MiniModeCallService;
.source "IncomingPopupService.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingPopupService$6;,
        Lcom/android/phone/IncomingPopupService$AsyncLoadCookie;
    }
.end annotation


# static fields
.field private static mNeedUpdate:Z


# instance fields
.field private mAnimationList:[I

.field private mAnimationListDrawable:[Landroid/graphics/drawable/Drawable;

.field private mAnswerBtn:Landroid/widget/Button;

.field private mAnswerViaSpeakerBtn:Landroid/widget/Button;

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private final mBtnClickListener:Landroid/view/View$OnClickListener;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallBargeIn:Lcom/android/phone/CallBargeIn;

.field private mCdnipNumber:Landroid/widget/TextView;

.field private mCurrentAnimationIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mImageCache:Lcom/android/phone/ImageCache;

.field private mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

.field private mIncomingPopup:Landroid/widget/RelativeLayout;

.field private mInset:Landroid/widget/ImageView;

.field private mIsAnimationActive:Z

.field private mLoadingPersonUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mOrientation:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Lcom/android/phone/InCallContactPhoto;

.field private mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

.field private mRejectBtn:Landroid/widget/Button;

.field private mRejectCallWithMsgContent:Lcom/android/phone/RejectCallWithMsgContent;

.field private mRejectMessages:[Ljava/lang/String;

.field private mRejectWithMsgBtn:Landroid/widget/ImageView;

.field private mRejectWithMsgDialog:Landroid/app/AlertDialog;

.field private mShowFullBtn:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/IncomingPopupService;->mNeedUpdate:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/phone/MiniModeCallService;-><init>()V

    .line 88
    iput v1, p0, Lcom/android/phone/IncomingPopupService;->mOrientation:I

    .line 111
    iput-boolean v1, p0, Lcom/android/phone/IncomingPopupService;->mIsAnimationActive:Z

    .line 112
    iput v1, p0, Lcom/android/phone/IncomingPopupService;->mCurrentAnimationIndex:I

    .line 113
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/IncomingPopupService;->mAnimationListDrawable:[Landroid/graphics/drawable/Drawable;

    .line 114
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/IncomingPopupService;->mAnimationList:[I

    .line 138
    new-instance v0, Lcom/android/phone/IncomingPopupService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingPopupService$1;-><init>(Lcom/android/phone/IncomingPopupService;)V

    iput-object v0, p0, Lcom/android/phone/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    return-void

    .line 114
    nop

    :array_0
    .array-data 0x4
        0xe2t 0x1t 0x2t 0x7ft
        0xe4t 0x1t 0x2t 0x7ft
        0xe6t 0x1t 0x2t 0x7ft
        0xe8t 0x1t 0x2t 0x7ft
        0xeat 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/IncomingPopupService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/IncomingPopupService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/IncomingPopupService;->answerCall()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/IncomingPopupService;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/IncomingPopupService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/IncomingPopupService;->answerViaSpeaker()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/IncomingPopupService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/IncomingPopupService;->rejectCall()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/IncomingPopupService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/IncomingPopupService;->showInCallUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/IncomingPopupService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/IncomingPopupService;->setSmallCallCardAnimation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/IncomingPopupService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/IncomingPopupService;->sendCreateMessage()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/IncomingPopupService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/IncomingPopupService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mRejectMessages:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/IncomingPopupService;)Lcom/android/phone/RejectCallWithMsgContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mRejectCallWithMsgContent:Lcom/android/phone/RejectCallWithMsgContent;

    return-object v0
.end method

.method private answer()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 312
    return-void
.end method

.method private answerCall()V
    .locals 2

    .prologue
    .line 297
    const-string v0, "answerCall "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;Z)V

    .line 298
    invoke-direct {p0}, Lcom/android/phone/IncomingPopupService;->answer()V

    .line 299
    invoke-virtual {p0}, Lcom/android/phone/IncomingPopupService;->stopService()V

    .line 300
    invoke-direct {p0}, Lcom/android/phone/IncomingPopupService;->showInCallUI()V

    .line 301
    return-void
.end method

.method private answerViaSpeaker()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 304
    const-string v0, "answerViaSpeaker "

    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;Z)V

    .line 305
    invoke-direct {p0}, Lcom/android/phone/IncomingPopupService;->answer()V

    .line 306
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 307
    invoke-virtual {p0}, Lcom/android/phone/IncomingPopupService;->stopService()V

    .line 308
    return-void
.end method

.method private destroyImageCache()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mImageCache:Lcom/android/phone/ImageCache;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mImageCache:Lcom/android/phone/ImageCache;

    invoke-virtual {v0}, Lcom/android/phone/ImageCache;->clearCache()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/IncomingPopupService;->mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

    .line 384
    :cond_0
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayMainCallStatus(call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;Z)V

    .line 460
    if-nez p2, :cond_0

    .line 598
    :goto_0
    return-void

    .line 464
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - call.state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 467
    const-string v1, "cnap_supplementary_service"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 469
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 470
    sput-object v7, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    .line 475
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 476
    if-ne v0, v8, :cond_3

    .line 477
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "support_lgt_multi_call"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 481
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 493
    :goto_1
    if-nez v6, :cond_6

    .line 494
    const-string v0, "displayMainCallStatus: connection is null, using default values."

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 496
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/IncomingPopupService;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 597
    :goto_2
    invoke-direct {p0, p2}, Lcom/android/phone/IncomingPopupService;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 483
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_1

    .line 485
    :cond_3
    if-eq v0, v5, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 488
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_1

    .line 490
    :cond_5
    const-string v1, "IncomingPopupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object v6, v7

    goto :goto_1

    .line 499
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - CONN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 501
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    .line 503
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 504
    if-ne v0, v8, :cond_16

    .line 505
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    .line 506
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 507
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v9

    .line 509
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_e

    .line 510
    iget-object v10, p0, Lcom/android/phone/IncomingPopupService;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v0, v1

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v10, v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    .line 516
    :goto_3
    const-string v10, "usa_cdma_smc_fac_req"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 517
    if-eqz v8, :cond_8

    .line 518
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v10

    .line 519
    if-eqz v7, :cond_8

    sget v11, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-eq v10, v11, :cond_7

    sget v11, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne v10, v11, :cond_8

    .line 521
    :cond_7
    throw v7

    .line 526
    :cond_8
    if-eqz v7, :cond_a

    .line 527
    if-eqz v8, :cond_9

    throw v7

    throw v8

    move-result v8

    if-nez v8, :cond_9

    move v0, v5

    .line 530
    :cond_9
    if-eqz v9, :cond_a

    throw v7

    throw v9

    move-result v7

    if-nez v7, :cond_a

    move v0, v5

    .line 536
    :cond_a
    :goto_4
    if-eqz v0, :cond_f

    .line 537
    const-string v0, "- displayMainCallStatus: starting CallerInfo query..."

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, p0, v6}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 540
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    .line 541
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    .line 542
    if-eqz v1, :cond_b

    iget-object v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 543
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 544
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v7

    iput v7, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 545
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v7

    iput v7, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 548
    :cond_b
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    .line 549
    const-string v7, "updated_calling_name_presentation"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v1, :cond_c

    iget-object v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- contactExists : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v7, v7, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;Z)V

    .line 554
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v1, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v1, :cond_c

    .line 555
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v7, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 558
    :cond_c
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v0, :cond_d

    move v4, v5

    :cond_d
    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/IncomingPopupService;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 513
    :cond_e
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v6}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    goto/16 :goto_3

    .line 561
    :cond_f
    const-string v0, "- displayMainCallStatus: using data we already have..."

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 562
    instance-of v0, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_14

    .line 563
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    .line 565
    const-string v0, "one_line_greeting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/phone/PhoneUtils;->CheckDisplayPLettrering()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 566
    :cond_10
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 568
    :cond_11
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 569
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 571
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 572
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    .line 574
    :cond_12
    const-string v0, "visual_expression"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 575
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    .line 578
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- displayMainCallStatus: CNAP data from Connection: , CNAP name="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", Number/Name Presentation="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   ==> Got CallerInfo; updating display: ci = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    move-object v0, p0

    move-object v5, p2

    .line 581
    invoke-direct/range {v0 .. v6}, Lcom/android/phone/IncomingPopupService;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 583
    :cond_14
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_15

    .line 584
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v1, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", Number Presentation="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", Name Presentation="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ==> Got CallerInfoToken; updating display: ci = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    move-object v0, p0

    move v4, v5

    move-object v5, p2

    .line 589
    invoke-direct/range {v0 .. v6}, Lcom/android/phone/IncomingPopupService;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 592
    :cond_15
    const-string v0, "IncomingPopupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2

    :cond_16
    move v0, v5

    goto/16 :goto_4
.end method

.method private getDefaultImageResource(Lcom/android/internal/telephony/Call;)I
    .locals 4
    .parameter

    .prologue
    const v1, 0x7f020208

    const/4 v3, 0x0

    .line 1005
    .line 1007
    sget-object v0, Lcom/android/phone/IncomingPopupService$6;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1013
    iput-boolean v3, p0, Lcom/android/phone/IncomingPopupService;->mIsAnimationActive:Z

    move v0, v1

    .line 1017
    :goto_0
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1019
    iput-boolean v3, p0, Lcom/android/phone/IncomingPopupService;->mIsAnimationActive:Z

    move v0, v1

    .line 1021
    :cond_0
    return v0

    .line 1009
    :pswitch_0
    const v0, 0x7f0200d1

    .line 1010
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/IncomingPopupService;->mIsAnimationActive:Z

    goto :goto_0

    .line 1007
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private initImageCache()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1220
    const-string v0, "IncomingPopupService"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 2
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 1224
    const-string v0, "IncomingPopupService"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1225
    return-void
.end method

.method private rejectCall()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 316
    invoke-virtual {p0}, Lcom/android/phone/IncomingPopupService;->stopService()V

    .line 317
    return-void
.end method

.method private sendCreateMessage()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 424
    const-string v4, "start create new msg"

    invoke-direct {p0, v4}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 425
    const/4 v3, 0x0

    .line 426
    .local v3, number:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/IncomingPopupService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 427
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 429
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 433
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    :cond_0
    const-string v4, "roaming_auto_dial"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 435
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 438
    :cond_1
    iget-object v4, p0, Lcom/android/phone/IncomingPopupService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 439
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 440
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "smsto"

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 441
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "support_oem_message_for_kk"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 442
    const-string v4, "com.android.mms"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    :cond_2
    const/high16 v4, 0x1800

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 445
    const-string v4, "exit_on_sent"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 447
    const-string v4, "force_new_composer"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 448
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 450
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method private setSmallCallCardAnimation()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 326
    iget-object v4, p0, Lcom/android/phone/IncomingPopupService;->mInset:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/phone/IncomingPopupService;->mIsAnimationActive:Z

    if-nez v4, :cond_1

    :cond_0
    move v4, v5

    .line 360
    :goto_0
    return v4

    .line 328
    :cond_1
    iget v4, p0, Lcom/android/phone/IncomingPopupService;->mCurrentAnimationIndex:I

    iget-object v7, p0, Lcom/android/phone/IncomingPopupService;->mAnimationList:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-le v4, v7, :cond_2

    .line 329
    iput v5, p0, Lcom/android/phone/IncomingPopupService;->mCurrentAnimationIndex:I

    .line 332
    :cond_2
    iget-object v4, p0, Lcom/android/phone/IncomingPopupService;->mAnimationList:[I

    iget v7, p0, Lcom/android/phone/IncomingPopupService;->mCurrentAnimationIndex:I

    aget v3, v4, v7

    .line 334
    .local v3, imageID:I
    const/4 v0, 0x0

    .line 335
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/phone/IncomingPopupService;->mImageCache:Lcom/android/phone/ImageCache;

    if-eqz v4, :cond_3

    .line 336
    iget-object v4, p0, Lcom/android/phone/IncomingPopupService;->mImageCache:Lcom/android/phone/ImageCache;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/phone/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    :cond_3
    if-nez v0, :cond_4

    .line 341
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 343
    :cond_4
    iget-object v4, p0, Lcom/android/phone/IncomingPopupService;->mInset:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 344
    iget-object v4, p0, Lcom/android/phone/IncomingPopupService;->mInset:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 345
    iget-object v4, p0, Lcom/android/phone/IncomingPopupService;->mInset:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 355
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/phone/IncomingPopupService;->mImageCache:Lcom/android/phone/ImageCache;

    if-eqz v4, :cond_5

    .line 356
    iget-object v4, p0, Lcom/android/phone/IncomingPopupService;->mImageCache:Lcom/android/phone/ImageCache;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/android/phone/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 359
    :cond_5
    iget v4, p0, Lcom/android/phone/IncomingPopupService;->mCurrentAnimationIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/phone/IncomingPopupService;->mCurrentAnimationIndex:I

    move v4, v6

    .line 360
    goto :goto_0

    .line 346
    :catch_0
    move-exception v2

    .line 347
    .local v2, exception:Ljava/lang/OutOfMemoryError;
    const-string v4, "setImageResource - outOfMemory exception"

    invoke-direct {p0, v4, v6}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;Z)V

    .line 348
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move v4, v5

    .line 349
    goto :goto_0

    .line 350
    .end local v2           #exception:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 351
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImageResource - exception : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;Z)V

    move v4, v5

    .line 352
    goto :goto_0
.end method

.method private showAnimationImage(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 5
    .parameter "call"
    .parameter "view"
    .parameter "ci"

    .prologue
    const/16 v4, 0x64

    .line 984
    if-eqz p3, :cond_0

    if-eqz p3, :cond_2

    iget-boolean v1, p3, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_2

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 986
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/IncomingPopupService;->getDefaultImageResource(Lcom/android/internal/telephony/Call;)I

    move-result v0

    .line 988
    .local v0, resource:I
    iget-boolean v1, p0, Lcom/android/phone/IncomingPopupService;->mIsAnimationActive:Z

    if-eqz v1, :cond_2

    .line 989
    invoke-direct {p0, p2, v0}, Lcom/android/phone/IncomingPopupService;->showImage(Landroid/widget/ImageView;I)V

    .line 991
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 992
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 995
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/IncomingPopupService;->initImageCache()V

    .line 996
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 997
    const/4 v1, 0x1

    .line 1000
    .end local v0           #resource:I
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 936
    if-eqz p2, :cond_1

    iget-boolean v0, p2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/IncomingPopupService;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 942
    :goto_0
    const/4 v0, 0x1

    .line 944
    :goto_1
    return v0

    .line 940
    :cond_0
    const v0, 0x7f020208

    invoke-direct {p0, p1, v0}, Lcom/android/phone/IncomingPopupService;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 944
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private final showImage(Landroid/widget/ImageView;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 948
    if-lez p2, :cond_0

    .line 950
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/IncomingPopupService;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :cond_0
    :goto_0
    return-void

    .line 951
    :catch_0
    move-exception v0

    .line 952
    const-string v1, "showImage - outOfMemory exception"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;Z)V

    .line 953
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private final showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "bitmap"

    .prologue
    .line 959
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0}, Lcom/android/phone/IncomingPopupService;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 960
    return-void
.end method

.method private final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 969
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 971
    .local v0, current:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 973
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 974
    invoke-static {p1}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 975
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 980
    :goto_0
    return-void

    .line 977
    :cond_0
    invoke-static {p1, v0, p2}, Lcom/android/phone/AnimationUtils;->startCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 978
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showInCallUI()V
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 321
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 322
    return-void
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDisplayForPerson("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\nnumberPresentation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " namePresentation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isTemporary:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 642
    if-nez p5, :cond_1

    .line 643
    const-string v0, "CallCard.updateDisplayForPerson : call is null"

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 648
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 652
    invoke-virtual {p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 653
    const/4 v1, 0x0

    .line 654
    const/4 v2, 0x0

    .line 656
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "country_detector"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/location/CountryDetector;

    .line 659
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    .line 660
    if-eqz p1, :cond_2b

    .line 661
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 663
    const-string v2, "usa_gsm_update_2nd_number"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 664
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne p2, v2, :cond_2

    .line 666
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 667
    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 673
    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "sip:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 674
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 677
    :cond_3
    const-string v2, "cnap_supplementary_service"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 678
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-nez v2, :cond_4

    .line 679
    const-string v2, "updateDisplayForPerson : exist invalid cnapName in the CallerInfo"

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;Z)V

    .line 680
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 684
    :cond_4
    const-string v2, "one_line_greeting"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtils;->CheckDisplayPLettrering()Z

    move-result v2

    if-nez v2, :cond_5

    .line 685
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 688
    :cond_5
    const-string v2, "roaming_auto_dial"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 689
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDisplayForPerson : Roaming area number = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 691
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 693
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_7

    .line 694
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p6, p0, p6}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 696
    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v2, :cond_6

    .line 697
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCallCardNumber()Ljava/lang/String;

    move-result-object v0

    .line 698
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneUtilsExt.getCallCardNumber"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 703
    :cond_7
    :goto_1
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 704
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtilsExt;->changeNameForSKTRAD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object v8, v0

    .line 712
    :goto_2
    const-string v0, "emergency_find_lost_phone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 713
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtilsExt;->changeNameForSKT(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 716
    :cond_8
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 717
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 718
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> no name *or* number! displayName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    move-object v8, v1

    .line 830
    :cond_9
    :goto_3
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- got personUri: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', based on info.person_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 836
    :goto_4
    if-eqz p4, :cond_2c

    if-eqz p1, :cond_a

    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v1, :cond_2c

    .line 837
    :cond_a
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 838
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 877
    :cond_b
    :goto_5
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 878
    if-eqz p1, :cond_34

    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdnipNumber : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "call state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_c

    invoke-virtual {p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_33

    .line 881
    :cond_c
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 886
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090521

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 887
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    .line 888
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mCdnipNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 899
    :cond_d
    :goto_7
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 902
    if-eqz v8, :cond_35

    .line 903
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 909
    :goto_8
    const-string v0, "emergency_find_lost_phone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 910
    if-eqz p1, :cond_f

    .line 911
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 912
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 913
    if-eqz v0, :cond_f

    .line 914
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090515

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090517

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isFindService()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 917
    :cond_e
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 923
    :cond_f
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    .line 924
    :goto_9
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne p2, v1, :cond_11

    if-eqz p1, :cond_10

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    if-eqz v0, :cond_37

    .line 925
    :cond_11
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mRejectWithMsgBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mRejectWithMsgBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 700
    :cond_12
    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 701
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 705
    :cond_13
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 707
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->changeVoiceMailBoxNumberForRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_2

    .line 720
    :cond_14
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v0, :cond_15

    .line 721
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    move-object v8, v1

    goto/16 :goto_3

    .line 723
    :cond_15
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 725
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 726
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 727
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 741
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ==> cnapName available: displayName \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', displayNumber \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 730
    :cond_16
    const-string v0, "number_format_with_country_iso"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 731
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 732
    :cond_17
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    .line 734
    :cond_18
    invoke-virtual {v7}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    .line 738
    :cond_19
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    .line 744
    :cond_1a
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    move-object v6, v8

    move-object v8, v1

    .line 747
    goto/16 :goto_3

    .line 749
    :cond_1c
    const-string v0, "number_format_with_country_iso"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 750
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 751
    :cond_1d
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v8, v1

    goto/16 :goto_3

    .line 753
    :cond_1e
    invoke-virtual {v7}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v8, v1

    goto/16 :goto_3

    .line 757
    :cond_1f
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v8, v1

    goto/16 :goto_3

    .line 762
    :cond_20
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v0, :cond_23

    .line 763
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 811
    :cond_21
    :goto_b
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 814
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 817
    const-string v0, "number_format_with_country_iso"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 818
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 819
    :cond_22
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 767
    :cond_23
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 768
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_26

    .line 773
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 774
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mContactName:Ljava/lang/String;

    .line 776
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v0, :cond_24

    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v0, :cond_21

    .line 777
    :cond_24
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_25

    .line 778
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 779
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    .line 781
    :cond_25
    new-instance v0, Lcom/android/phone/IncomingPopupService$5;

    const-wide/32 v2, 0x493e0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/IncomingPopupService$5;-><init>(Lcom/android/phone/IncomingPopupService;JJLjava/lang/String;)V

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    .line 795
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_b

    .line 800
    :cond_26
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_27

    .line 801
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 802
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    .line 804
    :cond_27
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_b

    .line 807
    :cond_28
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_b

    .line 821
    :cond_29
    invoke-virtual {v7}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 825
    :cond_2a
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 834
    :cond_2b
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v2

    move-object v8, v1

    goto/16 :goto_4

    .line 839
    :cond_2c
    invoke-virtual {p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2d

    .line 841
    const-string v0, "update nothing"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 842
    :cond_2d
    if-eqz p1, :cond_2e

    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v1, :cond_2e

    .line 843
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingPopupService;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_5

    .line 844
    :cond_2e
    if-eqz p1, :cond_2f

    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_2f

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2f

    .line 845
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p5}, Lcom/android/phone/IncomingPopupService;->getDefaultImageResource(Lcom/android/internal/telephony/Call;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingPopupService;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_5

    .line 846
    :cond_2f
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v1, p1}, Lcom/android/phone/IncomingPopupService;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 847
    if-nez v0, :cond_30

    .line 848
    const-string v0, "IncomingPopupService"

    const-string v1, "personPri is null. Just use Unknown picture."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p5}, Lcom/android/phone/IncomingPopupService;->getDefaultImageResource(Lcom/android/internal/telephony/Call;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingPopupService;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_5

    .line 850
    :cond_30
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The requested Uri ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is being loaded already."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Ignoret the duplicate load request."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 859
    :cond_31
    iput-object v0, p0, Lcom/android/phone/IncomingPopupService;->mLoadingPersonUri:Landroid/net/Uri;

    .line 862
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 864
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 867
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/phone/IncomingPopupService$AsyncLoadCookie;

    iget-object v4, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {v3, v4, p1, p5}, Lcom/android/phone/IncomingPopupService$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v1, v2, v0, p0, v3}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 884
    :cond_32
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    goto/16 :goto_6

    .line 892
    :cond_33
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mCdnipNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 895
    :cond_34
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mCdnipNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 906
    :cond_35
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 923
    :cond_36
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 929
    :cond_37
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mRejectWithMsgBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mRejectWithMsgBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_38
    move-object v8, v0

    goto/16 :goto_2
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhotoForCallState("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1030
    iput-boolean v2, p0, Lcom/android/phone/IncomingPopupService;->mIsAnimationActive:Z

    .line 1031
    iput v2, p0, Lcom/android/phone/IncomingPopupService;->mCurrentAnimationIndex:I

    .line 1036
    :cond_0
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1037
    sget-boolean v0, Lcom/android/phone/IncomingPopupService;->mNeedUpdate:Z

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1040
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v3, 0x7f02008b

    invoke-direct {p0, v0, v3}, Lcom/android/phone/IncomingPopupService;->showImage(Landroid/widget/ImageView;I)V

    .line 1041
    sput-boolean v2, Lcom/android/phone/IncomingPopupService;->mNeedUpdate:Z

    .line 1044
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_2

    .line 1045
    sput-boolean v1, Lcom/android/phone/IncomingPopupService;->mNeedUpdate:Z

    .line 1067
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1068
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 1069
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v3, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1073
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1086
    :goto_0
    if-eqz v0, :cond_11

    .line 1087
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 1088
    instance-of v3, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_8

    .line 1089
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    .line 1096
    :goto_1
    if-eqz v4, :cond_10

    .line 1097
    iget v0, v4, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move v3, v0

    .line 1108
    :goto_2
    if-nez v3, :cond_e

    .line 1109
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1110
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p1, v0, v4}, Lcom/android/phone/IncomingPopupService;->showAnimationImage(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1161
    :cond_3
    :goto_3
    return-void

    .line 1075
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 1077
    :cond_5
    if-eq v0, v1, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-ne v0, v3, :cond_7

    .line 1080
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 1083
    :cond_7
    const-string v3, "IncomingPopupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object v0, v5

    goto :goto_0

    .line 1090
    :cond_8
    instance-of v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_11

    .line 1091
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    goto :goto_1

    .line 1115
    :cond_9
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1116
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 1118
    :goto_4
    if-eqz v0, :cond_a

    .line 1119
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p1, v0, v4}, Lcom/android/phone/IncomingPopupService;->showAnimationImage(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1125
    :cond_a
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1126
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v0, v4}, Lcom/android/phone/IncomingPopupService;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v0

    if-ne v0, v8, :cond_b

    .line 1131
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v0

    .line 1132
    if-nez v0, :cond_d

    .line 1133
    const-string v0, "IncomingPopupService"

    const-string v1, "photoUri became null. Show default avatar icon"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v1, 0x7f020208

    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingPopupService;->showImage(Landroid/widget/ImageView;I)V

    .line 1146
    :goto_5
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v9}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1155
    :cond_b
    if-eqz v3, :cond_3

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- overrriding photo image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 1157
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v0, v3}, Lcom/android/phone/IncomingPopupService;->showImage(Landroid/widget/ImageView;I)V

    .line 1159
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto/16 :goto_3

    :cond_c
    move v0, v2

    .line 1116
    goto :goto_4

    .line 1137
    :cond_d
    const-string v2, "start asynchronous load inside updatePhotoForCallState()"

    invoke-direct {p0, v2}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 1139
    iget-object v2, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1141
    iget-object v2, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 1142
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v6, Lcom/android/phone/IncomingPopupService$AsyncLoadCookie;

    iget-object v7, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {v6, v7, v4, v5}, Lcom/android/phone/IncomingPopupService$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v1, v2, v0, p0, v6}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_5

    .line 1151
    :cond_e
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v0, v3}, Lcom/android/phone/IncomingPopupService;->showImage(Landroid/widget/ImageView;I)V

    .line 1152
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v9}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto/16 :goto_3

    :cond_f
    move v0, v1

    goto/16 :goto_4

    :cond_10
    move v3, v2

    goto/16 :goto_2

    :cond_11
    move-object v4, v5

    goto/16 :goto_1
.end method


# virtual methods
.method protected createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .prologue
    .line 291
    invoke-super {p0}, Lcom/android/phone/MiniModeCallService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 292
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 293
    return-object v0
.end method

.method protected initCustomLayout(Landroid/view/ViewGroup;)V
    .locals 10
    .parameter "root"

    .prologue
    const-wide v8, 0x3feccccccccccccdL

    .line 227
    const-string v5, "IncomingPopupService"

    const-string v6, "initCustomLayout "

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 230
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04006d

    invoke-virtual {v0, v5, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/phone/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    .line 231
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    if-nez v5, :cond_0

    .line 285
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0073

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/IncomingPopupService;->mAnswerBtn:Landroid/widget/Button;

    .line 234
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mAnswerBtn:Landroid/widget/Button;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mAnswerBtn:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/phone/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :cond_1
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0074

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/IncomingPopupService;->mAnswerViaSpeakerBtn:Landroid/widget/Button;

    .line 237
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mAnswerViaSpeakerBtn:Landroid/widget/Button;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mAnswerViaSpeakerBtn:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/phone/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    :cond_2
    const-string v5, "feature_kor"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 240
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mAnswerBtn:Landroid/widget/Button;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mAnswerViaSpeakerBtn:Landroid/widget/Button;

    if-eqz v5, :cond_3

    .line 241
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v1, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 242
    .local v1, locale:Ljava/util/Locale;
    if-eqz v1, :cond_3

    .line 243
    const-string v5, "ko"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 244
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mAnswerViaSpeakerBtn:Landroid/widget/Button;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/phone/IncomingPopupService;->mAnswerBtn:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 250
    .end local v1           #locale:Ljava/util/Locale;
    :cond_3
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0075

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/IncomingPopupService;->mRejectBtn:Landroid/widget/Button;

    .line 251
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mRejectBtn:Landroid/widget/Button;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mRejectBtn:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/phone/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    :cond_4
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0076

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/phone/IncomingPopupService;->mRejectWithMsgBtn:Landroid/widget/ImageView;

    .line 254
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mRejectWithMsgBtn:Landroid/widget/ImageView;

    if-eqz v5, :cond_5

    .line 255
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mRejectWithMsgBtn:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 256
    .local v2, marginLp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 257
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00b7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 258
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mRejectWithMsgBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mRejectWithMsgBtn:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    .end local v2           #marginLp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0215

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/phone/IncomingPopupService;->mShowFullBtn:Landroid/widget/ImageButton;

    .line 263
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mShowFullBtn:Landroid/widget/ImageButton;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mShowFullBtn:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/phone/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    :cond_6
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0046

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/IncomingPopupService;->mName:Landroid/widget/TextView;

    .line 266
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mName:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 267
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 268
    .local v3, nameLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v5, v5

    mul-double/2addr v5, v8

    double-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 269
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mName:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    .end local v3           #nameLp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_7
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0049

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/IncomingPopupService;->mPhoneNumber:Landroid/widget/TextView;

    .line 272
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_8

    .line 273
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 274
    .local v4, numberLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v5, v5

    mul-double/2addr v5, v8

    double-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 275
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    .end local v4           #numberLp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_8
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0042

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/phone/InCallContactPhoto;

    iput-object v5, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    .line 279
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a0052

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/phone/IncomingPopupService;->mInset:Landroid/widget/ImageView;

    .line 280
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mInset:Landroid/widget/ImageView;

    if-eqz v5, :cond_9

    .line 281
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    iget-object v6, p0, Lcom/android/phone/IncomingPopupService;->mInset:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/android/phone/InCallContactPhoto;->setInsetImageView(Landroid/widget/ImageView;)V

    .line 284
    :cond_9
    iget-object v5, p0, Lcom/android/phone/IncomingPopupService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v5}, Lcom/android/phone/IncomingPopupService;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_0
.end method

.method public makeRejectWithMsg()V
    .locals 3

    .prologue
    .line 387
    const-string v1, "start makeReject"

    invoke-direct {p0, v1}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0301

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/RejectCallWithMsgContent;

    iput-object v1, p0, Lcom/android/phone/IncomingPopupService;->mRejectCallWithMsgContent:Lcom/android/phone/RejectCallWithMsgContent;

    .line 389
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mRejectCallWithMsgContent:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v1}, Lcom/android/phone/RejectCallWithMsgContent;->getMwRejectMessageString()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IncomingPopupService;->mRejectMessages:[Ljava/lang/String;

    .line 390
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 391
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0904bd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 392
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mRejectMessages:[Ljava/lang/String;

    new-instance v2, Lcom/android/phone/IncomingPopupService$3;

    invoke-direct {v2, p0}, Lcom/android/phone/IncomingPopupService$3;-><init>(Lcom/android/phone/IncomingPopupService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 413
    const v1, 0x7f090025

    new-instance v2, Lcom/android/phone/IncomingPopupService$4;

    invoke-direct {v2, p0}, Lcom/android/phone/IncomingPopupService$4;-><init>(Lcom/android/phone/IncomingPopupService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 418
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IncomingPopupService;->mRejectWithMsgDialog:Landroid/app/AlertDialog;

    .line 419
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mRejectWithMsgDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 420
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mRejectWithMsgDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 421
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 168
    iput-object p0, p0, Lcom/android/phone/MiniModeCallService;->mContext:Landroid/content/Context;

    .line 169
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IncomingPopupService;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 170
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/IncomingPopupService;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 171
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 172
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mApp:Lcom/android/phone/PhoneGlobals;

    iput-object p0, v0, Lcom/android/phone/PhoneGlobals;->mIncomingPopupService:Lcom/android/phone/IncomingPopupService;

    .line 173
    new-instance v0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IncomingPopupService;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 174
    new-instance v0, Lcom/android/phone/IncomingPopupService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingPopupService$2;-><init>(Lcom/android/phone/IncomingPopupService;)V

    iput-object v0, p0, Lcom/android/phone/IncomingPopupService;->mHandler:Landroid/os/Handler;

    .line 188
    const-string v0, "barge_in"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Lcom/android/phone/CallBargeIn;

    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, v1}, Lcom/android/phone/CallBargeIn;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/IncomingPopupService;->mCallBargeIn:Lcom/android/phone/CallBargeIn;

    .line 190
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mCallBargeIn:Lcom/android/phone/CallBargeIn;

    invoke-virtual {v0}, Lcom/android/phone/CallBargeIn;->init()V

    .line 191
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mCallBargeIn:Lcom/android/phone/CallBargeIn;

    invoke-virtual {v0}, Lcom/android/phone/CallBargeIn;->updateBargeInState()V

    .line 194
    :cond_0
    invoke-super {p0}, Lcom/android/phone/MiniModeCallService;->onCreate()V

    .line 195
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 199
    const-string v0, "onDestroy "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;Z)V

    .line 201
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mApp:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->mIncomingPopupService:Lcom/android/phone/IncomingPopupService;

    .line 203
    const-string v0, "barge_in"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mCallBargeIn:Lcom/android/phone/CallBargeIn;

    invoke-virtual {v0}, Lcom/android/phone/CallBargeIn;->stopBargeIn()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mRejectWithMsgDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mRejectWithMsgDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mRejectWithMsgDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 215
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/IncomingPopupService;->destroyImageCache()V

    .line 216
    invoke-virtual {p0}, Lcom/android/phone/IncomingPopupService;->resetSmallCallCardAnimation()V

    .line 218
    invoke-super {p0}, Lcom/android/phone/MiniModeCallService;->onDestroy()V

    .line 219
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f020208

    const/4 v3, 0x1

    .line 1165
    const-string v0, "IncomingPopupService"

    const-string v1, "onImageLoadComplete"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1167
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mLoadingPersonUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 1173
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/IncomingPopupService;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1178
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/IncomingPopupService;->mLoadingPersonUri:Landroid/net/Uri;

    .line 1180
    check-cast p4, Lcom/android/phone/IncomingPopupService$AsyncLoadCookie;

    .line 1181
    iget-object v0, p4, Lcom/android/phone/IncomingPopupService$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1182
    iget-object v1, p4, Lcom/android/phone/IncomingPopupService$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 1183
    iget-object v2, p4, Lcom/android/phone/IncomingPopupService$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 1185
    iput-object p2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 1186
    iput-object p3, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    .line 1187
    iput-boolean v3, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 1191
    if-eqz p2, :cond_3

    .line 1192
    invoke-direct {p0, v1, p2}, Lcom/android/phone/IncomingPopupService;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1213
    :cond_0
    :goto_1
    if-nez p1, :cond_1

    .line 1214
    invoke-direct {p0, v2}, Lcom/android/phone/IncomingPopupService;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 1216
    :cond_1
    return-void

    .line 1176
    :cond_2
    const-string v0, "IncomingPopupService"

    const-string v1, "Person Uri isn\'t available while Image is successfully loaded."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1193
    :cond_3
    if-eqz p3, :cond_4

    .line 1194
    invoke-direct {p0, v1, p3}, Lcom/android/phone/IncomingPopupService;->showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1196
    :cond_4
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1197
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1198
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_0

    .line 1201
    invoke-direct {p0, v1, v4}, Lcom/android/phone/IncomingPopupService;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 1204
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1205
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_0

    .line 1208
    invoke-direct {p0, v1, v4}, Lcom/android/phone/IncomingPopupService;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_1
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cookie "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ci "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 603
    instance-of v0, p2, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_3

    .line 604
    const-string v0, "callerinfo query complete, updating ui from displayMainCallStatus()"

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 605
    check-cast p2, Lcom/android/internal/telephony/Connection;

    .line 606
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 607
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 608
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 609
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 612
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v6, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 615
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .line 616
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .line 617
    if-eqz v6, :cond_0

    .line 618
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 619
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    .line 621
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- onQueryComplete: NumberPresentation="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "namPresentation="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", contactExists="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v7, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 624
    iget-boolean v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_2

    .line 625
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/IncomingPopupService;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 636
    :cond_1
    :goto_1
    return-void

    .line 628
    :cond_2
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/IncomingPopupService;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 632
    :cond_3
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 633
    const-string v0, "callerinfo query complete, updating ui from ongoing or onhold"

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 634
    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-static {p3, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    move-object v6, p2

    goto :goto_0
.end method

.method public resetSmallCallCardAnimation()V
    .locals 2

    .prologue
    .line 364
    const-string v0, "resetSmallCallCardAnimation"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;Z)V

    .line 365
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mInset:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mInset:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 367
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService;->mInset:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    :cond_0
    return-void
.end method

.method public stopService()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "stopSelf "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;Z)V

    .line 223
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 224
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "cm"

    .prologue
    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/IncomingPopupService;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 455
    return-void
.end method
