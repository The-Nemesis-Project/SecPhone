.class public Lcom/android/phone/CallCard;
.super Landroid/widget/FrameLayout;
.source "CallCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$4;,
        Lcom/android/phone/CallCard$QueryHandler;,
        Lcom/android/phone/CallCard$AsyncLoadCookie;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static SDN_Number:Ljava/lang/String;

.field static final buildcarrier:Ljava/lang/String;

.field private static mNeedUpdate:Z

.field private static mQueryFinish:Z

.field private static mSDNCount:I

.field private static mSDNName:[Ljava/lang/String;

.field private static mSDNNumber:[Ljava/lang/String;

.field private static mShowNotiPopup:Z

.field private static mTconUImode:I

.field private static sTypeface:Landroid/graphics/Typeface;

.field private static sTypefaceVT:Landroid/graphics/Typeface;


# instance fields
.field private FDN_Number:Ljava/lang/String;

.field private isAutoAnsered:Z

.field private isDialingInLand:Z

.field private isGuidanceMsgPlaying:Z

.field private isMySoundButtonLayoutChanged:Z

.field private isVTinitialized:Z

.field private mAcceptButton:Landroid/widget/Button;

.field private mAcceptSpeakerButton:Landroid/widget/Button;

.field private mAnimationList:[[I

.field private mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

.field private mAnsMemoImageView:Landroid/widget/ImageView;

.field private mAnsweringMemo:Landroid/widget/TextView;

.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field mAudioManager:Landroid/media/AudioManager;

.field private mBtnLayoutOnVTScreen:Landroid/view/ViewGroup;

.field private mCallEndTimeBlinkCount:I

.field private mCallInfoContainer:Landroid/view/ViewGroup;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTypeIcon:Landroid/widget/ImageView;

.field private mCallTypeIndicator:Landroid/widget/TextView;

.field private mCameraOffButton:Landroid/widget/ImageButton;

.field private mCameraOnButton:Landroid/widget/ImageButton;

.field private mCardSubscriber:Landroid/widget/TextView;

.field private mCdnipNumber:Landroid/widget/TextView;

.field private mCdnipNumberVT:Landroid/widget/TextView;

.field private mConnectionIcon:Landroid/widget/ImageView;

.field private mContainerDivider:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAnimationIndex:I

.field private mCurrentAnimationType:I

.field private mCurrentPeriodMarkIndex:I

.field private mDensity:F

.field private mDirectPhotoShareButton:Landroid/widget/ImageButton;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mElapsedTimeTitle:Landroid/widget/TextView;

.field private mEndCallString:Ljava/lang/String;

.field private mEndCallTime:J

.field private mEriInfoLabel:Landroid/widget/TextView;

.field public mGeoDescription:Landroid/widget/TextView;

.field private mHDVoice:Landroid/widget/ImageView;

.field private mHDVoiceText:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mImageCache:Lcom/android/phone/ImageCache;

.field private mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallPopup:Landroid/view/ViewGroup;

.field private mIncomingCallPopupIsShowing:Z

.field private mIncomingCallPopupMsg:Landroid/widget/TextView;

.field private mIncomingCallWidgetHintColorResId:I

.field private mIncomingCallWidgetHintTextResId:I

.field mInset:Landroid/widget/ImageView;

.field private mIsReset:Z

.field private mLabel:Landroid/widget/TextView;

.field private mLabelAndNumber:Landroid/view/ViewGroup;

.field private mLoadingPersonUri:Landroid/net/Uri;

.field private mModifyCallButton:Landroid/widget/ImageButton;

.field private mModifyVCCallButton:Landroid/widget/ImageButton;

.field private mModifyVTCallButton:Landroid/widget/ImageButton;

.field private mMySoundButton:Landroid/widget/ToggleButton;

.field private mMySoundHeight:I

.field private mMySoundTopMargin:I

.field private mMySoundWidth:I

.field private mName:Landroid/widget/TextView;

.field private mNetworkIcon:Landroid/widget/ImageView;

.field private mPLettering:Landroid/widget/LinearLayout;

.field private mPLetteringTextView:Landroid/widget/TextView;

.field private mPeriodMark:Landroid/widget/ImageView;

.field private mPeriodMarkList:[I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoneNumberLocator:Lcom/android/phone/ScrollTextView;

.field private mPhoto:Lcom/android/phone/InCallContactPhoto;

.field private mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

.field private mPnlCardInfo:Ljava/lang/String;

.field private mPnlInfo:Ljava/lang/String;

.field private mPreviousVTCallState:Lcom/android/internal/telephony/Call$State;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallInfo:Landroid/view/ViewGroup;

.field private mQueryHandler:Lcom/android/phone/CallCard$QueryHandler;

.field private mRecInfo:Landroid/view/View;

.field private mRecordTime:Landroid/widget/TextView;

.field private mRejectButton:Landroid/widget/Button;

.field private mRejectWithMsgButton:Landroid/widget/ImageView;

.field private mSecondPLettering:Landroid/widget/LinearLayout;

.field private mSecondPLetteringTextView:Landroid/widget/TextView;

.field private mSecondaryCallBanner:Landroid/view/ViewGroup;

.field private mSecondaryCallInfo:Landroid/view/ViewGroup;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallNumber:Landroid/widget/TextView;

.field private mSecondaryCallPhoto:Landroid/widget/ImageView;

.field private mSecondaryCallStatus:Landroid/widget/TextView;

.field private mSecondaryHDVoice:Landroid/widget/ImageView;

.field private mSecondaryHDVoiceText:Landroid/widget/TextView;

.field private mSocialStatus:Lcom/android/phone/SocialStatus;

.field private mTextColorCallTypeSip:I

.field private mUpgradeButtonDivider:Landroid/widget/ImageView;

.field private mVTElapsedTime_VGA:Landroid/widget/TextView;

.field public mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

.field private mVideoCallPhoto:Landroid/widget/ImageView;

.field private mVideoShareButton:Landroid/widget/ImageButton;

.field private mVisualExpression:Landroid/view/View;

.field private mVoipInUseMsg:Landroid/widget/TextView;

.field private mVtQcifElapsedTime:Landroid/widget/TextView;

.field private memoRecInfo:Landroid/view/View;

.field private memoRecordTime:Landroid/widget/TextView;

.field public mhFDNQueryHanlder:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 138
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    .line 335
    sput-object v4, Lcom/android/phone/CallCard;->sTypeface:Landroid/graphics/Typeface;

    .line 336
    sput-object v4, Lcom/android/phone/CallCard;->sTypefaceVT:Landroid/graphics/Typeface;

    .line 344
    sput-object v4, Lcom/android/phone/CallCard;->mSDNNumber:[Ljava/lang/String;

    .line 345
    sput-object v4, Lcom/android/phone/CallCard;->mSDNName:[Ljava/lang/String;

    .line 348
    sput-boolean v2, Lcom/android/phone/CallCard;->mQueryFinish:Z

    .line 349
    sput v2, Lcom/android/phone/CallCard;->mSDNCount:I

    .line 350
    sput-object v4, Lcom/android/phone/CallCard;->SDN_Number:Ljava/lang/String;

    .line 354
    sput-boolean v1, Lcom/android/phone/CallCard;->mNeedUpdate:Z

    .line 367
    sput v2, Lcom/android/phone/CallCard;->mTconUImode:I

    .line 399
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallCard;->buildcarrier:Ljava/lang/String;

    .line 402
    sput-boolean v1, Lcom/android/phone/CallCard;->mShowNotiPopup:Z

    return-void

    :cond_0
    move v0, v2

    .line 138
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 690
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 243
    iput-object v3, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    .line 245
    iput-object v3, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    .line 261
    iput-object v3, p0, Lcom/android/phone/CallCard;->mHDVoice:Landroid/widget/ImageView;

    .line 262
    iput-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryHDVoice:Landroid/widget/ImageView;

    .line 264
    iput-object v3, p0, Lcom/android/phone/CallCard;->mVoipInUseMsg:Landroid/widget/TextView;

    .line 275
    iput-object v3, p0, Lcom/android/phone/CallCard;->mAcceptButton:Landroid/widget/Button;

    .line 276
    iput-object v3, p0, Lcom/android/phone/CallCard;->mRejectButton:Landroid/widget/Button;

    .line 277
    iput-object v3, p0, Lcom/android/phone/CallCard;->mAcceptSpeakerButton:Landroid/widget/Button;

    .line 278
    iput-object v3, p0, Lcom/android/phone/CallCard;->mRejectWithMsgButton:Landroid/widget/ImageView;

    .line 293
    iput v4, p0, Lcom/android/phone/CallCard;->mMySoundTopMargin:I

    .line 294
    iput v4, p0, Lcom/android/phone/CallCard;->mMySoundHeight:I

    .line 295
    iput v4, p0, Lcom/android/phone/CallCard;->mMySoundWidth:I

    .line 296
    iput-boolean v4, p0, Lcom/android/phone/CallCard;->isMySoundButtonLayoutChanged:Z

    .line 314
    iput-boolean v4, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    .line 320
    iput-boolean v4, p0, Lcom/android/phone/CallCard;->mIncomingCallPopupIsShowing:Z

    .line 322
    iput-boolean v4, p0, Lcom/android/phone/CallCard;->isDialingInLand:Z

    .line 324
    iput-boolean v4, p0, Lcom/android/phone/CallCard;->isVTinitialized:Z

    .line 326
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPreviousVTCallState:Lcom/android/internal/telephony/Call$State;

    .line 327
    iput-object v3, p0, Lcom/android/phone/CallCard;->FDN_Number:Ljava/lang/String;

    .line 332
    iput v4, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    .line 365
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    .line 366
    iput v4, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    .line 368
    new-array v0, v6, [[I

    new-array v1, v7, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v7, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/phone/CallCard;->mAnimationList:[[I

    .line 375
    new-array v0, v6, [[Landroid/graphics/drawable/Drawable;

    new-array v1, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    const/4 v2, 0x3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    new-array v1, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    const/4 v2, 0x3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/phone/CallCard;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    .line 385
    iput-object v3, p0, Lcom/android/phone/CallCard;->memoRecInfo:Landroid/view/View;

    .line 395
    iput v4, p0, Lcom/android/phone/CallCard;->mCurrentPeriodMarkIndex:I

    .line 396
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMarkList:[I

    .line 412
    new-instance v0, Lcom/android/phone/CallCard$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallCard$1;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    .line 6706
    new-instance v0, Lcom/android/phone/CallCard$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CallCard$3;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mhFDNQueryHanlder:Landroid/os/Handler;

    .line 692
    const-string v0, "CallCard constructor..."

    invoke-direct {p0, v0, v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- context "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attrs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 697
    iput-object p1, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    .line 700
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 703
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 704
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isPenMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    const v1, 0x7f040013

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 736
    :goto_0
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 739
    new-instance v0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 741
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/phone/CallCard;->mDensity:F

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Density: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 743
    return-void

    .line 712
    :cond_0
    const v1, 0x7f040015

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 717
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 718
    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 719
    const v1, 0x7f04008b

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 724
    :cond_2
    const v1, 0x7f04008a

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 730
    :cond_3
    const v1, 0x7f040013

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 368
    nop

    :array_0
    .array-data 0x4
        0xf4t 0x1t 0x2t 0x7ft
        0xf6t 0x1t 0x2t 0x7ft
        0xf8t 0x1t 0x2t 0x7ft
        0xfat 0x1t 0x2t 0x7ft
        0xfct 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xe2t 0x1t 0x2t 0x7ft
        0xe4t 0x1t 0x2t 0x7ft
        0xe6t 0x1t 0x2t 0x7ft
        0xe8t 0x1t 0x2t 0x7ft
        0xeat 0x1t 0x2t 0x7ft
    .end array-data

    .line 396
    :array_2
    .array-data 0x4
        0x3ft 0x1t 0x2t 0x7ft
        0x40t 0x1t 0x2t 0x7ft
        0x41t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method private CallEndTimeBlink()V
    .locals 9

    .prologue
    const/16 v8, 0x64

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 633
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 687
    :goto_0
    return-void

    .line 635
    :cond_0
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 641
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->hasHoldingBGCall:Z

    if-nez v0, :cond_2

    .line 642
    iput v3, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    .line 643
    iput-wide v6, p0, Lcom/android/phone/CallCard;->mEndCallTime:J

    .line 644
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    goto :goto_0

    .line 639
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    goto :goto_1

    .line 650
    :cond_2
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 651
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 656
    :goto_2
    iget v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_a

    iget-wide v4, p0, Lcom/android/phone/CallCard;->mEndCallTime:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_a

    .line 657
    iget v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7

    move v4, v2

    .line 658
    :goto_3
    if-eqz v4, :cond_8

    const-string v1, ""

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    if-nez v4, :cond_9

    move v0, v2

    :goto_5
    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(ZZ)V

    .line 660
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ctc_dual_mode_single_phone_byqc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 664
    iget-object v0, p0, Lcom/android/phone/CallCard;->mNetworkIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 665
    iget-object v0, p0, Lcom/android/phone/CallCard;->mNetworkIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    const/16 v3, 0x8

    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 667
    :cond_5
    iget v0, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    .line 668
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 669
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 653
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    goto :goto_2

    :cond_7
    move v4, v3

    .line 657
    goto :goto_3

    .line 658
    :cond_8
    iget-wide v5, p0, Lcom/android/phone/CallCard;->mEndCallTime:J

    invoke-static {v5, v6}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    move v0, v3

    .line 659
    goto :goto_5

    .line 671
    :cond_a
    invoke-direct {p0, v3, v2}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(ZZ)V

    .line 672
    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 682
    :cond_b
    iget-object v1, p0, Lcom/android/phone/CallCard;->mEndCallString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iput v3, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    .line 684
    iput-wide v6, p0, Lcom/android/phone/CallCard;->mEndCallTime:J

    .line 685
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/CallCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/phone/CallCard;->CallEndTimeBlink()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallCard;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/CallCard;Landroid/widget/ImageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/CallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/phone/CallCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/phone/CallCard;->FDN_Number:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    sput-boolean p0, Lcom/android/phone/CallCard;->mQueryFinish:Z

    return p0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 133
    sget v0, Lcom/android/phone/CallCard;->mSDNCount:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    sput p0, Lcom/android/phone/CallCard;->mSDNCount:I

    return p0
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/phone/CallCard;->mSDNNumber:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    sput-object p0, Lcom/android/phone/CallCard;->mSDNNumber:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/phone/CallCard;->mSDNName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    sput-object p0, Lcom/android/phone/CallCard;->mSDNName:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/phone/CallCard;->SDN_Number:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallCard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CallCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/phone/CallCard;->destroyImageCache()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CallCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/phone/CallCard;->setSmallCallCardAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/phone/CallCard;->setCallCardAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/CallCard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget v0, p0, Lcom/android/phone/CallCard;->mCurrentPeriodMarkIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/CallCard;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput p1, p0, Lcom/android/phone/CallCard;->mCurrentPeriodMarkIndex:I

    return p1
.end method

.method static synthetic access$608(Lcom/android/phone/CallCard;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 133
    iget v0, p0, Lcom/android/phone/CallCard;->mCurrentPeriodMarkIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/CallCard;->mCurrentPeriodMarkIndex:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallCard;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMarkList:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallCard;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallCard;)Lcom/android/phone/InCallContactPhoto;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    return-object v0
.end method

.method private destroyImageCache()V
    .locals 1

    .prologue
    .line 6251
    iget-object v0, p0, Lcom/android/phone/CallCard;->mImageCache:Lcom/android/phone/ImageCache;

    if-eqz v0, :cond_0

    .line 6252
    iget-object v0, p0, Lcom/android/phone/CallCard;->mImageCache:Lcom/android/phone/ImageCache;

    invoke-virtual {v0}, Lcom/android/phone/ImageCache;->clearCache()V

    .line 6253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

    .line 6255
    :cond_0
    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 6601
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 6602
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 6603
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6605
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 6606
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6608
    :cond_0
    return-void
.end method

.method private displayElapsedTimeForTablet(Z)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0e00ec

    .line 3154
    sget-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayElapsedTimeForTablet enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3155
    :cond_0
    if-eqz p1, :cond_9

    .line 3156
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3157
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallCard;->mVTElapsedTime_VGA:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 3158
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVTElapsedTime_VGA:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3159
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3160
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3161
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3162
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3163
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3183
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mVTElapsedTime_VGA:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3185
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVTElapsedTime_VGA:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 3186
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVTElapsedTime_VGA:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3193
    :cond_3
    :goto_1
    return-void

    .line 3164
    :cond_4
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3165
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3166
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 3169
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3170
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 3173
    :cond_6
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3174
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3175
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 3176
    :cond_7
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3177
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 3180
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_0

    .line 3189
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVTElapsedTime_VGA:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallCard;->mVTElapsedTime_VGA:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 3190
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVTElapsedTime_VGA:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 21
    .parameter
    .parameter

    .prologue
    .line 2124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayMainCallStatus(call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 2126
    if-nez p2, :cond_2

    .line 2128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2129
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2131
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v2, :cond_1

    .line 2132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/VideoCallPanel;->setVisibility(I)V

    .line 2907
    :cond_1
    :goto_0
    return-void

    .line 2136
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2137
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2138
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2d

    const-string v2, "phone_kk_tablet_gui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 2141
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v3, 0x7f02008d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2146
    :cond_5
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 2147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - call.state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2150
    const-string v3, "common_volte_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2151
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2152
    const/4 v4, 0x5

    if-ne v3, v4, :cond_2f

    .line 2153
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getvoltehold()Z

    move-result v3

    if-eqz v3, :cond_2e

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_6

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2e

    .line 2154
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v20, v2

    .line 2163
    :goto_2
    const-string v2, "cnap_supplementary_service"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2164
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_7

    sget-object v2, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_7

    .line 2165
    sget-object v2, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 2166
    const/4 v2, 0x0

    sput-object v2, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    .line 2169
    :cond_7
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2170
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->hideVideoCallPhotoView()V

    .line 2173
    :cond_8
    sget-object v2, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2270
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayMainCallStatus: unexpected call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2273
    :cond_9
    :goto_3
    const-string v2, "fixing_lcd_brightness"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2274
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_a

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_36

    .line 2275
    :cond_a
    sget v2, Lcom/android/phone/CallCard;->mTconUImode:I

    if-nez v2, :cond_b

    .line 2276
    const/16 v2, 0xd

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setTconUIMode(I)Z

    .line 2277
    const/16 v2, 0xd

    sput v2, Lcom/android/phone/CallCard;->mTconUImode:I

    .line 2278
    const-string v2, "setTconUIMode(13)"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 2289
    :cond_b
    :goto_4
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "phone_kk_tablet_gui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 2290
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateTabletCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 2295
    :goto_5
    const-string v2, "ctc_call_time_duration"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2296
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2297
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_c

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/CallCard;->isBlockResetTime(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2299
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallCard;->mIsReset:Z

    .line 2303
    :cond_d
    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2305
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2306
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoiceText:Landroid/widget/TextView;

    if-eqz v2, :cond_e

    .line 2308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoiceText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2309
    :cond_e
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoice:Landroid/widget/ImageView;

    if-eqz v2, :cond_f

    .line 2311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoice:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2315
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateVideoCallState(Lcom/android/internal/telephony/Call;)V

    .line 2327
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2328
    const/4 v2, 0x0

    .line 2329
    const-string v4, "service_callmessage"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    sget-object v4, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_10

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_10

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_10

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_11

    :cond_10
    const-string v4, "cnap_supplementary_service"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_12

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_41

    :cond_12
    const/4 v4, 0x5

    if-ne v3, v4, :cond_41

    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 2338
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 2340
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0e01ca

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 2341
    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v5, :cond_14

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-ne v0, v5, :cond_3a

    :cond_14
    if-eqz v4, :cond_3a

    .line 2342
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 2356
    :goto_7
    if-eqz v4, :cond_40

    .line 2357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPLetteringTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPLettering:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2360
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 2361
    if-eqz v2, :cond_15

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_15

    .line 2362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPLetteringTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 2363
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mPLetteringTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2367
    :cond_15
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_16

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_16

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_16

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_3f

    .line 2368
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPLetteringTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPLetteringTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2376
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondPLettering:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_17

    .line 2377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondPLettering:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2380
    :cond_17
    sget-boolean v2, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v2, :cond_18

    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pLetteringData: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2391
    :cond_18
    :goto_9
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_5b

    invoke-virtual/range {p1 .. p2}, Lcom/android/internal/telephony/CallManager;->getCallDomain(Lcom/android/internal/telephony/Call;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5b

    .line 2393
    const-string v2, "videocall: Show modifyCall button"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2394
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 2395
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyVTCallButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOnButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOffButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mUpgradeButtonDivider:Landroid/widget/ImageView;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mContainerDivider:Landroid/widget/ImageView;

    if-eqz v2, :cond_20

    .line 2398
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_4e

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2399
    invoke-virtual/range {p1 .. p2}, Lcom/android/internal/telephony/CallManager;->getCallType(Lcom/android/internal/telephony/Call;)I

    move-result v5

    .line 2400
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v2

    sget-object v6, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-eq v2, v6, :cond_1a

    :cond_19
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    const/4 v2, 0x3

    if-ne v5, v2, :cond_42

    :cond_1a
    const/4 v2, 0x1

    .line 2403
    :goto_a
    if-nez v2, :cond_1b

    const/4 v2, 0x1

    if-ne v5, v2, :cond_44

    .line 2404
    :cond_1b
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2406
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOnButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOnButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mContainerDivider:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mUpgradeButtonDivider:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOffButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOffButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2485
    :goto_b
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2487
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOnButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_51

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 2489
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v2, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v2, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2491
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mHDVoiceText:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v2, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mBtnLayoutOnVTScreen:Landroid/view/ViewGroup;

    if-eqz v2, :cond_20

    .line 2493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOnButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_52

    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCard;->mDensity:F

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v3, v2

    .line 2494
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mBtnLayoutOnVTScreen:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2495
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mBtnLayoutOnVTScreen:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2500
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoiceText:Landroid/widget/TextView;

    if-eqz v2, :cond_22

    .line 2501
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 2502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoiceText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2517
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInCallScreen.isImsRegisteredOverWifi():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->isImsRegisteredOverWifi()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " call.getPhone().getPhoneType():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 2519
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isImsRegisteredOverWifi()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isCallEndedAbnormally(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2522
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoiceText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2526
    :cond_22
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoice:Landroid/widget/ImageView;

    if-eqz v2, :cond_24

    .line 2528
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 2529
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoice:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2539
    :cond_24
    :goto_f
    const-string v2, "ims_conference_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2540
    invoke-virtual/range {p0 .. p2}, Lcom/android/phone/CallCard;->updateVCInviteButton(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2587
    :cond_25
    :goto_10
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 2588
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2589
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_65

    const/4 v3, 0x0

    .line 2590
    :goto_11
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2595
    :cond_27
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_66

    const-string v2, "support_lgt_multi_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_66

    .line 2597
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 2837
    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 2843
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    if-eqz v2, :cond_28

    .line 2845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2854
    :cond_28
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "cityid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2858
    :cond_29
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/EcidClient;->updateLookupQueries(Lcom/android/internal/telephony/Phone;)V

    .line 2863
    :cond_2a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateMySoundBtn(Lcom/android/internal/telephony/Call;)V

    .line 2865
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateDirectPhotoShareButton(Lcom/android/internal/telephony/Call;)V

    .line 2867
    const-string v2, "enbale_voicerecording_popup_when_incoming"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2868
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->infoVoiceRecording(Lcom/android/internal/telephony/Call$State;)V

    .line 2871
    :cond_2b
    const-string v2, "support_easy_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallCard;->mIncomingCallPopupIsShowing:Z

    if-nez v2, :cond_2c

    .line 2873
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallCard;->showIncomingPopupForSecondCall(Lcom/android/internal/telephony/Call$State;I)V

    .line 2878
    :cond_2c
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 2143
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 2156
    :cond_2e
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsIms;->setvoltehold(Z)V

    move-object/from16 v20, v2

    goto/16 :goto_2

    .line 2159
    :cond_2f
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsIms;->setvoltehold(Z)V

    :cond_30
    move-object/from16 v20, v2

    goto/16 :goto_2

    .line 2188
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isImsRegisteredOverWifi()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2196
    :cond_31
    :pswitch_1
    const-string v2, "displayMainCallStatus: start periodicUpdateTimer"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 2198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->reset()V

    .line 2199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    goto/16 :goto_3

    .line 2214
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    if-eqz v2, :cond_32

    const-string v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    invoke-virtual {v2}, Lcom/android/phone/SocialStatus;->resetSocialStatus()V

    .line 2218
    :cond_32
    const-string v2, "minute_minder_noti"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 2219
    const-string v2, "Run minute_minder_noti in CallCard !! "

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 2221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->stopMinuteMinderAlarm()V

    .line 2224
    :cond_33
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoCallPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 2232
    :pswitch_3
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2233
    const-string v2, "GATE"

    const-string v3, "<GATE-M>CALL_MO_ALERT_IND</GATE-M>"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2236
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 2237
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2238
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2239
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->showVideoCallPhotoView()V

    goto/16 :goto_3

    .line 2244
    :pswitch_4
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2245
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2246
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->showVideoCallPhotoView()V

    .line 2250
    :cond_35
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_3

    .line 2259
    :pswitch_6
    const-string v2, "CallCard"

    const-string v3, "displayMainCallStatus: IDLE call in the main call card!"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_3

    .line 2281
    :cond_36
    sget v2, Lcom/android/phone/CallCard;->mTconUImode:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_b

    .line 2282
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setTconUIMode(I)Z

    .line 2283
    const/4 v2, 0x0

    sput v2, Lcom/android/phone/CallCard;->mTconUImode:I

    .line 2284
    const-string v2, "setTconUIMode(0)"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 2292
    :cond_37
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_5

    .line 2319
    :cond_38
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 2320
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallCard;->isVTinitialized:Z

    .line 2322
    :cond_39
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->hideVideoCallWidgets()V

    goto/16 :goto_6

    .line 2343
    :cond_3a
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v5, :cond_3b

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-ne v0, v5, :cond_3c

    .line 2344
    :cond_3b
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getLettering()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_7

    .line 2345
    :cond_3c
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-ne v0, v5, :cond_8a

    .line 2346
    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3d

    .line 2347
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    .line 2349
    :cond_3d
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v4

    .line 2350
    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 2351
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e01cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    move-object v4, v2

    goto/16 :goto_7

    .line 2352
    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    if-eqz v4, :cond_89

    .line 2353
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e01cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    move-object v4, v2

    goto/16 :goto_7

    .line 2371
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPLetteringTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPLetteringTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPLetteringTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_8

    .line 2382
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPLettering:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_9

    .line 2385
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPLettering:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_18

    .line 2386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPLettering:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_9

    .line 2400
    :cond_42
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 2415
    :cond_43
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyVTCallButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyVTCallButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_b

    .line 2583
    :catch_0
    move-exception v2

    .line 2584
    const-string v3, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videocall CallStateException e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 2420
    :cond_44
    if-eqz v5, :cond_45

    const/4 v2, 0x2

    if-ne v5, v2, :cond_4b

    .line 2421
    :cond_45
    :try_start_2
    const-string v2, "ims_conference_voice"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtilsExt;->isAudioConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 2422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2447
    :cond_46
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyVTCallButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyVTCallButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_b

    .line 2425
    :cond_47
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2427
    :cond_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOnButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOnButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2429
    if-nez v5, :cond_49

    .line 2430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mContainerDivider:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mUpgradeButtonDivider:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2440
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOffButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOffButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_13

    .line 2435
    :cond_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mContainerDivider:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mUpgradeButtonDivider:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14

    .line 2442
    :cond_4a
    if-eqz v3, :cond_46

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_13

    .line 2450
    :cond_4b
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2452
    :cond_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOnButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOnButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mContainerDivider:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mUpgradeButtonDivider:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOffButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOffButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_b

    .line 2461
    :cond_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyVTCallButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyVTCallButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_b

    .line 2468
    :cond_4e
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 2470
    :cond_4f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOnButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOnButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mContainerDivider:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mUpgradeButtonDivider:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOffButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOffButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_b

    .line 2479
    :cond_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyVTCallButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyVTCallButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_b

    .line 2487
    :cond_51
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto/16 :goto_c

    .line 2493
    :cond_52
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_d

    .line 2503
    :cond_53
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isWBMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_55

    :cond_54
    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 2505
    :cond_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoiceText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e

    .line 2506
    :cond_56
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isWBMode(Lcom/android/internal/telephony/Connection;)Z

    move-result v2

    if-eqz v2, :cond_57

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_57

    .line 2507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoiceText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e

    .line 2509
    :cond_57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoiceText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e

    .line 2530
    :cond_58
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_59

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isWBMode(Lcom/android/internal/telephony/Connection;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 2532
    :cond_59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoice:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    .line 2534
    :cond_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoice:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    .line 2543
    :cond_5b
    const-string v2, "videocall: Dont show modifyCall button"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_5c

    .line 2545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2548
    :cond_5c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyVTCallButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_5d

    .line 2549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyVTCallButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyVTCallButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2552
    :cond_5d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOnButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_5e

    .line 2553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOnButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOnButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2556
    :cond_5e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOffButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_5f

    .line 2557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOffButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCameraOffButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2560
    :cond_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_60

    .line 2561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2564
    :cond_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mContainerDivider:Landroid/widget/ImageView;

    if-eqz v2, :cond_61

    .line 2565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mContainerDivider:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2566
    :cond_61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mUpgradeButtonDivider:Landroid/widget/ImageView;

    if-eqz v2, :cond_62

    .line 2567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mUpgradeButtonDivider:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2568
    :cond_62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoiceText:Landroid/widget/TextView;

    if-eqz v2, :cond_63

    .line 2569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoiceText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2571
    :cond_63
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 2572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoice:Landroid/widget/ImageView;

    if-eqz v2, :cond_64

    .line 2573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHDVoice:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2576
    :cond_64
    const-string v2, "ims_conference_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyVCCallButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_25

    .line 2578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyVCCallButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mModifyVCCallButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_10

    .line 2589
    :cond_65
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_11

    .line 2601
    :cond_66
    const/4 v8, 0x0

    .line 2602
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 2603
    const/4 v2, 0x2

    if-ne v6, v2, :cond_68

    .line 2605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_67

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-eqz v2, :cond_67

    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_67

    const-string v2, "support_lgt_multi_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_67

    .line 2610
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    .line 2623
    :goto_15
    if-nez v8, :cond_6b

    .line 2624
    const-string v2, "displayMainCallStatus: connection is null, using default values."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2629
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 2631
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    sget v5, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_12

    .line 2612
    :cond_67
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    goto :goto_15

    .line 2614
    :cond_68
    const/4 v2, 0x1

    if-eq v6, v2, :cond_69

    const/4 v2, 0x3

    if-eq v6, v2, :cond_69

    const/4 v2, 0x5

    if-ne v6, v2, :cond_6a

    .line 2617
    :cond_69
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    goto :goto_15

    .line 2620
    :cond_6a
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_15

    .line 2633
    :cond_6b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - CONN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2635
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 2636
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v5

    .line 2641
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v9

    .line 2642
    instance-of v2, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_75

    .line 2643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v2, v9

    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v3, v2}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v3

    .line 2651
    :goto_16
    const/4 v2, 0x2

    if-ne v6, v2, :cond_88

    .line 2652
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v6

    .line 2653
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 2654
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v10

    .line 2655
    const/4 v2, 0x0

    .line 2656
    instance-of v6, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v6, :cond_76

    move-object v2, v9

    .line 2657
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2662
    :cond_6c
    :goto_17
    const-string v6, "usa_cdma_smc_fac_req"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 2663
    if-eqz v7, :cond_6e

    .line 2664
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v6

    .line 2665
    if-eqz v2, :cond_6e

    sget v11, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-eq v6, v11, :cond_6d

    sget v11, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne v6, v11, :cond_6e

    .line 2667
    :cond_6d
    iput v6, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2672
    :cond_6e
    if-eqz v2, :cond_88

    .line 2673
    if-eqz v7, :cond_6f

    iget-object v6, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6f

    .line 2676
    const/4 v3, 0x1

    .line 2678
    :cond_6f
    if-eqz v10, :cond_87

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 2681
    const/4 v2, 0x1

    .line 2692
    :goto_18
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 2693
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    .line 2696
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "com.cequint.ecid.testRoaming"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 2698
    const/4 v10, 0x1

    if-ne v7, v10, :cond_70

    .line 2699
    const/4 v3, 0x1

    .line 2703
    :cond_70
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v6

    .line 2705
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bIsRoaming = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " bDataRoamingEnabled = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2708
    if-eqz v2, :cond_7a

    .line 2709
    const-string v2, "- displayMainCallStatus: starting CallerInfo query..."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2712
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v2, v8, v0, v8}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v7

    .line 2716
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    .line 2717
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    .line 2718
    if-eqz v2, :cond_71

    iget-object v9, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v9, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 2720
    iget-object v2, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2724
    iget-object v2, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v9

    iput v9, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2725
    iget-object v2, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v9

    iput v9, v2, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2729
    :cond_71
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    .line 2730
    const-string v9, "updated_calling_name_presentation"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_72

    if-eqz v2, :cond_72

    iget-object v9, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v9, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_72

    iget-object v9, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v9, v9, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 2734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- contactExists : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v9, v9, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 2735
    iget-object v2, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v2, :cond_72

    .line 2736
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    iget-object v2, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_77

    .line 2743
    :cond_72
    :goto_19
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_73

    const-string v2, "cityid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 2745
    :cond_73
    iget-object v9, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v12, 0x1

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v13

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v14

    const/4 v15, 0x1

    if-nez v6, :cond_78

    const/4 v2, 0x1

    :goto_1a
    and-int v16, v3, v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v17

    move-object/from16 v11, p0

    move-object/from16 v19, v8

    invoke-static/range {v9 .. v19}, Lcom/android/phone/EcidClient;->sendLookupQueryToService(Ljava/lang/Object;Landroid/app/Activity;Lcom/android/phone/CallCard;IZZZZJLcom/android/internal/telephony/Connection;)Z

    .line 2750
    :cond_74
    iget-object v3, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v2, :cond_79

    const/4 v6, 0x1

    :goto_1b
    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_12

    .line 2646
    :cond_75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v2, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v3

    goto/16 :goto_16

    .line 2658
    :cond_76
    instance-of v6, v9, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v6, :cond_6c

    move-object v2, v9

    .line 2659
    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_17

    .line 2738
    :cond_77
    iget-object v2, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v9, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v9, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_19

    .line 2745
    :cond_78
    const/4 v2, 0x0

    goto :goto_1a

    .line 2750
    :cond_79
    const/4 v6, 0x0

    goto :goto_1b

    .line 2753
    :cond_7a
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, "cityid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 2756
    :cond_7b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v12, 0x1

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v13

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v14

    const/4 v15, 0x1

    if-nez v6, :cond_83

    const/4 v2, 0x1

    :goto_1c
    and-int v16, v3, v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v17

    move-object/from16 v11, p0

    move-object/from16 v19, v8

    invoke-static/range {v9 .. v19}, Lcom/android/phone/EcidClient;->sendLookupQueryToService(Ljava/lang/Object;Landroid/app/Activity;Lcom/android/phone/CallCard;IZZZZJLcom/android/internal/telephony/Connection;)Z

    .line 2765
    :cond_7c
    const-string v2, "- displayMainCallStatus: using data we already have..."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2766
    instance-of v2, v9, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_84

    .line 2767
    check-cast v9, Lcom/android/internal/telephony/CallerInfo;

    .line 2768
    const-string v2, "feature_ltn_notipopup_when_number_changed"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->ismShowNotiPopup()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 2769
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2770
    iget-object v3, v9, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2771
    invoke-virtual {v9}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v6

    if-nez v6, :cond_7d

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v6

    if-nez v6, :cond_7d

    if-eqz v2, :cond_7d

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    .line 2773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1040796

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->displayToast(Ljava/lang/String;)V

    .line 2774
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/CallCard;->setmShowNotiPopup(Z)V

    .line 2777
    :cond_7d
    const-string v2, "feature_marvell_dsds"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7e

    const-string v2, "update_user_data_diff_name"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 2782
    :cond_7e
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2783
    iget-object v3, v9, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2784
    invoke-virtual {v9}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v6

    if-nez v6, :cond_86

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v6

    if-nez v6, :cond_86

    if-eqz v2, :cond_86

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    .line 2786
    const-string v3, "- displayMainCallStatus: Phone number modified!!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2787
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 2788
    if-eqz v3, :cond_86

    .line 2790
    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 2795
    :goto_1d
    const-string v2, "one_line_greeting"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-static {}, Lcom/android/phone/PhoneUtils;->CheckDisplayPLettrering()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 2796
    :cond_7f
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2799
    :cond_80
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2800
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v3, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2802
    const-string v2, "cdnip_supplementary_service"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 2803
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    .line 2805
    :cond_81
    const-string v2, "visual_expression"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 2806
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    .line 2809
    :cond_82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- displayMainCallStatus: CNAP data from Connection: , CNAP name="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", Number/Name Presentation="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   ==> Got CallerInfo; updating display: ci = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2813
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_12

    .line 2756
    :cond_83
    const/4 v2, 0x0

    goto/16 :goto_1c

    .line 2814
    :cond_84
    instance-of v2, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_85

    .line 2815
    check-cast v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", Number Presentation="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", Name Presentation="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v3, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   ==> Got CallerInfoToken; updating display: ci = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2821
    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_12

    .line 2823
    :cond_85
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_12

    :cond_86
    move-object v3, v9

    goto/16 :goto_1d

    :cond_87
    move v2, v3

    goto/16 :goto_18

    :cond_88
    move v2, v3

    goto/16 :goto_18

    :cond_89
    move-object v4, v2

    goto/16 :goto_7

    :cond_8a
    move-object v4, v2

    goto/16 :goto_7

    .line 2173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const v10, 0x7f020204

    const/4 v2, 0x1

    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 4319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displaySecondaryCallStatus(call ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 4321
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isOtaCallInActiveState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4322
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4580
    :cond_1
    :goto_0
    return-void

    .line 4325
    :cond_2
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 4327
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 4330
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/CallCard;->isVideoCallWidgetVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4331
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 4336
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    if-eqz v0, :cond_5

    .line 4337
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v0}, Lcom/android/phone/InCallContactPhoto;->updateSetImageDrawable()V

    .line 4340
    :cond_5
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 4342
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4343
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    move v1, v0

    .line 4347
    :goto_1
    sget-object v0, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 4565
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4571
    :goto_2
    if-ne v1, v9, :cond_1

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4572
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 4574
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mConnectionIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 4575
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4576
    iget-object v0, p0, Lcom/android/phone/CallCard;->mConnectionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 4345
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 4355
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showSecondaryCallInfo()V

    .line 4357
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4358
    const-string v0, "==> conference call."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 4359
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090020

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4360
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v2, 0x7f020201

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 4365
    :cond_7
    const-string v0, "==> NOT a conf call; call startGetCallerInfo..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 4366
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v0, p2, p0, v4}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 4369
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v5, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4371
    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4372
    iget-object v0, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4373
    iget-object v5, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_8

    iget-object v5, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v5, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v6, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v5, v6, :cond_8

    .line 4374
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v5, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    iget-object v6, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v0, v5, v6}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;ILcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v0

    .line 4376
    :cond_8
    iget-object v5, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4379
    :cond_9
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4380
    iget-object v0, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne v0, v2, :cond_f

    iget-object v0, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_f

    .line 4383
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4385
    iget-object v0, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    .line 4386
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v2, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4389
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallNumber:Landroid/widget/TextView;

    iget-object v2, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4418
    :cond_c
    :goto_3
    :try_start_0
    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/CallManager;->getCallDomain(Lcom/android/internal/telephony/Call;)I

    move-result v0

    if-ne v0, v9, :cond_d

    .line 4420
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryHDVoiceText:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 4421
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isWBMode(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4422
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryHDVoiceText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4426
    :goto_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4427
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 4428
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSecondaryHDVoiceText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, -0x1

    :goto_5
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 4429
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4437
    :cond_d
    :goto_6
    :try_start_1
    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4438
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryHDVoice:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 4439
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/CallManager;->getCallDomain(Lcom/android/internal/telephony/Call;)I

    move-result v0

    if-ne v0, v9, :cond_16

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isWBMode(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4440
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryHDVoice:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4444
    :goto_7
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4445
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 4446
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSecondaryHDVoice:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, -0x1

    :goto_8
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 4447
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4460
    :cond_e
    :goto_9
    iget-boolean v0, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v0, :cond_18

    .line 4461
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    iget-object v2, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto/16 :goto_2

    .line 4392
    :cond_f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallNumber:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 4394
    :cond_10
    const-string v0, "service_callmessage"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneUtils;->CheckDisplayPLettrering()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4395
    iget-object v0, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_12

    .line 4396
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4397
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallNumber:Landroid/widget/TextView;

    iget-object v5, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4402
    :goto_a
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 4403
    const/4 v0, 0x0

    .line 4404
    if-eqz v5, :cond_11

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v6

    if-ne v6, v2, :cond_11

    .line 4405
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    .line 4407
    :cond_11
    if-eqz v0, :cond_13

    .line 4408
    iget-object v5, p0, Lcom/android/phone/CallCard;->mSecondPLetteringTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4409
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondPLettering:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4410
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondPLetteringTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_3

    .line 4399
    :cond_12
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallNumber:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    .line 4412
    :cond_13
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondPLettering:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    .line 4413
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondPLettering:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 4424
    :cond_14
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryHDVoiceText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 4432
    :catch_0
    move-exception v0

    .line 4433
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videocall CallStateException e"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 4428
    :cond_15
    const/high16 v2, 0x4382

    :try_start_3
    iget v3, p0, Lcom/android/phone/CallCard;->mDensity:F
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto/16 :goto_5

    .line 4442
    :cond_16
    :try_start_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryHDVoice:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_4
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_7

    .line 4450
    :catch_1
    move-exception v0

    .line 4451
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videocall CallStateException e"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 4446
    :cond_17
    const/high16 v2, 0x4382

    :try_start_5
    iget v3, p0, Lcom/android/phone/CallCard;->mDensity:F
    :try_end_5
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_5 .. :try_end_5} :catch_1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto/16 :goto_8

    .line 4463
    :cond_18
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v10}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_2

    .line 4474
    :pswitch_1
    if-ne v1, v9, :cond_20

    .line 4475
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showSecondaryCallInfo()V

    .line 4476
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v4, :cond_1c

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4479
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getCdmaCwActiveConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 4480
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getCdmaCwActiveConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 4485
    :goto_b
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v4, v0, p0, v5}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 4488
    iget-object v0, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4491
    iget-object v5, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_19

    iget-object v5, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v5, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v6, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v5, v6, :cond_19

    .line 4493
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    move v3, v2

    .line 4498
    :cond_19
    if-nez v3, :cond_1b

    iget-boolean v2, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_1b

    .line 4499
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    iget-object v3, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    .line 4503
    :goto_c
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 4482
    :cond_1a
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_b

    .line 4501
    :cond_1b
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v10}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_c

    .line 4505
    :cond_1c
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 4506
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v9, :cond_1e

    .line 4511
    const-string v0, "usa_cdma_concept"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4512
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09018d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4515
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v10}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_2

    .line 4519
    :cond_1e
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 4520
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v4, v0, p0, v5}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 4526
    iget-object v5, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 4528
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4530
    if-eqz v5, :cond_21

    iget v6, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v7, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v6, v7, :cond_21

    .line 4532
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    move v11, v2

    move-object v2, v0

    move v0, v11

    .line 4536
    :goto_d
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4544
    if-nez v0, :cond_1f

    iget-boolean v0, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v0, :cond_1f

    .line 4545
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v5}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto/16 :goto_2

    .line 4547
    :cond_1f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v10}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_2

    .line 4554
    :cond_20
    const-string v0, "CallCard"

    const-string v3, "displaySecondaryCallStatus: ACTIVE state on non-CDMA device"

    invoke-static {v0, v3, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4555
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    :cond_21
    move-object v2, v0

    move v0, v3

    goto :goto_d

    .line 4347
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private formatNameForConference()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 4867
    .line 4876
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v0

    .line 4877
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    .line 4878
    iget-object v1, v0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    .line 4879
    iget v0, v0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogCount:I

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    move-object v0, v1

    .line 4889
    :goto_0
    sget-boolean v1, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formatNameForConference :: firstCaller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  noOfRemParticipants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 4891
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4930
    :goto_1
    return-object v8

    .line 4881
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4882
    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getAliveParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v1

    .line 4883
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 4884
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4885
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v6, v1

    goto :goto_0

    .line 4895
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4898
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4899
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4900
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4901
    if-eqz v1, :cond_a

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4902
    const-string v0, "display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 4908
    :goto_2
    if-eqz v1, :cond_3

    .line 4909
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4916
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090774

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4917
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 4918
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 4924
    :goto_4
    if-eqz v6, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-nez v2, :cond_9

    move-object v0, v1

    :cond_4
    :goto_5
    move-object v8, v0

    .line 4930
    goto/16 :goto_1

    .line 4904
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 4905
    :goto_6
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4906
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inside formatNameForConference : Exception !!! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4908
    if-eqz v1, :cond_5

    .line 4909
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v8

    .line 4914
    goto :goto_3

    .line 4908
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_7
    if-eqz v1, :cond_6

    .line 4909
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4913
    :cond_6
    throw v0

    .line 4919
    :cond_7
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 4920
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    goto :goto_4

    :cond_8
    move-object v8, v1

    .line 4922
    goto/16 :goto_1

    .line 4926
    :cond_9
    if-nez v0, :cond_4

    move-object v0, v8

    goto :goto_5

    .line 4908
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 4904
    :catch_1
    move-exception v0

    goto :goto_6

    :cond_a
    move-object v0, v8

    goto/16 :goto_2

    :cond_b
    move v6, v7

    move-object v0, v8

    goto/16 :goto_0
.end method

.method private formatNumberForConference()Ljava/lang/String;
    .locals 11

    .prologue
    const v9, 0x7f090774

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4823
    .line 4828
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v0

    .line 4829
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v4, :cond_2

    .line 4830
    iget-object v1, v0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    .line 4831
    iget v0, v0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogCount:I

    add-int/lit8 v0, v0, -0x1

    .line 4841
    :goto_0
    sget-boolean v4, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "formatNumberForConference :: firstCaller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  noOfRemParticipants="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 4843
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4863
    :cond_1
    :goto_1
    return-object v3

    .line 4833
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4834
    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getAliveParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v1

    .line 4835
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 4836
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4837
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v10, v1

    move-object v1, v0

    move v0, v10

    goto :goto_0

    .line 4847
    :cond_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4848
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v9, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4850
    iget-object v5, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 4851
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 4857
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-nez v4, :cond_6

    .line 4858
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v3, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 4852
    :cond_4
    iget-object v5, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 4853
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v3, v4

    .line 4855
    goto/16 :goto_1

    .line 4859
    :cond_6
    if-eqz v1, :cond_1

    move-object v3, v1

    .line 4860
    goto/16 :goto_1

    :cond_7
    move v0, v2

    move-object v1, v3

    goto/16 :goto_0
.end method

.method private getAssistedDialingNumber()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 7041
    :try_start_0
    const-class v3, Landroid/telephony/PhoneNumberUtils;

    const-string v4, "isAssistedDialingNumber"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 7042
    .local v1, isAssisted:Ljava/lang/reflect/Field;
    const-string v3, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAssisted.getBoolean"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7043
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 7049
    .end local v1           #isAssisted:Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 7044
    :catch_0
    move-exception v0

    .line 7045
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const-string v3, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoSuchFieldException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7047
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 7048
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalAccessException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const v0, 0x7f09018a

    .line 4614
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 4617
    if-nez v1, :cond_1

    .line 4618
    const-string v1, "getCallFailedString: connection is null, using default values."

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 4713
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 4624
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 4627
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_VoiceCall_EnableDetailCallEndCause"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4628
    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->getCallFailedStringLTN(Lcom/android/internal/telephony/Connection$DisconnectCause;)Ljava/lang/String;

    move-result-object v1

    .line 4629
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 4630
    goto :goto_1

    .line 4645
    :cond_2
    sget-object v1, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4647
    :pswitch_0
    const v0, 0x7f09000c

    .line 4648
    goto :goto_0

    .line 4651
    :pswitch_1
    const v0, 0x7f09000d

    .line 4652
    goto :goto_0

    .line 4655
    :pswitch_2
    const v0, 0x7f09000e

    .line 4656
    goto :goto_0

    .line 4659
    :pswitch_3
    const v0, 0x7f09000f

    .line 4660
    goto :goto_0

    .line 4663
    :pswitch_4
    const v0, 0x7f090010

    .line 4664
    goto :goto_0

    .line 4667
    :pswitch_5
    const v0, 0x7f090011

    .line 4668
    goto :goto_0

    .line 4671
    :pswitch_6
    const v0, 0x7f090013

    .line 4672
    goto :goto_0

    .line 4675
    :pswitch_7
    const v0, 0x7f090012

    .line 4676
    goto :goto_0

    .line 4680
    :pswitch_8
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4684
    const v0, 0x7f090014

    .line 4685
    goto :goto_0

    .line 4688
    :pswitch_9
    const v0, 0x7f090015

    .line 4689
    goto :goto_0

    .line 4692
    :pswitch_a
    const v0, 0x7f090016

    .line 4693
    goto :goto_0

    .line 4696
    :pswitch_b
    const v0, 0x7f090017

    .line 4697
    goto :goto_0

    .line 4700
    :pswitch_c
    const v0, 0x7f090018

    .line 4701
    goto :goto_0

    .line 4705
    :pswitch_d
    const v0, 0x7f09001f

    .line 4706
    goto :goto_0

    .line 4645
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getCallFailedStringLTN(Lcom/android/internal/telephony/Connection$DisconnectCause;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 4718
    sget-object v0, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4818
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4720
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090632

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4722
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090633

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4724
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090634

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4726
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090635

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4728
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090636

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4730
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090637

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4732
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090638

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4734
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090639

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4736
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09063a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4738
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09063b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4740
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09063c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4742
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09063d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4744
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09063e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4746
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09063f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4748
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090640

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4750
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090641

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4752
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090642

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4754
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090643

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4756
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090644

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4758
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090645

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4760
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090646

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4762
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090647

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4764
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090648

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4766
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090649

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4768
    :pswitch_19
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09064a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4770
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09064b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4772
    :pswitch_1b
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09064c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4774
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09064d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4776
    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09064e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4778
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09064f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4780
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090650

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4782
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090651

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4784
    :pswitch_21
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090652

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4786
    :pswitch_22
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090653

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4788
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090654

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4790
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090655

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4792
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090656

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4794
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090657

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4796
    :pswitch_27
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090658

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4798
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090659

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4800
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09065a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4802
    :pswitch_2a
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09065b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4804
    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09065c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4806
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09065d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4808
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09065e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4810
    :pswitch_2e
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09065f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4812
    :pswitch_2f
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090660

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4814
    :pswitch_30
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090661

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4816
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090662

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4718
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method

.method private getCountryCodeLocator(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x5

    const/4 v6, 0x0

    .line 7306
    .line 7307
    const/4 v0, 0x0

    .line 7313
    if-eqz p1, :cond_3

    .line 7314
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7315
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 7317
    const-string v3, "+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-lt v2, v4, :cond_5

    .line 7319
    const/4 v0, 0x3

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7320
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7321
    if-nez v0, :cond_0

    .line 7322
    const/4 v0, 0x4

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7323
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7325
    :cond_0
    if-nez v0, :cond_1

    .line 7326
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7327
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7329
    :cond_1
    if-nez v0, :cond_2

    .line 7330
    const/4 v0, 0x2

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7331
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7358
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCountryCodeLocator original number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "search number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " country :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 7360
    :cond_3
    if-nez v0, :cond_4

    .line 7361
    const-string v0, ""

    .line 7363
    :cond_4
    return-object v0

    .line 7335
    :cond_5
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->startCheckCurrentIddValue(I)Ljava/lang/String;

    move-result-object v3

    .line 7336
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 7337
    if-lez v4, :cond_2

    add-int/lit8 v5, v4, 0x4

    if-lt v2, v5, :cond_2

    .line 7338
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 7340
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7341
    add-int/lit8 v0, v4, 0x2

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7342
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7343
    if-nez v0, :cond_6

    .line 7344
    add-int/lit8 v0, v4, 0x3

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7345
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7347
    :cond_6
    if-nez v0, :cond_7

    .line 7348
    add-int/lit8 v0, v4, 0x4

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7349
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7351
    :cond_7
    if-nez v0, :cond_2

    .line 7352
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7353
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDefaultImageResource(Lcom/android/internal/telephony/Call;)I
    .locals 8
    .parameter

    .prologue
    const v3, 0x7f0200d1

    const v2, 0x7f02008b

    const/4 v7, 0x1

    const v1, 0x7f020204

    const/4 v6, 0x0

    .line 6265
    .line 6266
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6267
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6268
    const v0, 0x7f020201

    .line 6292
    :goto_0
    sget-object v4, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 6320
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 6323
    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    .line 6326
    :cond_0
    :goto_2
    return v1

    .line 6269
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 6270
    :cond_2
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 6272
    const v0, 0x7f02020f

    goto :goto_0

    .line 6274
    :cond_3
    const v0, 0x7f020203

    goto :goto_0

    :cond_4
    move v0, v1

    .line 6276
    goto :goto_0

    .line 6279
    :cond_5
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6280
    const v0, 0x7f020201

    goto :goto_0

    :cond_6
    move v0, v1

    .line 6282
    goto :goto_0

    .line 6295
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnimationList:[[I

    aget-object v0, v0, v7

    aget v1, v0, v6

    .line 6296
    iput v7, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    .line 6298
    const-string v0, "caller_animation_small_images"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6299
    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v1, v2

    .line 6300
    goto :goto_2

    :cond_7
    move v1, v3

    .line 6302
    goto :goto_2

    .line 6308
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnimationList:[[I

    aget-object v0, v0, v6

    aget v1, v0, v6

    .line 6309
    iput v6, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    .line 6311
    const-string v0, "caller_animation_small_images"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6312
    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v1, v2

    .line 6313
    goto :goto_2

    :cond_8
    move v1, v3

    .line 6315
    goto :goto_2

    :cond_9
    move v1, v0

    goto :goto_1

    .line 6292
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 6427
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 6429
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6430
    const-string v1, "disable_format_number"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6438
    :goto_0
    const v1, 0x7f09018f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6439
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6433
    :cond_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6436
    :cond_1
    const v0, 0x7f090007

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getIddStr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6809
    const/4 v1, 0x0

    .line 6811
    .local v1, iddStr:Ljava/lang/String;
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6820
    :goto_0
    return-object v1

    .line 6817
    :catch_0
    move-exception v0

    .line 6818
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Failed to iTelephony.getCdmaCurrIdd() due to remote exception"

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 6774
    const/4 v0, 0x0

    .line 6777
    if-eqz p1, :cond_1

    .line 6778
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6780
    const-string v1, "feature_chn_duos_cdma_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6782
    invoke-direct {p0}, Lcom/android/phone/CallCard;->getIddStr()Ljava/lang/String;

    move-result-object v1

    .line 6784
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6785
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 6787
    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6788
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 6792
    :cond_0
    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6793
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 6795
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getNumberProvinceAndCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 6800
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneNumberLocator original number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "search number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " city :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 6802
    :cond_1
    if-nez v0, :cond_2

    .line 6803
    const-string v0, ""

    .line 6805
    :cond_2
    return-object v0

    .line 6797
    :catch_0
    move-exception v0

    .line 6798
    const-string v0, ""

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private getSdnQuery()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6954
    const-string v0, "CallCard"

    const-string v3, "getSdnQuery() :: starting an async query"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6956
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v6, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-nez v0, :cond_1

    .line 6958
    :cond_0
    sput v1, Lcom/android/phone/CallCard;->mSDNCount:I

    .line 6963
    :goto_0
    return-void

    .line 6962
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mQueryHandler:Lcom/android/phone/CallCard$QueryHandler;

    const-string v3, "content://icc/sdn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "name"

    aput-object v5, v4, v1

    const-string v5, "number"

    aput-object v5, v4, v6

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/CallCard$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hideCallBanner()V
    .locals 3

    .prologue
    .line 3244
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3245
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3246
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3247
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3248
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3249
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3250
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3252
    :cond_1
    return-void
.end method

.method private hideMemoRecInfo()V
    .locals 2

    .prologue
    .line 7232
    const-string v0, "hideMemoRecInfo"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 7233
    iget-object v0, p0, Lcom/android/phone/CallCard;->memoRecInfo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->memoRecInfo:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7234
    :cond_0
    return-void
.end method

.method private hideRecInfo()V
    .locals 2

    .prologue
    .line 6756
    const-string v0, "hideRecInfo"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 6757
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6758
    :cond_0
    return-void
.end method

.method private hideVideoCallPhotoView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v0, 0x0

    .line 2910
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v2, v1

    .line 2911
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 2913
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2916
    iget-object v1, p0, Lcom/android/phone/CallCard;->mVtQcifElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v0

    .line 2923
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2928
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2929
    return-void

    .line 2918
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2919
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2920
    iget-object v3, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    move v1, v2

    goto :goto_0
.end method

.method private hideVideoCallWidgets()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3132
    sget-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Hide videocall widget"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3133
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallCard;->isVideoCallWidgetVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3135
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_5

    .line 3139
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 3142
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3144
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallPanel;->setVisibility(I)V

    .line 3147
    :cond_3
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3148
    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->displayElapsedTimeForTablet(Z)V

    .line 3150
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showCallBanner()V

    .line 3151
    return-void

    .line 3141
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    goto :goto_0
.end method

.method private initImageCache()V
    .locals 3

    .prologue
    .line 6242
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 6248
    :goto_0
    return-void

    .line 6245
    :cond_0
    new-instance v0, Lcom/android/phone/ImageCache$ImageCacheParams;

    invoke-direct {v0}, Lcom/android/phone/ImageCache$ImageCacheParams;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

    .line 6246
    iget-object v0, p0, Lcom/android/phone/CallCard;->mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3ea8f5c3

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 6247
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallCard;->mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

    invoke-static {v0, v1}, Lcom/android/phone/ImageCache;->findOrCreateCache(Landroid/app/FragmentManager;Lcom/android/phone/ImageCache$ImageCacheParams;)Lcom/android/phone/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mImageCache:Lcom/android/phone/ImageCache;

    goto :goto_0
.end method

.method private initVideoCall()V
    .locals 2

    .prologue
    .line 3258
    iget-boolean v0, p0, Lcom/android/phone/CallCard;->isVTinitialized:Z

    if-nez v0, :cond_1

    .line 3259
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->onCallInitiating()V

    .line 3260
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3261
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3262
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 3263
    sget-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Do not run switchInVideoCallAudio for VideoConference"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3270
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallCard;->isVTinitialized:Z

    .line 3272
    :cond_1
    return-void

    .line 3265
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/CallCard;->switchInVideoCallAudio()V

    goto :goto_0

    .line 3268
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/CallCard;->switchInVideoCallAudio()V

    goto :goto_0
.end method

.method private isVideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .parameter "call"

    .prologue
    .line 3036
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method private isVideoCallWidgetVisible()Z
    .locals 1

    .prologue
    .line 3301
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ismShowNotiPopup()Z
    .locals 1

    .prologue
    .line 7368
    sget-boolean v0, Lcom/android/phone/CallCard;->mShowNotiPopup:Z

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 6699
    const-string v0, "CallCard"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6700
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 6703
    const-string v0, "CallCard"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 6704
    return-void
.end method

.method private resetAssistedDialingNumber()V
    .locals 5

    .prologue
    .line 7054
    const-string v2, "CallCard"

    const-string v3, "resetAssistedDialingNumber"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7056
    :try_start_0
    const-class v2, Landroid/telephony/PhoneNumberUtils;

    const-string v3, "isAssistedDialingNumber"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 7057
    .local v1, isAssisted:Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7063
    .end local v1           #isAssisted:Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 7058
    :catch_0
    move-exception v0

    .line 7059
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchFieldException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7060
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 7061
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalAccessException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCallCardAnimation()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 490
    iget v2, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 533
    :goto_0
    return-void

    .line 494
    :cond_0
    iget v2, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    iget-object v3, p0, Lcom/android/phone/CallCard;->mAnimationList:[[I

    iget v4, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    aget-object v3, v3, v4

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_1

    .line 495
    iput v0, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    .line 498
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 502
    iget v2, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCommon;->isAirMotionOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 506
    :cond_2
    if-eqz v0, :cond_4

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    aget-object v0, v0, v2

    iget v2, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    aget-object v0, v0, v2

    if-nez v0, :cond_3

    .line 509
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    aget-object v0, v0, v2

    iget v2, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallCard;->mAnimationList:[[I

    iget v5, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    aget-object v4, v4, v5

    iget v5, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 513
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallContactPhoto;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    aget-object v0, v0, v2

    iget v2, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    aget-object v0, v0, v2

    if-nez v0, :cond_5

    .line 525
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mAnimationList:[[I

    iget v3, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallContactPhoto;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 532
    :cond_5
    :goto_2
    iget v0, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    goto/16 :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->resetCallCardAnimation()V

    .line 516
    const-string v2, "getBitmap - outOfMemory exception"

    invoke-direct {p0, v2, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 517
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 526
    :catch_1
    move-exception v0

    .line 527
    const-string v2, "setImageResource - outOfMemory exception"

    invoke-direct {p0, v2, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 528
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_2
.end method

.method private setElapsedTimeTitle(ZZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4284
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4285
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0904b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4286
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0904af

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4287
    const-string v3, ""

    .line 4288
    iget-boolean v3, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 4292
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4293
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4295
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4296
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4297
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4310
    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object v0, v1

    .line 4291
    goto :goto_0

    .line 4293
    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    .line 4299
    :cond_3
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    .line 4300
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 4302
    :cond_4
    const-string v0, "melius3gduosctc"

    sget-object v1, Lcom/android/phone/CallCard;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "feature_wvga"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4303
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/16 v1, 0x82

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 4305
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/16 v1, 0x104

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2
.end method

.method private setSmallCallCardAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 547
    iget v0, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 581
    :goto_0
    return-void

    .line 551
    :cond_0
    iget v0, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    iget-object v1, p0, Lcom/android/phone/CallCard;->mAnimationList:[[I

    iget v2, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    aget-object v1, v1, v2

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 552
    iput v3, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnimationList:[[I

    iget v1, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    aget v2, v0, v1

    .line 557
    const/4 v1, 0x0

    .line 558
    iget-object v0, p0, Lcom/android/phone/CallCard;->mImageCache:Lcom/android/phone/ImageCache;

    if-eqz v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/android/phone/CallCard;->mImageCache:Lcom/android/phone/ImageCache;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 563
    :cond_2
    if-nez v1, :cond_3

    .line 564
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 566
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInset:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 567
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInset:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 568
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInset:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 576
    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallCard;->mImageCache:Lcom/android/phone/ImageCache;

    if-eqz v0, :cond_4

    .line 577
    iget-object v0, p0, Lcom/android/phone/CallCard;->mImageCache:Lcom/android/phone/ImageCache;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 580
    :cond_4
    iget v0, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    goto :goto_0

    .line 569
    :catch_0
    move-exception v0

    .line 570
    const-string v3, "setImageResource - outOfMemory exception"

    invoke-direct {p0, v3, v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 571
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 572
    :catch_1
    move-exception v0

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImageResource - exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public static setmShowNotiPopup(Z)V
    .locals 0
    .parameter "mShowNotiPopup"

    .prologue
    .line 7372
    sput-boolean p0, Lcom/android/phone/CallCard;->mShowNotiPopup:Z

    .line 7373
    return-void
.end method

.method private showAnimationImage(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 5
    .parameter "call"
    .parameter "view"
    .parameter "ci"

    .prologue
    const/16 v4, 0x82

    .line 6223
    if-eqz p3, :cond_0

    if-eqz p3, :cond_2

    iget-boolean v1, p3, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_2

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 6224
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getDefaultImageResource(Lcom/android/internal/telephony/Call;)I

    move-result v0

    .line 6226
    .local v0, resource:I
    iget v1, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 6227
    invoke-direct {p0, p2, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 6229
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6230
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6233
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CallCard;->initImageCache()V

    .line 6234
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6235
    const/4 v1, 0x1

    .line 6238
    .end local v0           #resource:I
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x7f020204

    .line 6336
    if-eqz p2, :cond_7

    iget-boolean v0, p2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_7

    .line 6337
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 6338
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 6361
    :goto_0
    const/4 v0, 0x1

    .line 6363
    :goto_1
    return v0

    .line 6341
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6342
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 6346
    :goto_2
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6347
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6348
    const v0, 0x7f020201

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 6344
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_2

    .line 6349
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 6350
    :cond_3
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 6352
    const v0, 0x7f02020f

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 6354
    :cond_4
    const v0, 0x7f020203

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 6356
    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 6359
    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 6363
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private showCallBanner()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 3214
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3215
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3216
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3217
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 3218
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3219
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3221
    :cond_0
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3223
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3224
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3225
    :cond_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_4

    .line 3226
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVtQcifElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3227
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 3228
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3241
    :cond_3
    :goto_0
    return-void

    .line 3230
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVtQcifElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3232
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 3233
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3234
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3235
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3236
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private final showImage(Landroid/widget/ImageView;I)V
    .locals 3
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 6368
    if-lez p2, :cond_0

    .line 6370
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6376
    :cond_0
    :goto_0
    return-void

    .line 6371
    :catch_0
    move-exception v0

    .line 6372
    .local v0, exception:Ljava/lang/OutOfMemoryError;
    const-string v1, "showImage - outOfMemory exception"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 6373
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method private final showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "bitmap"

    .prologue
    .line 6379
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 6380
    return-void
.end method

.method private final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 6389
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6390
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 6392
    const-string v1, "common_volte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6393
    iget-object v1, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallPanel;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 6394
    if-nez v0, :cond_0

    .line 6396
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6397
    invoke-static {p1}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 6398
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 6420
    :goto_0
    return-void

    .line 6400
    :cond_0
    invoke-static {p1, v0, p2}, Lcom/android/phone/AnimationUtils;->startCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6401
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6404
    :cond_1
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6405
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6407
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6410
    :cond_3
    if-nez v0, :cond_4

    .line 6412
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6413
    invoke-static {p1}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 6414
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6416
    :cond_4
    invoke-static {p1, v0, p2}, Lcom/android/phone/AnimationUtils;->startCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6417
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showMemoRecInfo()V
    .locals 2

    .prologue
    .line 7224
    const-string v0, "showMemoRecInfo"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 7225
    iget-object v0, p0, Lcom/android/phone/CallCard;->memoRecInfo:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 7226
    iget-object v0, p0, Lcom/android/phone/CallCard;->memoRecInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7227
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->updateMemoRecordTime()V

    .line 7229
    :cond_0
    return-void
.end method

.method private showRecInfo()V
    .locals 2

    .prologue
    .line 6749
    const-string v0, "showRecInfo"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 6750
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6751
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6752
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->updateRecordTime()V

    .line 6754
    :cond_0
    return-void
.end method

.method private showSecondaryCallInfo()V
    .locals 2

    .prologue
    .line 4584
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4585
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 4586
    const v0, 0x7f0a007b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    .line 4588
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 4589
    const v0, 0x7f0a0078

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    .line 4597
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateButtonStateOutsideInCallTouchUi()V

    .line 4598
    return-void
.end method

.method private showVideoCallPhotoView()V
    .locals 9

    .prologue
    const v5, 0x7f0e0117

    const v8, 0x7f0e0110

    const v7, 0x7f0e00d1

    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 2932
    const-string v0, "showVideoCallPhotoView"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2934
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 2936
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 2937
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2939
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2940
    iget-object v1, p0, Lcom/android/phone/CallCard;->mVideoCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2941
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2942
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVtQcifElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3027
    :cond_1
    :goto_0
    return-void

    .line 2946
    :cond_2
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2948
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2949
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVtQcifElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2951
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_9

    .line 2952
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2953
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2954
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0107

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2955
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2974
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mVtQcifElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2975
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVtQcifElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2978
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    .line 2979
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 2981
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2982
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v6, :cond_d

    .line 2983
    iget-object v5, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_c

    .line 2984
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2985
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2986
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2988
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0106

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2989
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0111

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3004
    :goto_2
    iget-object v4, p0, Lcom/android/phone/CallCard;->mVideoCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    move v0, v1

    move v1, v2

    .line 3021
    :goto_4
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v2, v1, v0, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 3026
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2958
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2959
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1

    .line 2963
    :cond_8
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    .line 2965
    :cond_9
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2966
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1

    .line 2970
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1

    .line 2991
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e010c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2992
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e010d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2994
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0103

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2995
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 2998
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e010e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2999
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e010f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3001
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3002
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0112

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 3006
    :cond_d
    iget-object v5, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_f

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3008
    :cond_e
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3009
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    .line 3011
    :cond_f
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3012
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    .line 3016
    :cond_10
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3017
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 3018
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    move v1, v3

    goto/16 :goto_4
.end method

.method private showVideoCallWidgets()V
    .locals 2

    .prologue
    .line 3120
    sget-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "show videocall widget"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3121
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 3122
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallPanel;->setVisibility(I)V

    .line 3123
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->displayElapsedTimeForTablet(Z)V

    .line 3126
    :cond_1
    return-void
.end method

.method private startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    .line 7376
    .line 7378
    const/4 v0, 0x0

    .line 7380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7382
    const/16 v3, 0xae

    .line 7384
    const-string v4, "+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7392
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f080083

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 7393
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f080084

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 7394
    array-length v6, v5

    .line 7396
    const-string v1, "+1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    if-le v6, v3, :cond_3

    .line 7399
    const/16 v0, 0x85

    aget-object v0, v4, v0

    .line 7400
    const-string v1, "United States of America"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7401
    const-string v0, "USA"

    .line 7403
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7404
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7405
    const/16 v0, 0x86

    aget-object v0, v4, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7406
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7429
    :cond_1
    :goto_1
    return-object v0

    .line 7387
    :cond_2
    const-string v4, "+"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7388
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7389
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7410
    :cond_3
    const-string v1, "+7"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    if-le v6, v3, :cond_4

    .line 7413
    const/16 v0, 0x73

    aget-object v0, v4, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7414
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7415
    const/16 v0, 0x1a

    aget-object v0, v4, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7416
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 7420
    :cond_4
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 7421
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_1

    .line 7422
    if-eqz p1, :cond_5

    aget-object v2, v5, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7423
    aget-object v0, v4, v1

    goto :goto_1

    .line 7421
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private switchInVideoCallAudio()V
    .locals 2

    .prologue
    .line 3312
    sget-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "In switchInVideoCallAudio"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3316
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3317
    sget-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "Wired headset connected, not routing audio to speaker"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3347
    :cond_1
    :goto_0
    return-void

    .line 3325
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3327
    sget-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "Bluetooth connected, not routing audio to speaker"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3331
    :cond_3
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3332
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothWatchSingleConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3335
    :cond_4
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3336
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsIms;->setInitialSpeakerStateForVT(Landroid/content/Context;)V

    .line 3337
    sget-boolean v0, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    if-nez v0, :cond_5

    .line 3338
    sget-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "[switchInVideoCallAudio] mVideoSpeakerState is false. so return!!!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3346
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0
.end method

.method private updateAlreadyDisconnected(Lcom/android/internal/telephony/CallManager;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2090
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2093
    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2094
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2095
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mEndCallString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2097
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2098
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 2101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 2102
    return-void
.end method

.method private updateCallInfoLandscapeLayout(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 12
    .parameter

    .prologue
    const/4 v6, -0x1

    const/16 v11, 0xb

    const/4 v10, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1510
    const-string v0, "updateCallInfoLandscapeLayout"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 1512
    const-string v0, "ims_conference_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1513
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1514
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1515
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1516
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->getTouchUiWidth()I

    move-result v1

    .line 1517
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1519
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ==> callInfoLp.rightMargin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1521
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1524
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1526
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1527
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1528
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1531
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1533
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1534
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1535
    const v1, 0x7f0a0044

    invoke-virtual {v0, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1536
    invoke-virtual {v0, v11, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1537
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1539
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v0}, Lcom/android/phone/InCallContactPhoto;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1540
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1541
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallContactPhoto;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1676
    :cond_0
    :goto_0
    return-void

    .line 1548
    :cond_1
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1549
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1550
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1551
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_10

    .line 1552
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->getTouchUiWidth()I

    move-result v1

    .line 1553
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1555
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ==> callInfoLp.rightMargin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1557
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1568
    :cond_2
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v0, :cond_11

    move v0, v2

    .line 1570
    :goto_2
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1571
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    move v4, v1

    .line 1575
    :goto_3
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_13

    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v5, :cond_13

    move v5, v2

    .line 1578
    :goto_4
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0e01db

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v8, v1

    .line 1580
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0e01dd

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v7, v1

    .line 1582
    const-string v1, "enhanced_driving_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_27

    move v6, v3

    .line 1588
    :goto_5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1591
    if-eqz v6, :cond_14

    move v1, v7

    :goto_6
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1592
    if-eqz v6, :cond_15

    const/4 v1, 0x0

    :goto_7
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1593
    if-eqz v6, :cond_16

    div-int/lit8 v1, v8, 0x2

    :goto_8
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1595
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1598
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1600
    if-nez v6, :cond_3

    if-nez v4, :cond_3

    if-eqz v5, :cond_17

    :cond_3
    move v1, v7

    :goto_9
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1601
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1602
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1605
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1607
    iget v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1608
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1609
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1611
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1612
    iget v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v0, v9, v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1613
    const-string v0, "BANNER 2"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 1616
    :cond_4
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->mIsDockConnected:Z

    if-nez v0, :cond_5

    const-string v0, "hardkeyboardhidden_no"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1617
    :cond_5
    if-nez v6, :cond_6

    if-nez v4, :cond_6

    if-eqz v5, :cond_18

    .line 1618
    :cond_6
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1628
    :goto_a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1630
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1631
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVtQcifElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1632
    if-nez v6, :cond_7

    if-nez v4, :cond_7

    if-eqz v5, :cond_1c

    :cond_7
    const v1, 0x7f0a0044

    :goto_b
    invoke-virtual {v0, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1633
    const/16 v9, 0x9

    if-nez v6, :cond_8

    if-nez v4, :cond_8

    if-eqz v5, :cond_1d

    :cond_8
    move v1, v3

    :goto_c
    invoke-virtual {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1634
    iget-object v1, p0, Lcom/android/phone/CallCard;->mVtQcifElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1637
    :cond_9
    const-string v0, "service_callmessage"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1638
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPLettering:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1640
    if-nez v6, :cond_1e

    if-nez v4, :cond_1e

    if-nez v5, :cond_1e

    .line 1641
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    move v1, v8

    .line 1648
    :goto_d
    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1649
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPLettering:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1652
    :cond_a
    const-string v0, "usa_geo_description_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "cityid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1656
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1657
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->mIsDockConnected:Z

    if-nez v1, :cond_c

    const-string v1, "hardkeyboardhidden_no"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1658
    :cond_c
    if-nez v6, :cond_d

    if-nez v4, :cond_d

    if-eqz v5, :cond_1f

    .line 1659
    :cond_d
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1668
    :goto_e
    iget-object v1, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1670
    :cond_e
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 1672
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1673
    if-nez v4, :cond_f

    if-eqz v5, :cond_25

    :cond_f
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    :goto_f
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1674
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1559
    :cond_10
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1561
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1562
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_11
    move v0, v3

    .line 1568
    goto/16 :goto_2

    .line 1573
    :cond_12
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    move v4, v1

    goto/16 :goto_3

    :cond_13
    move v5, v3

    .line 1575
    goto/16 :goto_4

    :cond_14
    move v1, v3

    .line 1591
    goto/16 :goto_6

    .line 1592
    :cond_15
    const/high16 v1, 0x3f80

    goto/16 :goto_7

    :cond_16
    move v1, v3

    .line 1593
    goto/16 :goto_8

    :cond_17
    move v1, v8

    .line 1600
    goto/16 :goto_9

    .line 1621
    :cond_18
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f0e0001

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_a

    .line 1626
    :cond_19
    if-nez v6, :cond_1a

    if-nez v4, :cond_1a

    if-eqz v5, :cond_1b

    :cond_1a
    move v0, v3

    :goto_10
    invoke-virtual {v1, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_a

    :cond_1b
    move v0, v2

    goto :goto_10

    :cond_1c
    move v1, v3

    .line 1632
    goto/16 :goto_b

    :cond_1d
    move v1, v2

    .line 1633
    goto/16 :goto_c

    .line 1644
    :cond_1e
    const v1, 0x7f0a0053

    invoke-virtual {v0, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1645
    iget-object v1, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    if-eqz v1, :cond_26

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1646
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f0e01cc

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto/16 :goto_d

    .line 1662
    :cond_1f
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_e

    .line 1665
    :cond_20
    if-nez v6, :cond_21

    if-nez v4, :cond_21

    if-eqz v5, :cond_22

    :cond_21
    move v8, v7

    :cond_22
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1666
    if-nez v6, :cond_23

    if-nez v4, :cond_23

    if-eqz v5, :cond_24

    :cond_23
    move v2, v3

    :cond_24
    invoke-virtual {v0, v11, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_e

    .line 1673
    :cond_25
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto/16 :goto_f

    :cond_26
    move v1, v3

    goto/16 :goto_d

    :cond_27
    move v6, v0

    goto/16 :goto_5
.end method

.method private updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1435
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v0, :cond_6

    move v0, v1

    .line 1436
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallInfoLayout()...  ringing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1446
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1451
    if-eqz v2, :cond_9

    .line 1452
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->mIsDockConnected:Z

    if-nez v0, :cond_0

    const-string v0, "hardkeyboardhidden_no"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_9

    .line 1454
    :cond_0
    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1457
    :goto_1
    const-string v3, "ims_conference_call"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1458
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1459
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1460
    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1465
    :cond_1
    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1466
    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1469
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallInfoLayout : orientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1471
    if-ne v0, v1, :cond_8

    .line 1472
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "support_incomingcall_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1474
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->getTouchUiHeight()I

    move-result v1

    .line 1475
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1477
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> callInfoLp.bottomMargin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1482
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1484
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    if-eqz v0, :cond_4

    .line 1485
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    invoke-virtual {v0}, Lcom/android/phone/SocialStatus;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1487
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1490
    :cond_4
    const-string v0, "align_right_voice_eq_btn"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    .line 1491
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1492
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1493
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1494
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1495
    iget-object v1, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1496
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 1497
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1501
    :goto_2
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1507
    :cond_5
    :goto_3
    return-void

    .line 1435
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1499
    :cond_7
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 1505
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateCallInfoLandscapeLayout(Lcom/android/internal/telephony/PhoneConstants$State;)V

    goto :goto_3

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method

.method private updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .locals 14
    .parameter

    .prologue
    const/4 v10, 0x2

    const v12, 0x7f0b0008

    const/16 v11, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallStateWidgets(call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3467
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 3468
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 3469
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 3470
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 3473
    const-string v1, "common_volte_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 3474
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getvoltehold()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 3475
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object v1, v0

    .line 3488
    :goto_0
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3489
    if-ne v7, v10, :cond_1

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v4, :cond_1

    .line 3492
    const-string v0, "updateCallStateWidgets return not udpate"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3935
    :cond_0
    :goto_1
    return-void

    .line 3497
    :cond_1
    const/4 v0, 0x0

    .line 3500
    iget-object v4, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x8c

    invoke-virtual {v4, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3501
    iget-object v4, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x8c

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 3502
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3503
    :cond_2
    iput v3, p0, Lcom/android/phone/CallCard;->mCurrentPeriodMarkIndex:I

    .line 3505
    :cond_3
    sget-object v4, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v8

    aget v4, v4, v8

    packed-switch v4, :pswitch_data_0

    .line 3639
    const-string v4, "CallCard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateCallStateWidgets: unexpected call state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_4
    move-object v4, v0

    move v0, v3

    .line 3642
    :goto_2
    const-string v8, "display_alerting_title"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3643
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v8, :cond_5

    .line 3644
    const-string v4, "common_volte_vt_kor"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 3645
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3646
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 3647
    const v4, 0x7f0906e2

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3663
    :cond_5
    :goto_3
    if-ne v7, v10, :cond_26

    .line 3664
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v7, :cond_25

    iget-object v7, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 3668
    const v4, 0x7f090185

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3694
    :cond_6
    :goto_4
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "usa_cdma_emergency_concept"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 3698
    invoke-direct {p0, v5, v6}, Lcom/android/phone/CallCard;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v4

    .line 3701
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> callStateLabel: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', bluetoothIconId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3704
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3748
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getColor(I)I

    .line 3749
    sget-object v0, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_1

    .line 3777
    :cond_9
    :pswitch_0
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3778
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0005

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3784
    :goto_6
    iget-object v4, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 3785
    :cond_a
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 3786
    :cond_b
    iget-object v4, p0, Lcom/android/phone/CallCard;->mNetworkIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/phone/CallCard;->mNetworkIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 3787
    :cond_c
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3792
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3793
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3794
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3798
    :cond_e
    sget-object v0, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_2

    .line 3835
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 3847
    invoke-direct {p0, v3, v3}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(ZZ)V

    .line 3852
    :goto_7
    sget-object v0, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_3

    .line 3890
    :cond_f
    :pswitch_1
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3891
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0005

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 3901
    :cond_10
    :goto_8
    const-string v0, "voip_interworking"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3902
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v0, :cond_39

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVoIPActivated()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->canUseHoldInVoIP()Z

    move-result v0

    if-nez v0, :cond_39

    .line 3904
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVoipInUseMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3910
    :cond_11
    :goto_9
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3911
    sget-object v0, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4

    .line 3927
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3928
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3929
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3930
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_1

    :pswitch_2
    move-object v4, v0

    move v0, v3

    .line 3508
    goto/16 :goto_2

    .line 3511
    :pswitch_3
    const-string v4, "usa_cdma_emergency_concept"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-ne v7, v10, :cond_12

    .line 3512
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 3513
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v8

    .line 3514
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v9, :cond_13

    move v4, v2

    .line 3515
    :goto_a
    if-eqz v8, :cond_14

    if-eqz v4, :cond_14

    .line 3516
    iget-object v4, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3517
    iget-object v4, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-direct {p0, v5, v6}, Lcom/android/phone/CallCard;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3522
    :cond_12
    :goto_b
    const-string v4, "assisted_dialing_enable"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3523
    invoke-direct {p0}, Lcom/android/phone/CallCard;->resetAssistedDialingNumber()V

    move-object v4, v0

    move v0, v3

    goto/16 :goto_2

    :cond_13
    move v4, v3

    .line 3514
    goto :goto_a

    .line 3519
    :cond_14
    iget-object v4, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 3530
    :pswitch_4
    const v0, 0x7f09018b

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move v0, v3

    .line 3531
    goto/16 :goto_2

    .line 3535
    :pswitch_5
    const-string v0, "assisted_dialing_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3537
    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move v0, v2

    .line 3540
    :goto_c
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "assisted_dialing"

    invoke-static {v4, v8, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_15

    invoke-direct {p0}, Lcom/android/phone/CallCard;->getAssistedDialingNumber()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3542
    const v0, 0x7f090665

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3543
    iget-object v4, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0035

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {v4, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3574
    :goto_d
    const-string v4, "ctc_call_time_duration"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 3575
    if-ne v7, v10, :cond_3b

    .line 3576
    iput-boolean v3, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    move-object v4, v0

    move v0, v3

    goto/16 :goto_2

    .line 3545
    :cond_15
    const v0, 0x7f090185

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3546
    iget-object v4, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0033

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {v4, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_d

    .line 3549
    :cond_16
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3550
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3551
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3552
    const v0, 0x7f0906e2

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 3554
    :cond_17
    const v0, 0x7f090928

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 3556
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3557
    const v0, 0x7f090781

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 3559
    :cond_19
    const v0, 0x7f090185

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 3571
    :cond_1a
    const v0, 0x7f090185

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 3581
    :pswitch_6
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3582
    iput-boolean v2, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    .line 3585
    :cond_1b
    :pswitch_7
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3586
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3587
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3588
    const v0, 0x7f09077f

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3618
    :goto_e
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->showBluetoothIndication()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 3619
    const v4, 0x7f020461

    move v13, v4

    move-object v4, v0

    move v0, v13

    goto/16 :goto_2

    .line 3590
    :cond_1c
    const v0, 0x7f090927

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 3592
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3593
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/CallCard;->mCdnipNumberVT:Landroid/widget/TextView;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/CallCard;->mCdnipNumberVT:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e

    .line 3595
    const v0, 0x7f0902a8

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 3597
    :cond_1e
    const v0, 0x7f090780

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 3600
    :cond_1f
    const v0, 0x7f090189

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 3611
    :cond_20
    const v0, 0x7f090189

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 3630
    :pswitch_8
    const v0, 0x7f09018c

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move v0, v3

    .line 3631
    goto/16 :goto_2

    .line 3634
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .line 3635
    iput-object v0, p0, Lcom/android/phone/CallCard;->mEndCallString:Ljava/lang/String;

    move-object v4, v0

    move v0, v3

    .line 3636
    goto/16 :goto_2

    .line 3649
    :cond_21
    const v4, 0x7f090928

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 3651
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 3652
    const v4, 0x7f090781

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 3654
    :cond_23
    const v4, 0x7f090186

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 3656
    :cond_24
    const v4, 0x7f090186

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 3669
    :cond_25
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v7}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3670
    const v4, 0x7f090187

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 3672
    :cond_26
    if-eq v7, v2, :cond_27

    const/4 v8, 0x3

    if-eq v7, v8, :cond_27

    const/4 v8, 0x5

    if-ne v7, v8, :cond_2a

    .line 3676
    :cond_27
    const-string v7, "sec_product_feature_common_dsds_support"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 3677
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/android/phone/CallNotifier;->getIsGsmRedialCall()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3678
    const v4, 0x7f090187

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 3680
    :cond_28
    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 3681
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/android/phone/CallNotifier;->getIsGsmRedialCall()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3682
    const v4, 0x7f090187

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 3685
    :cond_29
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v7}, Lcom/android/phone/CallNotifier;->getIsGsmRedialCall()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3686
    const v4, 0x7f090187

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 3691
    :cond_2a
    const-string v8, "CallCard"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_4

    .line 3718
    :cond_2b
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    .line 3719
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3720
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3722
    :cond_2c
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3729
    :cond_2d
    const-string v0, "usa_geo_description_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "cityid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 3733
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->mIsDockConnected:Z

    if-nez v0, :cond_8

    const-string v0, "hardkeyboardhidden_no"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3734
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3735
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e007e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3736
    iget-object v4, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 3751
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0006

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_6

    .line 3754
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_6

    .line 3757
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v3

    .line 3758
    goto/16 :goto_6

    .line 3760
    :cond_2f
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0005

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_6

    .line 3764
    :pswitch_d
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v3

    .line 3766
    goto/16 :goto_6

    .line 3771
    :cond_30
    :pswitch_e
    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3772
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0007

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_6

    .line 3780
    :cond_31
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_6

    .line 3804
    :pswitch_f
    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(ZZ)V

    .line 3805
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_7

    .line 3816
    :pswitch_10
    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(ZZ)V

    .line 3818
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V

    .line 3820
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v4

    .line 3821
    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/phone/CallCard;->mEndCallTime:J

    .line 3823
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3824
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 3854
    :pswitch_11
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3855
    :cond_32
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto/16 :goto_8

    .line 3856
    :cond_33
    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3857
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    .line 3858
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f02039f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 3860
    :cond_34
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    .line 3861
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0005

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto/16 :goto_8

    .line 3865
    :pswitch_12
    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3866
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    .line 3867
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f02052b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 3869
    :cond_35
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    .line 3870
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto/16 :goto_8

    .line 3874
    :pswitch_13
    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3875
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    .line 3876
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020418

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 3878
    :cond_36
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    .line 3879
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0006

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto/16 :goto_8

    .line 3884
    :pswitch_14
    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3885
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    .line 3886
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f02052b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 3892
    :cond_37
    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3893
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    .line 3894
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f02052b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 3896
    :cond_38
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto/16 :goto_8

    .line 3906
    :cond_39
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVoipInUseMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 3914
    :pswitch_15
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3915
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3917
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3918
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 3920
    :cond_3a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mPeriodMarkList:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3921
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3922
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3b
    move-object v4, v0

    move v0, v3

    goto/16 :goto_2

    :cond_3c
    move v0, v3

    goto/16 :goto_c

    :cond_3d
    move-object v1, v0

    goto/16 :goto_0

    .line 3505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch

    .line 3749
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_a
        :pswitch_e
        :pswitch_0
        :pswitch_e
    .end packed-switch

    .line 3798
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 3852
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
        :pswitch_1
        :pswitch_13
        :pswitch_14
        :pswitch_1
        :pswitch_14
    .end packed-switch

    .line 3911
    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method private updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 6462
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 6463
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6468
    :cond_0
    const-string v0, "enhanced_driving_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6474
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 6475
    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 6476
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6477
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6478
    const/high16 v2, 0x41c8

    iget v3, p0, Lcom/android/phone/CallCard;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 6479
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 6481
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeIcon:Landroid/widget/ImageView;

    const v2, 0x7f02035d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6482
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6495
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 6474
    goto :goto_0

    .line 6491
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateDirectPhotoShareButton(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter

    .prologue
    .line 7066
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 7067
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 7069
    iget-object v2, p0, Lcom/android/phone/CallCard;->mDirectPhotoShareButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 7070
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 7071
    const-string v2, "support_easy_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7077
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mDirectPhotoShareButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 7081
    :cond_3
    :goto_0
    return-void

    .line 7079
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mDirectPhotoShareButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDisplayForConference(Lcom/android/internal/telephony/Call;)V
    .locals 8
    .parameter

    .prologue
    const v3, 0x7f020201

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 5896
    const-string v0, "updateDisplayForConference()..."

    invoke-direct {p0, v0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 5898
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 5899
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 5908
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 5909
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f090188

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 5924
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5933
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 5934
    if-eqz v0, :cond_a

    .line 5935
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5937
    :goto_1
    const-string v2, "%d"

    .line 5939
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090522

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 5943
    if-eqz v0, :cond_9

    .line 5944
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5956
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v7, :cond_8

    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isImsRegisteredOverWifi()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5958
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5974
    :goto_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5977
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 5990
    const-string v0, "usa_geo_description_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cityid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5995
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 5996
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5997
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mConnectionIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 5998
    iget-object v0, p0, Lcom/android/phone/CallCard;->mConnectionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6002
    :cond_2
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6003
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreenActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6004
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 6005
    iget-object v0, p0, Lcom/android/phone/CallCard;->mNetworkIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6006
    iget-object v0, p0, Lcom/android/phone/CallCard;->mNetworkIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getInCallScreenActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getSimCardIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6016
    :cond_3
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6017
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreenActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6019
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreenActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 6020
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCardSubscriber:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 6021
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCardSubscriber:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getSIMName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6025
    :cond_4
    return-void

    .line 5910
    :cond_5
    if-eq v0, v6, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    if-ne v0, v7, :cond_7

    .line 5917
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 5918
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f090188

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 5921
    :cond_7
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v6}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 5960
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 5971
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4946
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDisplayForPerson("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\nnumberPresentation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " namePresentation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isTemporary:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 4950
    if-nez p5, :cond_1

    .line 4951
    const-string v2, "CallCard.updateDisplayForPerson : call is null"

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 5851
    :cond_0
    :goto_0
    return-void

    .line 4955
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v2, p1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 4956
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 4960
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 4961
    const/4 v11, 0x0

    .line 4962
    const/4 v12, 0x0

    .line 4963
    const/4 v3, 0x0

    .line 4964
    const/4 v4, 0x0

    .line 4967
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "country_detector"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/location/CountryDetector;

    .line 4970
    invoke-static {p1}, Lcom/android/phone/Emergency3LM;->setCallcardInfo(Lcom/android/internal/telephony/CallerInfo;)V

    .line 4973
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 4974
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    .line 4983
    :goto_1
    if-eqz p1, :cond_62

    .line 5006
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 5008
    const-string v4, "usa_gsm_update_2nd_number"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5009
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v4

    if-nez v4, :cond_2

    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    if-ne v0, v4, :cond_2

    .line 5012
    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    if-eq v4, v6, :cond_2

    .line 5013
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 5014
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 5019
    :cond_2
    if-eqz v2, :cond_3

    const-string v4, "sip:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5020
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 5031
    :cond_3
    const-string v4, "cnap_supplementary_service"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5032
    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-nez v4, :cond_4

    .line 5033
    const-string v4, "updateDisplayForPerson : exist invalid cnapName in the CallerInfo"

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 5034
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 5040
    :cond_4
    const-string v4, "service_callmessage"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "single_lte"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5042
    iget-boolean v4, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v4, :cond_5

    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 5045
    :cond_5
    const-string v4, "one_line_greeting"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtils;->CheckDisplayPLettrering()Z

    move-result v4

    if-nez v4, :cond_6

    .line 5046
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 5049
    :cond_6
    const-string v4, "roaming_auto_dial"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 5050
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_91

    .line 5051
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDisplayForPerson : Roaming area number = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 5052
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 5054
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v4

    if-nez v4, :cond_8

    .line 5055
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p6

    move-object/from16 v1, p6

    invoke-static {v4, v0, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 5057
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v4, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v4, v4, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v4, :cond_7

    .line 5058
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCallCardNumber()Ljava/lang/String;

    move-result-object v2

    .line 5059
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PhoneUtilsExt.getCallCardNumber"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 5064
    :cond_8
    :goto_2
    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 5065
    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/phone/PhoneUtilsExt;->changeNameForSKTRAD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object v10, v2

    .line 5073
    :goto_3
    const-string v2, "emergency_find_lost_phone"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5074
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtilsExt;->changeNameForSKT(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 5087
    :cond_9
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 5093
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 5096
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, p2

    invoke-static {v2, v0, p1}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;ILcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v8

    .line 5097
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==> no name *or* number! displayName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v2, v3

    .line 5329
    :goto_4
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 5330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- got personUri: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', based on info.person_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v4, v2

    .line 5342
    :goto_5
    const/4 v5, 0x0

    .line 5343
    iget-object v2, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    const-string v6, "enterprise_policy"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 5345
    if-eqz v2, :cond_8c

    .line 5346
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v2

    .line 5348
    :goto_6
    if-eqz v2, :cond_63

    invoke-virtual {v2}, Landroid/app/enterprise/PhoneRestrictionPolicy;->isCallerIDDisplayAllowed()Z

    move-result v2

    if-nez v2, :cond_63

    if-eqz p1, :cond_63

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 5350
    const-string v2, "EnterpriseDeviceManager : CallerIDDisplay is not allowed "

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 5351
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v5, 0x7f090846

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 5358
    :goto_7
    const-string v2, "feature_ltn_sdnname_display"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5359
    if-eqz p1, :cond_a

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 5363
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    sput-object v2, Lcom/android/phone/CallCard;->SDN_Number:Ljava/lang/String;

    .line 5364
    sget-object v2, Lcom/android/phone/CallCard;->SDN_Number:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/android/phone/CallCard;->getSdnName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 5366
    if-eqz v2, :cond_a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 5368
    iget-object v5, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5369
    iget-object v11, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 5385
    :cond_a
    if-eqz p4, :cond_64

    if-eqz p1, :cond_b

    iget-boolean v2, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v2, :cond_64

    .line 5386
    :cond_b
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallContactPhoto;->setTag(Ljava/lang/Object;)V

    .line 5387
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 5435
    :cond_c
    :goto_8
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v2, v3, :cond_d

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_d

    .line 5439
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 5453
    :cond_d
    const-string v2, "feature_hktw"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5454
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v2, :cond_e

    .line 5455
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3fe999999999999aL

    mul-double/2addr v5, v7

    double-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5459
    :cond_e
    invoke-static/range {p5 .. p5}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-nez v2, :cond_6c

    .line 5460
    invoke-direct {p0}, Lcom/android/phone/CallCard;->formatNumberForConference()Ljava/lang/String;

    move-result-object v2

    .line 5461
    if-eqz v2, :cond_f

    .line 5462
    invoke-direct {p0}, Lcom/android/phone/CallCard;->formatNameForConference()Ljava/lang/String;

    move-result-object v3

    .line 5463
    if-nez v3, :cond_6b

    .line 5464
    iget-object v3, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5465
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5466
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5482
    :cond_f
    :goto_9
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5484
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12

    .line 5485
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-static/range {p5 .. p5}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static/range {p5 .. p5}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_6f

    :cond_10
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_6f

    :cond_11
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6f

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 5490
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b000b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5496
    :cond_12
    :goto_a
    const-string v2, "emergency_find_lost_phone"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5497
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 5498
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    .line 5499
    if-eqz v2, :cond_14

    .line 5500
    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090515

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090517

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isFindService()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5503
    :cond_13
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5508
    :cond_14
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5510
    if-eqz v11, :cond_15

    .line 5511
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5512
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5515
    :cond_15
    const-string v2, "usa_geo_description_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "cityid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 5518
    :cond_16
    iget-object v2, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    if-eqz v2, :cond_71

    if-eqz v12, :cond_71

    .line 5519
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-nez v2, :cond_70

    .line 5520
    iget-object v2, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5521
    iget-object v2, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5530
    :cond_17
    :goto_b
    const-string v2, "eri_info_label_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 5531
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 5532
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    .line 5533
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 5534
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v5, :cond_18

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v5, :cond_73

    .line 5536
    :cond_18
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    .line 5537
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 5538
    iget-object v2, p0, Lcom/android/phone/CallCard;->mEriInfoLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5539
    const-string v5, "CallCard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "erinfoLP : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mGeoDescription : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 5540
    if-eqz v2, :cond_19

    .line 5541
    const/4 v5, 0x3

    const v6, 0x7f0a005a

    invoke-virtual {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5543
    :cond_19
    iget-object v5, p0, Lcom/android/phone/CallCard;->mEriInfoLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5544
    iget-object v2, p0, Lcom/android/phone/CallCard;->mEriInfoLabel:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5545
    iget-object v2, p0, Lcom/android/phone/CallCard;->mEriInfoLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5556
    :cond_1a
    :goto_c
    const-string v2, "phone_number_locator"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 5557
    if-eqz p1, :cond_75

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_75

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    if-ne v0, v2, :cond_75

    .line 5558
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v2

    .line 5559
    const-string v3, "ctc_country_code_locator"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->checkRoamingCondition(I)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 5561
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/android/phone/CallCard;->getCountryCodeLocator(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallCard;->mPnlInfo:Ljava/lang/String;

    .line 5569
    :goto_d
    sget-object v2, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 5589
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Lcom/android/phone/ScrollTextView;

    invoke-virtual {v2}, Lcom/android/phone/ScrollTextView;->clearAnimation()V

    .line 5590
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Lcom/android/phone/ScrollTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/ScrollTextView;->setVisibility(I)V

    .line 5596
    :cond_1b
    :goto_e
    if-eqz v4, :cond_79

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "feature_call_type"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 5597
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5598
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5604
    :goto_f
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 5607
    const-string v2, "display_additional_caller_info"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 5608
    if-eqz p1, :cond_7e

    iget-boolean v2, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v2, :cond_7e

    if-eqz p5, :cond_7e

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_7e

    :cond_1c
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-nez v2, :cond_7e

    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_7e

    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v2

    if-nez v2, :cond_7e

    .line 5611
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    if-nez v2, :cond_1f

    .line 5613
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "phone_kk_tablet_gui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isPenMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_7a

    :cond_1d
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 5616
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x7f0a01f5

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 5620
    :goto_10
    if-eqz v2, :cond_1e

    .line 5621
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 5622
    :cond_1e
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x7f0a0272

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/SocialStatus;

    iput-object v2, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    .line 5624
    :cond_1f
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    if-eqz v2, :cond_7d

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->shouldHideSNS()Z

    move-result v2

    if-nez v2, :cond_7d

    .line 5626
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    iget-object v5, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->startQuery(Landroid/content/Context;JLcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;)V

    .line 5628
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 5629
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    invoke-virtual {v2}, Lcom/android/phone/SocialStatus;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 5630
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 5631
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 5635
    :goto_11
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    invoke-virtual {v3, v2}, Lcom/android/phone/SocialStatus;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5639
    :cond_20
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "phone_kk_tablet_gui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 5640
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 5641
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/android/phone/SocialStatus;->updateSocialStatusLayoutForVT(Lcom/android/internal/telephony/Call;)V

    .line 5645
    :cond_21
    :goto_12
    const-string v2, "support_incomingcall_multi_window"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 5646
    :cond_22
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    if-eqz v2, :cond_23

    .line 5647
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallTouchUi;->getTouchUiHeight()I

    move-result v3

    .line 5648
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    invoke-virtual {v2}, Lcom/android/phone/SocialStatus;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5650
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5661
    :cond_23
    :goto_13
    const-string v2, "support_incomingcall_multi_window"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 5663
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    if-eqz v2, :cond_24

    .line 5664
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/SocialStatus;->setVisibility(I)V

    .line 5668
    :cond_24
    const-string v2, "fdn_contact_search"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 5669
    if-eqz p5, :cond_26

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-nez v2, :cond_26

    if-eqz p1, :cond_26

    iget-boolean v2, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v2, :cond_26

    .line 5670
    iget-object v2, p0, Lcom/android/phone/CallCard;->mhFDNQueryHanlder:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5671
    invoke-static {}, Lcom/android/phone/FDNContactsCache;->getInstance()Lcom/android/phone/FDNContactsCache;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/phone/FDNContactsCache;->queryFDNContactByNumber(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 5674
    invoke-static {v2}, Lcom/android/phone/FDNContactsCache;->getNumberFromMsg(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    .line 5675
    invoke-static {v2}, Lcom/android/phone/FDNContactsCache;->getNameFromMsg(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    .line 5677
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    iget-object v4, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_26

    .line 5679
    if-eqz v3, :cond_26

    if-eqz v2, :cond_26

    .line 5680
    iget-object v4, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5681
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_25

    .line 5682
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5684
    :cond_25
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5692
    :cond_26
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "cityid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 5699
    :cond_27
    const/4 v2, 0x0

    .line 5700
    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 5701
    const/4 v4, 0x2

    if-ne v3, v4, :cond_7f

    .line 5702
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 5709
    :goto_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==> connection  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 5710
    if-eqz v2, :cond_28

    .line 5711
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/phone/CallCard;->mConnectionIcon:Landroid/widget/ImageView;

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_82

    const/4 v7, 0x1

    :goto_15
    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/android/phone/EcidClient;->setEcidDisplay(JLcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 5717
    :cond_28
    const-string v2, "cdnip_supplementary_service"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 5718
    if-eqz p1, :cond_88

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_88

    .line 5719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdnipNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "call state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 5720
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_29

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_86

    .line 5721
    :cond_29
    const-string v2, "disable_format_number"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 5726
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090521

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5728
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 5729
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5730
    :cond_2a
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCdnipNumberVT:Landroid/widget/TextView;

    if-eqz v3, :cond_2b

    .line 5731
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCdnipNumberVT:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5732
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCdnipNumberVT:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5754
    :cond_2b
    :goto_17
    const-string v2, "support_nsri_secure"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 5755
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isNSRISecureCall()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 5756
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    const v3, 0x7f090190

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 5757
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5761
    :cond_2c
    const-string v2, "visual_expression"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 5762
    if-eqz p1, :cond_2d

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 5763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update VE_ContentManager - info.sktVEUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 5767
    :cond_2d
    const-string v2, "ctc_dual_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "ctc_dual_mode_single_phone_byqc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 5770
    :cond_2e
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 5771
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getInCallScreenActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 5772
    iget-object v2, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x32

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5773
    iget-object v2, p0, Lcom/android/phone/CallCard;->mNetworkIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5774
    iget-object v2, p0, Lcom/android/phone/CallCard;->mNetworkIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getInCallScreenActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getSimCardIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5795
    :cond_2f
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 5796
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 5797
    const/4 v3, 0x2

    if-ne v2, v3, :cond_30

    .line 5798
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->setCallNumberFromInCallScreen(Ljava/lang/String;)V

    .line 5802
    :cond_30
    const-string v2, "abbreviated_dialing_codes_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 5803
    if-eqz p1, :cond_31

    .line 5804
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 5805
    invoke-static {v2}, Lcom/android/phone/SprintPhoneExtension;->isAbbreviatedDialingCodes(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 5806
    iget-object v3, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/phone/SprintPhoneExtension;->getAbbreviatedDialingCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5807
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5808
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5809
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5814
    :cond_31
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 5815
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getInCallScreenActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 5817
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getInCallScreenActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 5818
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCardSubscriber:Landroid/widget/TextView;

    if-eqz v3, :cond_32

    .line 5819
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCardSubscriber:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getSIMName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5821
    :cond_32
    const-string v3, "support_incomingcall_multi_window"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_33

    .line 5825
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/CallCard;->mPnlCardInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getSIMName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallCard;->mPnlCardInfo:Ljava/lang/String;

    .line 5826
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Lcom/android/phone/ScrollTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/ScrollTextView;->setVisibility(I)V

    .line 5827
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Lcom/android/phone/ScrollTextView;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mPnlCardInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/phone/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 5828
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPnlCardInfo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 5829
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 5830
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/high16 v3, 0x4180

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 5836
    :cond_33
    const-string v2, "support_incomingcall_multi_window"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5839
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multi window pi= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 5840
    const-string v2, "support_easy_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const/4 v2, 0x1

    .line 5841
    :goto_18
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    if-ne v0, v3, :cond_35

    if-eqz p1, :cond_34

    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    :cond_34
    if-eqz v2, :cond_8b

    .line 5842
    :cond_35
    iget-object v2, p0, Lcom/android/phone/CallCard;->mRejectWithMsgButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 5843
    iget-object v2, p0, Lcom/android/phone/CallCard;->mRejectWithMsgButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 4976
    :cond_36
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    goto/16 :goto_1

    .line 5061
    :cond_37
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5062
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 5066
    :cond_38
    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 5068
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->changeVoiceMailBoxNumberForRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto/16 :goto_3

    .line 5098
    :cond_39
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    if-eq v0, v2, :cond_3a

    .line 5102
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, p2

    invoke-static {v2, v0, p1}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;ILcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v8

    .line 5103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v2, v3

    goto/16 :goto_4

    .line 5104
    :cond_3a
    const-string v2, "cnap_supplementary_service"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "support_cnap_in_call_card"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_3b
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 5109
    iget-object v8, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 5110
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "support_cnap_in_call_card"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 5112
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 5114
    :cond_3c
    const-string v2, "disable_format_number"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 5129
    :cond_3d
    :goto_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==> cnapName available: displayName \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\', displayNumber \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v2, v3

    move-object v11, v10

    goto/16 :goto_4

    .line 5117
    :cond_3e
    const-string v2, "number_format_with_country_iso"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 5118
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 5119
    :cond_3f
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_19

    .line 5121
    :cond_40
    invoke-virtual {v9}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_19

    .line 5123
    :cond_41
    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 5126
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_19

    .line 5131
    :cond_42
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_43

    .line 5135
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 5136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " LGT special case displayName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " number = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v2, v3

    goto/16 :goto_4

    .line 5145
    :cond_43
    const-string v2, "disable_format_number"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    move-object v8, v10

    .line 5165
    :goto_1a
    if-eqz p6, :cond_90

    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "usa_geo_description_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_90

    :cond_44
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_90

    const-string v2, "cityid_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_90

    const-string v2, "geo_description_disable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_90

    .line 5173
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 5175
    :goto_1b
    const-string v4, "phone_number_locator"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 5177
    sget-object v4, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v4, :cond_45

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v4, :cond_45

    .line 5178
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string v2, "phone_kk_tablet_gui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 5180
    const/4 v2, 0x0

    .line 5186
    :cond_45
    :goto_1c
    const-string v4, "enable_display_vmtelnum_duringcall"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 5188
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_46

    if-nez v2, :cond_46

    .line 5190
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 5191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set displayNumber of Voicemail displayNumber:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 5194
    :cond_46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ==>  no name; falling back to number: displayName \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', displayNumber \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v11, v2

    move-object v2, v3

    goto/16 :goto_4

    .line 5147
    :cond_47
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-eqz v2, :cond_48

    move-object v8, v10

    .line 5148
    goto/16 :goto_1a

    .line 5150
    :cond_48
    const-string v2, "number_format_with_country_iso"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 5151
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 5152
    :cond_49
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    goto/16 :goto_1a

    .line 5154
    :cond_4a
    invoke-virtual {v9}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    goto/16 :goto_1a

    .line 5156
    :cond_4b
    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    move-object v8, v10

    .line 5157
    goto/16 :goto_1a

    .line 5159
    :cond_4c
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    goto/16 :goto_1a

    .line 5182
    :cond_4d
    const-string v2, ""

    goto/16 :goto_1c

    .line 5200
    :cond_4e
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    if-eq v0, v2, :cond_4f

    .line 5204
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, p2

    invoke-static {v2, v0, p1}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;ILcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v8

    .line 5205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 5207
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 5210
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/high16 v4, 0x4220

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    move-object v2, v3

    goto/16 :goto_4

    .line 5213
    :cond_4f
    const-string v2, "cnap_supplementary_service"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 5214
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    iget-boolean v2, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v2, :cond_57

    .line 5219
    iget-object v8, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 5220
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    sput-object v2, Lcom/android/phone/PhoneUtilsExt;->mContactName:Ljava/lang/String;

    .line 5222
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v2, :cond_50

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v2, :cond_52

    .line 5223
    :cond_50
    sget-object v2, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_51

    .line 5224
    sget-object v2, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 5225
    const/4 v2, 0x0

    sput-object v2, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    .line 5227
    :cond_51
    new-instance v2, Lcom/android/phone/CallCard$2;

    const-wide/32 v4, 0x493e0

    const-wide/16 v6, 0x3e8

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/phone/CallCard$2;-><init>(Lcom/android/phone/CallCard;JJLjava/lang/String;)V

    sput-object v2, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    .line 5241
    sget-object v2, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 5257
    :cond_52
    :goto_1d
    const-string v2, "feature_ltn_auto_csp"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 5259
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getAutoCSP()Lcom/android/phone/IAutoCSP;

    move-result-object v2

    .line 5260
    invoke-interface {v2}, Lcom/android/phone/IAutoCSP;->isAutoCSPEnabled()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 5261
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 5264
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 5265
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getLastDialedNumber()Ljava/lang/String;

    move-result-object v2

    .line 5268
    :goto_1e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_53

    const-string v4, "0"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 5269
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 5273
    :cond_53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_54

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v4

    if-nez v4, :cond_54

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_55

    .line 5276
    :cond_54
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_55
    move-object v10, v2

    .line 5322
    :cond_56
    :goto_1f
    const-string v2, "usa_geo_description_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 5323
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 5324
    :goto_20
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 5325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ==>  name is present in CallerInfo: info.geoDescription \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', info.phoneLabel \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v12, v2

    move-object v11, v10

    move-object v2, v3

    goto/16 :goto_4

    .line 5246
    :cond_57
    sget-object v2, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_58

    .line 5247
    sget-object v2, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 5248
    const/4 v2, 0x0

    sput-object v2, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    .line 5250
    :cond_58
    iget-object v8, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_1d

    .line 5253
    :cond_59
    iget-object v8, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_1d

    .line 5278
    :cond_5a
    :try_start_1
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 5281
    const-string v2, "disable_format_number"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 5284
    const-string v2, "number_format_with_country_iso"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 5285
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_5b

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 5286
    :cond_5b
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1f

    .line 5288
    :cond_5c
    invoke-virtual {v9}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1f

    .line 5290
    :cond_5d
    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 5293
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto/16 :goto_1f

    .line 5301
    :cond_5e
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 5304
    const-string v2, "disable_format_number"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 5307
    const-string v2, "number_format_with_country_iso"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 5308
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 5309
    :cond_5f
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1f

    .line 5311
    :cond_60
    invoke-virtual {v9}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1f

    .line 5313
    :cond_61
    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 5316
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1f

    .line 5333
    :cond_62
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, p2

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    move-object v13, v4

    move-object v4, v3

    move-object v3, v13

    goto/16 :goto_5

    .line 5353
    :cond_63
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 5388
    :cond_64
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v5, :cond_65

    .line 5390
    const-string v2, "update nothing"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 5391
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5392
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5393
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    goto/16 :goto_8

    .line 5396
    :cond_65
    if-eqz p1, :cond_66

    iget v2, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v2, :cond_66

    .line 5397
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_8

    .line 5398
    :cond_66
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_67

    iget-boolean v2, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v2, :cond_67

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_67

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v5, :cond_67

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v5, :cond_67

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v5, :cond_67

    .line 5400
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->getDefaultImageResource(Lcom/android/internal/telephony/Call;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_8

    .line 5401
    :cond_67
    if-eqz p1, :cond_68

    iget-boolean v2, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v2, :cond_68

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_68

    .line 5402
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->getDefaultImageResource(Lcom/android/internal/telephony/Call;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_8

    .line 5403
    :cond_68
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v2, p1}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 5404
    if-nez v3, :cond_69

    .line 5405
    const-string v2, "CallCard"

    const-string v3, "personPri is null. Just use Unknown picture."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5406
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->getDefaultImageResource(Lcom/android/internal/telephony/Call;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_8

    .line 5407
    :cond_69
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 5408
    sget-boolean v2, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v2, :cond_c

    .line 5409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The requested Uri ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is being loaded already."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Ignoret the duplicate load request."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 5416
    :cond_6a
    iput-object v3, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    .line 5419
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/phone/InCallContactPhoto;->setTag(Ljava/lang/Object;)V

    .line 5421
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 5424
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/android/phone/CallCard$AsyncLoadCookie;

    iget-object v7, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v0, p5

    invoke-direct {v6, v7, p1, v0}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v2, v5, v3, p0, v6}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 5429
    iget-object v2, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5430
    iget-object v2, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    const-wide/16 v5, 0x1f4

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_8

    .line 5468
    :cond_6b
    iget-object v5, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5469
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5470
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 5474
    :cond_6c
    if-eqz v11, :cond_6e

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-eqz v2, :cond_6d

    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 5476
    :cond_6d
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5477
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 5479
    :cond_6e
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 5492
    :cond_6f
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b000a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 5523
    :cond_70
    iget-object v2, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5524
    iget-object v2, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b

    .line 5527
    :cond_71
    iget-object v2, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b

    .line 5547
    :cond_72
    iget-object v2, p0, Lcom/android/phone/CallCard;->mEriInfoLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 5550
    :cond_73
    iget-object v2, p0, Lcom/android/phone/CallCard;->mEriInfoLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 5563
    :cond_74
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallCard;->mPnlInfo:Ljava/lang/String;

    goto/16 :goto_d

    .line 5566
    :cond_75
    const-string v2, ""

    iput-object v2, p0, Lcom/android/phone/CallCard;->mPnlInfo:Ljava/lang/String;

    goto/16 :goto_d

    .line 5574
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPnlInfo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_78

    .line 5575
    const-string v2, "phone_kk_tablet_gui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_76

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_77

    .line 5576
    :cond_76
    iget-object v2, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5578
    :cond_77
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(ZZ)V

    .line 5579
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Lcom/android/phone/ScrollTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/ScrollTextView;->setVisibility(I)V

    .line 5580
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Lcom/android/phone/ScrollTextView;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mPnlInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/phone/ScrollTextView;->setScrollText(Ljava/lang/CharSequence;)V

    .line 5581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/CallCard;->mPnlInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallCard;->mPnlCardInfo:Ljava/lang/String;

    goto/16 :goto_e

    .line 5583
    :cond_78
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Lcom/android/phone/ScrollTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/ScrollTextView;->setVisibility(I)V

    .line 5584
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Lcom/android/phone/ScrollTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/phone/ScrollTextView;->setScrollText(Ljava/lang/CharSequence;)V

    .line 5585
    const-string v2, ""

    iput-object v2, p0, Lcom/android/phone/CallCard;->mPnlCardInfo:Ljava/lang/String;

    goto/16 :goto_e

    .line 5600
    :cond_79
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_f

    .line 5618
    :cond_7a
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x7f0a01f4

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    goto/16 :goto_10

    .line 5633
    :cond_7b
    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_11

    .line 5643
    :cond_7c
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/phone/SocialStatus;->updateSocialStatusLayout(Z)V

    goto/16 :goto_12

    .line 5654
    :cond_7d
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    if-eqz v2, :cond_23

    .line 5655
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/SocialStatus;->setVisibility(I)V

    goto/16 :goto_13

    .line 5658
    :cond_7e
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    if-eqz v2, :cond_23

    .line 5659
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSocialStatus:Lcom/android/phone/SocialStatus;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/SocialStatus;->setVisibility(I)V

    goto/16 :goto_13

    .line 5703
    :cond_7f
    const/4 v4, 0x1

    if-eq v3, v4, :cond_80

    const/4 v4, 0x5

    if-ne v3, v4, :cond_81

    .line 5704
    :cond_80
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    goto/16 :goto_14

    .line 5707
    :cond_81
    const-string v4, "CallCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_14

    .line 5711
    :cond_82
    const/4 v7, 0x0

    goto/16 :goto_15

    .line 5724
    :cond_83
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    goto/16 :goto_16

    .line 5736
    :cond_84
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCdnipNumberVT:Landroid/widget/TextView;

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/android/phone/CallCard;->mCdnipNumberVT:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5737
    :cond_85
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_2b

    .line 5738
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5739
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_17

    .line 5744
    :cond_86
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v2, :cond_87

    iget-object v2, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5745
    :cond_87
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCdnipNumberVT:Landroid/widget/TextView;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/phone/CallCard;->mCdnipNumberVT:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_17

    .line 5749
    :cond_88
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5750
    :cond_89
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCdnipNumberVT:Landroid/widget/TextView;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/phone/CallCard;->mCdnipNumberVT:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_17

    .line 5840
    :cond_8a
    const/4 v2, 0x0

    goto/16 :goto_18

    .line 5846
    :cond_8b
    iget-object v2, p0, Lcom/android/phone/CallCard;->mRejectWithMsgButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 5847
    iget-object v2, p0, Lcom/android/phone/CallCard;->mRejectWithMsgButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 5297
    :catch_0
    move-exception v2

    goto/16 :goto_1f

    :cond_8c
    move-object v2, v5

    goto/16 :goto_6

    :cond_8d
    move-object v2, v12

    goto/16 :goto_20

    :cond_8e
    move-object v2, v11

    goto/16 :goto_1e

    :cond_8f
    move-object v2, v3

    goto/16 :goto_4

    :cond_90
    move-object v2, v11

    goto/16 :goto_1b

    :cond_91
    move-object v10, v2

    goto/16 :goto_3

    .line 5569
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 4173
    .line 4174
    const-string v0, "assisted_dialing_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4175
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4177
    :cond_0
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4178
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4179
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4180
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4181
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVTElapsedTime_VGA:Landroid/widget/TextView;

    :goto_0
    move-object v1, v0

    .line 4201
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_d

    .line 4202
    if-eqz v1, :cond_2

    .line 4203
    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4204
    :cond_2
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4239
    :cond_3
    :goto_2
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4248
    :cond_4
    const-string v0, "usa_geo_description_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 4251
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 4252
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->mIsDockConnected:Z

    if-nez v0, :cond_6

    const-string v0, "hardkeyboardhidden_no"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4253
    iget-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4254
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/2addr v1, v3

    sub-int v1, v2, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 4255
    iget-object v1, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4259
    :cond_6
    return-void

    .line 4183
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    goto :goto_0

    .line 4186
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    goto :goto_0

    .line 4189
    :cond_9
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4190
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4191
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_b

    .line 4192
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVtQcifElapsedTime:Landroid/widget/TextView;

    :goto_3
    move-object v1, v0

    .line 4196
    goto/16 :goto_1

    .line 4194
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    goto :goto_3

    .line 4197
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object v1, v0

    goto/16 :goto_1

    .line 4211
    :cond_d
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4212
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWithTitle(J)V

    goto/16 :goto_2

    .line 4222
    :cond_e
    if-eqz v1, :cond_f

    .line 4223
    invoke-static {p1, p2}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4228
    :cond_f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 4229
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 4230
    :cond_10
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2
.end method

.method private updateElapsedTimeWithTitle(J)V
    .locals 5
    .parameter

    .prologue
    .line 4266
    const-string v0, ""

    .line 4267
    invoke-static {p1, p2}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    .line 4268
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0904af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4269
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0904b0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4270
    iget-boolean v3, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4274
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTimeTitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4275
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4276
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4277
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4281
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 4273
    goto :goto_0

    .line 4279
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 1994
    const-string v0, "updateForegroundCall()..."

    invoke-direct {p0, v0, v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 1999
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2000
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2001
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2007
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_0

    .line 2008
    const-string v1, "updateForegroundCall: no active call, show holding call"

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v1, v0

    move-object v0, v2

    .line 2021
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 2023
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 2025
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2026
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 2027
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_3

    .line 2028
    const-string v0, "support_lgt_multi_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2029
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 2048
    :cond_1
    :goto_1
    return-void

    .line 2003
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2004
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 2030
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_4

    .line 2031
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 2036
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 2038
    :cond_5
    if-eq v3, v5, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 2041
    :cond_6
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_8

    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2043
    :cond_7
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 2045
    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_1
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 3
    .parameter "cm"

    .prologue
    const/4 v2, 0x0

    .line 2113
    const-string v0, "updateNoCall()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 2115
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 2116
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 2117
    return-void
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, -0x2

    const/4 v1, 0x0

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 6038
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

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 6041
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x82

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6042
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x82

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6043
    iput v8, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    .line 6044
    iput v1, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    .line 6049
    :cond_0
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6050
    sget-boolean v0, Lcom/android/phone/CallCard;->mNeedUpdate:Z

    if-ne v0, v7, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 6053
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v3, 0x7f02008b

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 6054
    sput-boolean v1, Lcom/android/phone/CallCard;->mNeedUpdate:Z

    .line 6057
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_2

    .line 6058
    sput-boolean v7, Lcom/android/phone/CallCard;->mNeedUpdate:Z

    .line 6063
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 6064
    sget-object v0, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 6113
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 6114
    const/4 v4, 0x2

    if-ne v0, v4, :cond_a

    .line 6115
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v4, :cond_9

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 6119
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 6132
    :goto_0
    if-eqz v0, :cond_13

    .line 6133
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 6134
    instance-of v4, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v4, :cond_d

    .line 6135
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 6142
    :goto_1
    if-eqz v0, :cond_3

    .line 6143
    iget v1, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 6154
    :cond_3
    if-nez v1, :cond_12

    .line 6155
    const-string v4, "common_volte_vt_kor"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 6156
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p1, v4, v0}, Lcom/android/phone/CallCard;->showAnimationImage(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 6157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation is set : state == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 6219
    :cond_4
    :goto_2
    return-void

    .line 6069
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 6072
    if-eqz v0, :cond_8

    .line 6073
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 6074
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v2, :cond_5

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v2, :cond_14

    .line 6076
    :cond_5
    const-string v0, "display_busy_picture"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6077
    const v0, 0x7f02057a

    :goto_3
    move v1, v0

    .line 6202
    :cond_6
    :goto_4
    :pswitch_1
    if-eqz v1, :cond_7

    .line 6203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- overrriding photo image: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 6204
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 6206
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v9}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 6213
    :cond_7
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6214
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->isGuidanceMsgPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6215
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->showGuidancePlayingPhoto()V

    goto :goto_2

    .line 6081
    :cond_8
    const-string v0, "updatePhotoForCallState: connection is null, ignoring."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 6121
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto/16 :goto_0

    .line 6123
    :cond_a
    if-eq v0, v7, :cond_b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_b

    const/4 v4, 0x5

    if-ne v0, v4, :cond_c

    .line 6126
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto/16 :goto_0

    .line 6129
    :cond_c
    const-string v4, "CallCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v7}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object v0, v2

    goto/16 :goto_0

    .line 6136
    :cond_d
    instance-of v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v4, :cond_13

    .line 6137
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_1

    .line 6161
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 6162
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p1, v4, v0}, Lcom/android/phone/CallCard;->showAnimationImage(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 6163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation is set : state == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6169
    :cond_f
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 6170
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v3, v0}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v3}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v3

    if-ne v3, v9, :cond_6

    .line 6175
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v3}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v3

    .line 6176
    if-nez v3, :cond_10

    .line 6177
    const-string v0, "CallCard"

    const-string v2, "photoUri became null. Show default avatar icon"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6178
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v2, 0x7f020204

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 6190
    :goto_5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto/16 :goto_4

    .line 6180
    :cond_10
    sget-boolean v4, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v4, :cond_11

    .line 6181
    const-string v4, "start asynchronous load inside updatePhotoForCallState()"

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 6183
    :cond_11
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v4, v2}, Lcom/android/phone/InCallContactPhoto;->setTag(Ljava/lang/Object;)V

    .line 6185
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 6186
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/phone/CallCard$AsyncLoadCookie;

    iget-object v6, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {v5, v6, v0, v2}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v7, v4, v3, p0, v5}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_5

    .line 6195
    :cond_12
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 6196
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto/16 :goto_2

    :cond_13
    move-object v0, v2

    goto/16 :goto_1

    :cond_14
    move v0, v1

    goto/16 :goto_3

    .line 6064
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter

    .prologue
    .line 2055
    const-string v0, "updateRingingCall()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 2058
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2065
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 2071
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 2072
    return-void

    .line 2061
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method private updateTabletCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/Call;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 1682
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 1683
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x1

    move v3, v0

    .line 1684
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v8

    .line 1686
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v7}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    move v4, v0

    .line 1687
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    move v5, v0

    .line 1689
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTabletCallInfoLayout()...  isRinging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTabletCallInfoLayout()...  isDialing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1692
    const/4 v0, 0x1

    .line 1693
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1695
    if-eqz v1, :cond_37

    .line 1696
    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    move v6, v0

    .line 1698
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTabletCallInfoLayout : orientation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1700
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1701
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v1}, Lcom/android/phone/InCallContactPhoto;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1702
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1704
    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1705
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1706
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e0088

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1707
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e024d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1708
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e0087

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1709
    const/4 v1, 0x1

    const v3, 0x7f0a0042

    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1710
    const/16 v1, 0x9

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1711
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0e0192

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1712
    if-eqz v4, :cond_1

    if-nez v5, :cond_1

    .line 1713
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e0246

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1714
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1715
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1716
    const/16 v1, 0x9

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1717
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e0098

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1718
    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1719
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0192

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1723
    :cond_1
    :goto_4
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1724
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1988
    :cond_2
    :goto_5
    return-void

    .line 1683
    :cond_3
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_0

    .line 1686
    :cond_4
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_1

    .line 1687
    :cond_5
    const/4 v0, 0x0

    move v5, v0

    goto/16 :goto_2

    .line 1721
    :cond_6
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_4

    .line 1729
    :cond_7
    if-eqz v3, :cond_10

    .line 1730
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTypeIndicator:Landroid/widget/TextView;

    if-eqz v9, :cond_8

    .line 1731
    if-eqz v4, :cond_f

    .line 1732
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTypeIndicator:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1745
    :cond_8
    :goto_6
    sget-object v9, Lcom/android/phone/CallCard;->sTypefaceVT:Landroid/graphics/Typeface;

    if-eqz v9, :cond_11

    if-eqz v4, :cond_11

    .line 1746
    iget-object v9, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    sget-object v10, Lcom/android/phone/CallCard;->sTypefaceVT:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1751
    :cond_9
    :goto_7
    const/4 v9, 0x1

    if-eq v6, v9, :cond_a

    iget-object v6, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->isRCVmode()Z

    move-result v6

    if-eqz v6, :cond_1c

    if-nez v3, :cond_1c

    .line 1753
    :cond_a
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/CallCard;->isDialingInLand:Z

    .line 1755
    if-eqz v4, :cond_1a

    .line 1756
    iget-object v4, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e0030

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 1758
    if-eqz v3, :cond_c

    .line 1759
    invoke-static {v7}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1760
    :cond_b
    iget-object v4, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e0116

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 1765
    :cond_c
    :goto_8
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v6, v4, v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1766
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1769
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e0116

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v0, v4, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1771
    const/16 v0, 0x9

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1772
    const/16 v0, 0xe

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1774
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e0113

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1775
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e0114

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1777
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1780
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v4, v0

    .line 1781
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 1782
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0e0100

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1784
    if-eqz v3, :cond_13

    .line 1785
    invoke-static {v7}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1786
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e010c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int v3, v0, v1

    .line 1788
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 1789
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e00e1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v4, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e00cc

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v0, v4

    .line 1804
    :goto_9
    iget-object v4, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e010d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1805
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1806
    const/16 v0, 0x9

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1807
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1808
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1809
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1811
    if-nez v5, :cond_e

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1812
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1813
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1821
    :goto_a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0118

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1822
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1823
    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1824
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1829
    :goto_b
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabelAndNumber:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1832
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0119

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5

    .line 1735
    :cond_f
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTypeIndicator:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0902ac

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1736
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTypeIndicator:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1740
    :cond_10
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTypeIndicator:Landroid/widget/TextView;

    if-eqz v9, :cond_8

    .line 1741
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTypeIndicator:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1747
    :cond_11
    sget-object v9, Lcom/android/phone/CallCard;->sTypeface:Landroid/graphics/Typeface;

    if-eqz v9, :cond_9

    .line 1748
    iget-object v9, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    sget-object v10, Lcom/android/phone/CallCard;->sTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_7

    .line 1762
    :cond_12
    iget-object v4, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e00e5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    goto/16 :goto_8

    .line 1793
    :cond_13
    if-eqz v5, :cond_14

    .line 1794
    iget-object v3, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_9

    .line 1795
    :cond_14
    if-eqz v8, :cond_15

    .line 1796
    iget-object v3, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_9

    .line 1798
    :cond_15
    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1799
    :cond_16
    iget-object v3, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_9

    .line 1816
    :cond_17
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1817
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 1825
    :cond_18
    if-nez v5, :cond_19

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1826
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_b

    .line 1828
    :cond_19
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0193

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_b

    .line 1834
    :cond_1a
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e01e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1836
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1840
    const/4 v0, -0x2

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1841
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1842
    const/4 v0, 0x3

    const v3, 0x7f0a0042

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1843
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1844
    const/16 v0, 0xe

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1845
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1846
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1847
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1850
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1851
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e018f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1852
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0190

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1853
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1855
    const/16 v0, 0x9

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1856
    const/16 v0, 0xe

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1858
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e01dd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1859
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e01e5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1861
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1865
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1866
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1867
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1868
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0192

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1869
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabelAndNumber:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1872
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5

    .line 1875
    :cond_1c
    iput-boolean v8, p0, Lcom/android/phone/CallCard;->isDialingInLand:Z

    .line 1877
    if-eqz v4, :cond_28

    .line 1878
    if-eqz v3, :cond_1f

    const/4 v4, 0x0

    .line 1880
    :goto_c
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v6, v4, v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1881
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1884
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e0115

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1885
    iget-object v4, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e0116

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 1887
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v0, v4, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1888
    const/16 v0, 0x9

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1889
    const/16 v0, 0xe

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1891
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e0113

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1892
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e0114

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1894
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1897
    const/4 v1, 0x0

    .line 1898
    const/4 v0, 0x0

    .line 1899
    if-eqz v3, :cond_21

    .line 1900
    invoke-static {v7}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1901
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 1902
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e0107

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1922
    :cond_1e
    :goto_d
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1923
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1924
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1925
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1926
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1927
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1930
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e0118

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1931
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1932
    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1933
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1938
    :goto_e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabelAndNumber:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1941
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0119

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5

    .line 1878
    :cond_1f
    iget-object v4, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e0031

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    goto/16 :goto_c

    .line 1904
    :cond_20
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 1905
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e0104

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto/16 :goto_d

    .line 1908
    :cond_21
    if-eqz v5, :cond_22

    .line 1909
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 1910
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e0109

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto/16 :goto_d

    .line 1911
    :cond_22
    if-eqz v8, :cond_23

    .line 1912
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 1913
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e00ff

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto/16 :goto_d

    .line 1915
    :cond_23
    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-nez v4, :cond_24

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1916
    :cond_24
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 1917
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e010b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto/16 :goto_d

    .line 1934
    :cond_25
    if-nez v3, :cond_26

    if-eqz v8, :cond_27

    .line 1935
    :cond_26
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_e

    .line 1937
    :cond_27
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0193

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_e

    .line 1943
    :cond_28
    iget-object v4, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e01e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 1944
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1945
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1948
    if-eqz v3, :cond_29

    const/4 v0, 0x0

    move v4, v0

    .line 1950
    :goto_f
    if-eqz v3, :cond_2a

    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0e0191

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1953
    :goto_10
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1954
    const/16 v4, 0x9

    if-eqz v3, :cond_2b

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1955
    const/16 v4, 0xe

    if-eqz v3, :cond_2c

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1957
    if-eqz v3, :cond_2d

    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e01e6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_13
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1959
    if-eqz v3, :cond_2e

    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e01e7

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_14
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1962
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1965
    if-eqz v3, :cond_2f

    const/4 v0, 0x0

    move v1, v0

    .line 1967
    :goto_15
    if-eqz v3, :cond_30

    const/4 v0, 0x0

    .line 1970
    :goto_16
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1971
    const/4 v1, 0x1

    if-eqz v3, :cond_31

    const/4 v0, 0x0

    :goto_17
    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1972
    const/4 v1, 0x3

    if-eqz v3, :cond_32

    const v0, 0x7f0a0042

    :goto_18
    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1973
    const/16 v1, 0xe

    if-eqz v3, :cond_33

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1974
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1975
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1976
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_34

    const/4 v1, 0x1

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1979
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e01e8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1980
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    if-eqz v3, :cond_35

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1981
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0192

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1982
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabelAndNumber:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1985
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5

    .line 1948
    :cond_29
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e018f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    move v4, v0

    goto/16 :goto_f

    .line 1950
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0e0190

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto/16 :goto_10

    .line 1954
    :cond_2b
    const/4 v0, 0x1

    goto/16 :goto_11

    .line 1955
    :cond_2c
    const/4 v0, 0x0

    goto/16 :goto_12

    .line 1957
    :cond_2d
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e01dd

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto/16 :goto_13

    .line 1959
    :cond_2e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e01e5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto/16 :goto_14

    .line 1965
    :cond_2f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0196

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    move v1, v0

    goto/16 :goto_15

    .line 1967
    :cond_30
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e0195

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto/16 :goto_16

    .line 1971
    :cond_31
    const v0, 0x7f0a0042

    goto/16 :goto_17

    .line 1972
    :cond_32
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 1973
    :cond_33
    const/4 v0, 0x0

    goto/16 :goto_19

    .line 1976
    :cond_34
    const/4 v1, 0x3

    goto/16 :goto_1a

    .line 1980
    :cond_35
    const/4 v0, 0x3

    goto/16 :goto_1b

    :cond_36
    move v3, v4

    goto/16 :goto_9

    :cond_37
    move v6, v0

    goto/16 :goto_3
.end method

.method private updateTabletCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .locals 10
    .parameter

    .prologue
    .line 3955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTabletCallStateWidgets(call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3956
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 3957
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3958
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 3959
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 3961
    const/4 v0, 0x0

    .line 3962
    const/4 v1, 0x0

    .line 3964
    sget-object v6, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 4037
    :pswitch_0
    const-string v6, "CallCard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateTabletCallStateWidgets: unexpected call state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v1

    move-object v1, v0

    move v0, v9

    .line 4041
    :goto_0
    const-string v6, "display_alerting_title"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4042
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v6, :cond_0

    .line 4043
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4044
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4045
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4046
    const v1, 0x7f0906e2

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4061
    :cond_0
    :goto_1
    const/4 v6, 0x2

    if-ne v5, v6, :cond_16

    .line 4062
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v5, :cond_15

    iget-object v5, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 4066
    const v1, 0x7f090185

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4087
    :cond_1
    :goto_2
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "usa_cdma_emergency_concept"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4091
    invoke-direct {p0, v3, v4}, Lcom/android/phone/CallCard;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    .line 4094
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> callStateLabel: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', bluetoothIconId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 4098
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4099
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4100
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4103
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4104
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVtQcifElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4105
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVtQcifElapsedTime:Landroid/widget/TextView;

    const/high16 v3, -0x100

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4106
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4109
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVtQcifElapsedTime:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4114
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4115
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4122
    :goto_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/high16 v3, -0x100

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4124
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v3

    .line 4126
    sget-object v0, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    .line 4162
    :cond_6
    :goto_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(ZZ)V

    .line 4165
    :cond_7
    :goto_5
    return-void

    :pswitch_1
    move v9, v1

    move-object v1, v0

    move v0, v9

    .line 3967
    goto/16 :goto_0

    :pswitch_2
    move v9, v1

    move-object v1, v0

    move v0, v9

    .line 3972
    goto/16 :goto_0

    .line 3982
    :pswitch_3
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3983
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3984
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3985
    const v0, 0x7f0906e2

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3997
    :goto_6
    const-string v6, "ctc_call_time_duration"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 3998
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1b

    .line 3999
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    move v9, v1

    move-object v1, v0

    move v0, v9

    goto/16 :goto_0

    .line 3987
    :cond_8
    const v0, 0x7f090928

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 3989
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3990
    const v0, 0x7f090781

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 3992
    :cond_a
    const v0, 0x7f090185

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 3994
    :cond_b
    const v0, 0x7f090185

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 4004
    :pswitch_4
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4005
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    .line 4008
    :cond_c
    :pswitch_5
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4009
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4010
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4011
    const v0, 0x7f09077f

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4026
    :goto_7
    iget-object v6, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->showBluetoothIndication()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 4027
    const v1, 0x7f020461

    move v9, v1

    move-object v1, v0

    move v0, v9

    goto/16 :goto_0

    .line 4013
    :cond_d
    const v0, 0x7f090927

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 4015
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4016
    const v0, 0x7f090780

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 4018
    :cond_f
    const v0, 0x7f090189

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 4020
    :cond_10
    const v0, 0x7f090189

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 4032
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .line 4033
    iput-object v0, p0, Lcom/android/phone/CallCard;->mEndCallString:Ljava/lang/String;

    move v9, v1

    move-object v1, v0

    move v0, v9

    .line 4034
    goto/16 :goto_0

    .line 4048
    :cond_11
    const v1, 0x7f090928

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 4050
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4051
    const v1, 0x7f090781

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 4053
    :cond_13
    const v1, 0x7f090186

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 4055
    :cond_14
    const v1, 0x7f090186

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 4067
    :cond_15
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4068
    const v1, 0x7f090187

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 4070
    :cond_16
    const/4 v6, 0x1

    if-eq v5, v6, :cond_17

    const/4 v6, 0x3

    if-eq v5, v6, :cond_17

    const/4 v6, 0x5

    if-ne v5, v6, :cond_18

    .line 4078
    :cond_17
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->getIsGsmRedialCall()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4079
    const v1, 0x7f090187

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 4084
    :cond_18
    const-string v6, "CallCard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v6, v5, v7}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2

    .line 4116
    :cond_19
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4117
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e011a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3

    .line 4119
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3

    .line 4130
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4131
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(ZZ)V

    .line 4132
    const-wide/16 v0, 0x3e8

    div-long v0, v3, v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto/16 :goto_5

    .line 4141
    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4142
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4144
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4145
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCard;->setElapsedTimeTitle(ZZ)V

    .line 4146
    const-wide/16 v5, 0x3e8

    div-long v5, v3, v5

    invoke-direct {p0, v5, v6}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 4147
    const-wide/16 v5, 0x3e8

    div-long v2, v3, v5

    iput-wide v2, p0, Lcom/android/phone/CallCard;->mEndCallTime:J

    .line 4149
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 4150
    const-string v0, ""

    iget-object v2, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4151
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 4158
    :pswitch_9
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4159
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_1b
    move v9, v1

    move-object v1, v0

    move v0, v9

    goto/16 :goto_0

    .line 3964
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch

    .line 4126
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private updateVideoCallState(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3045
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 3046
    sget-boolean v1, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - Videocall.state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3049
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-nez v1, :cond_1

    .line 3050
    const-string v0, "VideocallPanel is null"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3113
    :goto_0
    return-void

    .line 3054
    :cond_1
    sget-object v1, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3082
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/CallCard;->hideVideoCallWidgets()V

    .line 3087
    :goto_1
    sget-object v1, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 3109
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showCallBanner()V

    .line 3112
    :cond_2
    :goto_2
    iput-object v0, p0, Lcom/android/phone/CallCard;->mPreviousVTCallState:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 3063
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/CallCard;->initVideoCall()V

    .line 3066
    iget-object v1, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v1, v0}, Lcom/android/phone/VideoCallPanel;->updateScreen(Lcom/android/internal/telephony/Call$State;)V

    .line 3069
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showVideoCallWidgets()V

    goto :goto_1

    .line 3073
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPreviousVTCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_3

    .line 3074
    iget-object v1, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallPanel;->onCallDisconnect()V

    .line 3079
    :goto_3
    iput-boolean v3, p0, Lcom/android/phone/CallCard;->isVTinitialized:Z

    goto :goto_1

    .line 3076
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallPanel;->onCallDisconnect()V

    .line 3077
    invoke-direct {p0}, Lcom/android/phone/CallCard;->hideVideoCallWidgets()V

    goto :goto_3

    .line 3089
    :pswitch_3
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3091
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showCallBanner()V

    goto :goto_2

    .line 3093
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/CallCard;->hideCallBanner()V

    goto :goto_2

    .line 3099
    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPreviousVTCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    .line 3100
    invoke-direct {p0}, Lcom/android/phone/CallCard;->hideCallBanner()V

    .line 3101
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 3102
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3103
    :cond_6
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 3104
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_2

    .line 3054
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 3087
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .prologue
    .line 7434
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 7435
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 6596
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6597
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6598
    return-void
.end method

.method public clearAnswerMemoImageView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 7191
    const-string v0, "clearAnswerMemoImageView"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 7192
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsMemoImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 7193
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsMemoImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7194
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsMemoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7196
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsweringMemo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 7197
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsweringMemo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7199
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 6553
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 6554
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 6555
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 6587
    :cond_0
    :goto_0
    return v2

    .line 6559
    :cond_1
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6560
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 6563
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 6564
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 6565
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 6567
    :cond_4
    const-string v0, "feature_call_type"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6568
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 6571
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 6572
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 6573
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 6575
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 6576
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 6577
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 6580
    :cond_7
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method enableVisualExpression(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 6902
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVisualExpression:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6903
    iget-object v1, p0, Lcom/android/phone/CallCard;->mVisualExpression:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6904
    :cond_0
    return-void

    .line 6903
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getSdnList(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "aNumber"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 7020
    const/4 v1, 0x0

    .line 7022
    .local v1, mName:Ljava/lang/String;
    sget-object v3, Lcom/android/phone/CallCard;->mSDNNumber:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_0

    sget-object v3, Lcom/android/phone/CallCard;->mSDNNumber:[Ljava/lang/String;

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/phone/CallCard;->mSDNName:[Ljava/lang/String;

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    :cond_0
    move-object v2, v1

    .line 7035
    .end local v1           #mName:Ljava/lang/String;
    .local v2, mName:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 7025
    .end local v2           #mName:Ljava/lang/String;
    .restart local v1       #mName:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/android/phone/CallCard;->mSDNNumber:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 7026
    sget-object v3, Lcom/android/phone/CallCard;->mSDNNumber:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/phone/CallCard;->mSDNNumber:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7027
    sget-object v3, Lcom/android/phone/CallCard;->mSDNName:[Ljava/lang/String;

    aget-object v1, v3, v0

    :cond_2
    move-object v2, v1

    .line 7035
    .end local v1           #mName:Ljava/lang/String;
    .restart local v2       #mName:Ljava/lang/String;
    goto :goto_0

    .line 7031
    .end local v2           #mName:Ljava/lang/String;
    .restart local v1       #mName:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .line 7025
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSdnName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 6916
    .line 6917
    const/4 v0, 0x0

    .line 6919
    const-string v2, "TFG"

    const-string v3, "ro.csc.sales_code"

    const-string v4, "unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 6923
    const-string v2, "CallCard"

    const-string v3, "sales version is TFG"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6924
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 6926
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 6927
    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 6929
    :cond_0
    const/16 v2, 0x2de

    if-eq v1, v2, :cond_2

    .line 6949
    :cond_1
    :goto_0
    return-object v0

    .line 6933
    :cond_2
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6936
    sget-boolean v1, Lcom/android/phone/CallCard;->mQueryFinish:Z

    if-nez v1, :cond_3

    .line 6937
    new-instance v1, Lcom/android/phone/CallCard$QueryHandler;

    invoke-direct {v1, p0, p2}, Lcom/android/phone/CallCard$QueryHandler;-><init>(Lcom/android/phone/CallCard;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mQueryHandler:Lcom/android/phone/CallCard$QueryHandler;

    .line 6938
    invoke-direct {p0}, Lcom/android/phone/CallCard;->getSdnQuery()V

    .line 6941
    :cond_3
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 6942
    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 6944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSdn : number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 6946
    sget v2, Lcom/android/phone/CallCard;->mSDNCount:I

    if-lez v2, :cond_1

    .line 6947
    invoke-virtual {p0, v1, p2}, Lcom/android/phone/CallCard;->getSdnList(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getVisualExpressionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 6907
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVisualExpression:Landroid/view/View;

    return-object v0
.end method

.method public hideCallCardElements()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 6534
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6535
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6536
    return-void
.end method

.method protected holdVideo()V
    .locals 1

    .prologue
    .line 3208
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3209
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->holdVideo()V

    .line 3211
    :cond_0
    return-void
.end method

.method infoVoiceRecording(Lcom/android/internal/telephony/Call$State;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0907c7

    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 948
    const-string v0, "voiceRecorder_recording_enable"

    .line 949
    const-string v0, "voicenote_recording_enable"

    .line 950
    const-string v0, "fm_record_enable"

    .line 951
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voiceRecorder_recording_enable"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 952
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "voicenote_recording_enable"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 953
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "fm_record_enable"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 954
    iget-object v0, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mAudioManager:Landroid/media/AudioManager;

    .line 956
    iget-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCallPopup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 987
    :goto_0
    return-void

    .line 958
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voice_recording = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", voicenote_recording = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 959
    if-eq v2, v6, :cond_1

    if-ne v3, v6, :cond_3

    .line 961
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/phone/CallCard;->updateIncomingPopupMsg(I)V

    .line 968
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtils;->CheckVoiceRecorder()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 969
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 970
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 971
    iget-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCallPopup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 972
    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 973
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 974
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/phone/CallCard;->mIncomingCallPopup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 979
    :goto_2
    iget-object v1, p0, Lcom/android/phone/CallCard;->mIncomingCallPopup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 981
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCallPopup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 982
    iput-boolean v6, p0, Lcom/android/phone/CallCard;->mIncomingCallPopupIsShowing:Z

    goto/16 :goto_0

    .line 962
    :cond_3
    if-ne v1, v6, :cond_4

    .line 963
    invoke-virtual {p0, v8}, Lcom/android/phone/CallCard;->updateIncomingPopupMsg(I)V

    goto :goto_1

    .line 965
    :cond_4
    const-string v0, "checking voice_recording or voicenote_recording"

    invoke-direct {p0, v0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    goto :goto_1

    .line 976
    :cond_5
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 977
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 984
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCallPopup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 985
    iput-boolean v5, p0, Lcom/android/phone/CallCard;->mIncomingCallPopupIsShowing:Z

    goto/16 :goto_0
.end method

.method invisibleMemoRecInfoView()V
    .locals 2

    .prologue
    .line 7219
    const-string v0, "invisibleMemoRecInfoView"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 7220
    invoke-direct {p0}, Lcom/android/phone/CallCard;->hideMemoRecInfo()V

    .line 7221
    return-void
.end method

.method invisibleRecInfoView()V
    .locals 0

    .prologue
    .line 6745
    invoke-direct {p0}, Lcom/android/phone/CallCard;->hideRecInfo()V

    .line 6746
    return-void
.end method

.method public isAutoAnswered()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7105
    iget-object v2, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    const-string v3, "com.android.phone.auto_answer_memo_pref"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 7106
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "isAutoAnswered"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 7107
    .local v0, autoAnsered:Z
    iput-boolean v0, p0, Lcom/android/phone/CallCard;->isAutoAnsered:Z

    .line 7108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoAnswered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/CallCard;->isAutoAnsered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 7109
    return v0
.end method

.method public isBlockResetTime(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .parameter "phone"
    .parameter "call"

    .prologue
    const/4 v2, 0x1

    .line 6828
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 6829
    .local v0, fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone.getForegroundCall().getState()=%d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 6830
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBackgroundCall().getState()=%d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 6832
    if-eqz v0, :cond_0

    .line 6833
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fgConnections size()=%d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 6836
    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 6846
    :cond_1
    :goto_0
    return v2

    .line 6840
    :cond_2
    const/4 v1, 0x0

    .line 6841
    .local v1, latestConn:Lcom/android/internal/telephony/Connection;
    if-eqz p2, :cond_3

    .line 6842
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 6843
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6846
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isCameraPreviewVisible()Z
    .locals 1

    .prologue
    .line 3305
    invoke-direct {p0}, Lcom/android/phone/CallCard;->isVideoCallWidgetVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->isCameraPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGuidanceMsgPlaying()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7133
    iget-object v2, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    const-string v3, "com.android.phone.auto_answer_memo_pref"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 7134
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "isGuidanceMsgPlaying"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 7135
    .local v0, guidanceMsgPlaying:Z
    iput-boolean v0, p0, Lcom/android/phone/CallCard;->isGuidanceMsgPlaying:Z

    .line 7136
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0a0009

    .line 885
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 886
    sget-boolean v1, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 888
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 931
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 890
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 891
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->onPressVoiceCallEqMenu()V

    goto :goto_0

    .line 901
    :pswitch_2
    const-string v1, "common_volte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 902
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 905
    :pswitch_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsCamera;->getDirectPhotoShareDialogDoNotShowAgain()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 907
    invoke-static {}, Lcom/android/phone/PhoneUtilsCamera;->startTakePhotoActivity()V

    goto :goto_0

    .line 910
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->showDirectPhotoShareDialog()V

    goto :goto_0

    .line 914
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 915
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->mIsDockConnected:Z

    if-eqz v0, :cond_1

    .line 916
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneUtils;->mTurnOnSpeaker:Z

    goto :goto_0

    .line 919
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 920
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->goBackGround()V

    goto :goto_0

    .line 923
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 926
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->makeRejectWithMsg()V

    goto :goto_0

    .line 888
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0062
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const v8, 0x7f0a006e

    const/4 v7, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1018
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallCard onFinishInflate(this = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1022
    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    .line 1023
    const v0, 0x7f0a0041

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 1024
    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 1025
    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLabelAndNumber:Landroid/view/ViewGroup;

    .line 1026
    const v0, 0x7f0a0079

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    .line 1027
    const v0, 0x7f0a0077

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    .line 1028
    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCallPopup:Landroid/view/ViewGroup;

    .line 1029
    const v0, 0x7f0a0061

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCallPopupMsg:Landroid/widget/TextView;

    .line 1030
    const v0, 0x7f0a004a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCardSubscriber:Landroid/widget/TextView;

    .line 1033
    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    const/high16 v3, -0x8000

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1039
    :cond_1
    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1040
    :cond_2
    const v0, 0x7f0a005b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mEriInfoLabel:Landroid/widget/TextView;

    .line 1041
    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    .line 1042
    const v0, 0x7f0a0054

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;

    .line 1044
    :cond_3
    const v0, 0x7f0a004f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 1045
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1046
    const v0, 0x7f0a004b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mVtQcifElapsedTime:Landroid/widget/TextView;

    .line 1047
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1048
    const v0, 0x7f0a006d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mVTElapsedTime_VGA:Landroid/widget/TextView;

    .line 1052
    :cond_4
    const-string v0, "service_callmessage"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1053
    const v0, 0x7f0a0057

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPLettering:Landroid/widget/LinearLayout;

    .line 1054
    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPLetteringTextView:Landroid/widget/TextView;

    .line 1055
    const v0, 0x7f0a0081

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondPLettering:Landroid/widget/LinearLayout;

    .line 1056
    const v0, 0x7f0a0082

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondPLetteringTextView:Landroid/widget/TextView;

    .line 1059
    :cond_5
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1064
    :cond_6
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1065
    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTimeTitle:Landroid/widget/TextView;

    .line 1069
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    .line 1072
    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallContactPhoto;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    .line 1073
    const v0, 0x7f0a0052

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mInset:Landroid/widget/ImageView;

    .line 1074
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mInset:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallContactPhoto;->setInsetImageView(Landroid/widget/ImageView;)V

    .line 1076
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1077
    const v0, 0x7f0a0043

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mAnsMemoImageView:Landroid/widget/ImageView;

    .line 1078
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsMemoImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsMemoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1079
    :cond_8
    const v0, 0x7f0a005e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->memoRecInfo:Landroid/view/View;

    .line 1080
    iget-object v0, p0, Lcom/android/phone/CallCard;->memoRecInfo:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1081
    iget-object v0, p0, Lcom/android/phone/CallCard;->memoRecInfo:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1083
    :cond_9
    const v0, 0x7f0a005f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->memoRecordTime:Landroid/widget/TextView;

    .line 1084
    const v0, 0x7f0a0072

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mAnsweringMemo:Landroid/widget/TextView;

    .line 1085
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsweringMemo:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsweringMemo:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1088
    :cond_a
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1089
    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPhoto:Landroid/widget/ImageView;

    .line 1092
    :cond_b
    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 1093
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1094
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL

    mul-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1095
    iput-boolean v2, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    .line 1097
    :cond_c
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "ctc_dual_mode_single_phone_byqc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1100
    :cond_d
    const v0, 0x7f0a0055

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mNetworkIcon:Landroid/widget/ImageView;

    .line 1102
    :cond_e
    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 1103
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1104
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1106
    :cond_f
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1107
    const v0, 0x7f0a004e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    .line 1108
    const v0, 0x7f0a0056

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCdnipNumberVT:Landroid/widget/TextView;

    .line 1110
    :cond_10
    const-string v0, "usa_geo_description_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "cityid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1113
    :cond_11
    const v0, 0x7f0a005a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    .line 1115
    :cond_12
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1116
    const v0, 0x7f0a0051

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mConnectionIcon:Landroid/widget/ImageView;

    .line 1118
    :cond_13
    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    .line 1119
    const v0, 0x7f0a0050

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeIcon:Landroid/widget/ImageView;

    .line 1121
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1122
    const v0, 0x7f0a005c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    .line 1123
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1124
    :cond_14
    const v0, 0x7f0a005d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mRecordTime:Landroid/widget/TextView;

    .line 1126
    const-string v0, "service_callmessage"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1127
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1128
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1129
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1130
    const/high16 v3, 0x3f80

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1131
    iget-object v3, p0, Lcom/android/phone/CallCard;->mRecordTime:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1135
    :cond_15
    iget-object v0, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1136
    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    .line 1137
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_16

    .line 1138
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1142
    :cond_16
    const-string v0, "support_incomingcall_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1143
    const v0, 0x7f0a0073

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mAcceptButton:Landroid/widget/Button;

    .line 1144
    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mAcceptSpeakerButton:Landroid/widget/Button;

    .line 1145
    const v0, 0x7f0a0075

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mRejectButton:Landroid/widget/Button;

    .line 1146
    const v0, 0x7f0a0076

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mRejectWithMsgButton:Landroid/widget/ImageView;

    .line 1147
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_17

    .line 1148
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1149
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1151
    :cond_17
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAcceptSpeakerButton:Landroid/widget/Button;

    if-eqz v0, :cond_18

    .line 1152
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAcceptSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1153
    const-string v0, "headset_highest_priority_for_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1154
    iget-object v3, p0, Lcom/android/phone/CallCard;->mAcceptSpeakerButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1158
    :goto_1
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1159
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_18

    .line 1160
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAcceptSpeakerButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getTextSize()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1164
    :cond_18
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRejectButton:Landroid/widget/Button;

    if-eqz v0, :cond_19

    .line 1165
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1166
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1168
    :cond_19
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRejectWithMsgButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1a

    .line 1169
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRejectWithMsgButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRejectWithMsgButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1174
    :cond_1a
    const-string v0, "direct_photo_share"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1175
    const v0, 0x7f0a0063

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mDirectPhotoShareButton:Landroid/widget/ImageButton;

    .line 1176
    iget-object v0, p0, Lcom/android/phone/CallCard;->mDirectPhotoShareButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1b

    .line 1177
    iget-object v0, p0, Lcom/android/phone/CallCard;->mDirectPhotoShareButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1180
    :cond_1b
    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1181
    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    .line 1182
    iget-object v0, p0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1c

    .line 1183
    iget-object v0, p0, Lcom/android/phone/CallCard;->mModifyCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1185
    :cond_1c
    const v0, 0x7f0a006a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mModifyVTCallButton:Landroid/widget/ImageButton;

    .line 1186
    iget-object v0, p0, Lcom/android/phone/CallCard;->mModifyVTCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1d

    .line 1187
    iget-object v0, p0, Lcom/android/phone/CallCard;->mModifyVTCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1189
    :cond_1d
    const v0, 0x7f0a0067

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCameraOnButton:Landroid/widget/ImageButton;

    .line 1190
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCameraOnButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1e

    .line 1191
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCameraOnButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1193
    :cond_1e
    const v0, 0x7f0a006b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCameraOffButton:Landroid/widget/ImageButton;

    .line 1194
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCameraOffButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1f

    .line 1195
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCameraOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1197
    :cond_1f
    const v0, 0x7f0a0069

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    .line 1198
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_20

    .line 1199
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoShareButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1201
    :cond_20
    const v0, 0x7f0a0066

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mContainerDivider:Landroid/widget/ImageView;

    .line 1202
    const v0, 0x7f0a0068

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mUpgradeButtonDivider:Landroid/widget/ImageView;

    .line 1204
    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mBtnLayoutOnVTScreen:Landroid/view/ViewGroup;

    .line 1205
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1206
    invoke-virtual {p0, v8}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mHDVoiceText:Landroid/widget/TextView;

    .line 1207
    const v0, 0x7f0a007c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryHDVoiceText:Landroid/widget/TextView;

    .line 1222
    :cond_21
    :goto_2
    const v0, 0x7f0a0223

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/VideoCallPanel;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    .line 1224
    :cond_22
    const-string v0, "voip_interworking"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1225
    const v0, 0x7f0a0070

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mVoipInUseMsg:Landroid/widget/TextView;

    .line 1227
    :cond_23
    const-string v0, "visual_expression"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1228
    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1229
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1230
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mVisualExpression:Landroid/view/View;

    .line 1233
    :cond_24
    const v0, 0x7f0a007b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    .line 1234
    const v0, 0x7f0a0080

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    .line 1235
    const v0, 0x7f0a0078

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallContactPhoto;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    .line 1236
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1241
    :cond_25
    const v0, 0x7f0a007f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallNumber:Landroid/widget/TextView;

    .line 1242
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1243
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1246
    :cond_26
    const-string v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1247
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ScrollTextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Lcom/android/phone/ScrollTextView;

    .line 1248
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumberLocator:Lcom/android/phone/ScrollTextView;

    invoke-virtual {v0, v2}, Lcom/android/phone/ScrollTextView;->setVisibility(I)V

    .line 1251
    :cond_27
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1252
    const v0, 0x7f0a0084

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeIndicator:Landroid/widget/TextView;

    .line 1254
    sget-object v0, Lcom/android/phone/CallCard;->sTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_28

    .line 1255
    const-string v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallCard;->sTypeface:Landroid/graphics/Typeface;

    .line 1257
    :cond_28
    sget-object v0, Lcom/android/phone/CallCard;->sTypefaceVT:Landroid/graphics/Typeface;

    if-nez v0, :cond_29

    .line 1258
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallCard;->sTypefaceVT:Landroid/graphics/Typeface;

    .line 1261
    :cond_29
    return-void

    :cond_2a
    move v0, v2

    .line 1154
    goto/16 :goto_0

    .line 1156
    :cond_2b
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAcceptSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1208
    :cond_2c
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1209
    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mModifyVCCallButton:Landroid/widget/ImageButton;

    .line 1210
    iget-object v0, p0, Lcom/android/phone/CallCard;->mModifyVCCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2d

    .line 1211
    iget-object v0, p0, Lcom/android/phone/CallCard;->mModifyVCCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    :cond_2d
    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mHDVoice:Landroid/widget/ImageView;

    .line 1214
    const v0, 0x7f0a007d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryHDVoice:Landroid/widget/ImageView;

    goto/16 :goto_2

    .line 1215
    :cond_2e
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1218
    invoke-virtual {p0, v8}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mHDVoiceText:Landroid/widget/TextView;

    goto/16 :goto_2
.end method

.method protected onHideShowOperation()V
    .locals 1

    .prologue
    .line 3290
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3291
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->onHideShowOperation()V

    .line 3293
    :cond_0
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f020204

    const/4 v4, 0x1

    .line 3405
    const-string v0, "CallCard"

    const-string v1, "onImageLoadComplete"

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3406
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3407
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 3413
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3418
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    .line 3420
    check-cast p4, Lcom/android/phone/CallCard$AsyncLoadCookie;

    .line 3421
    iget-object v0, p4, Lcom/android/phone/CallCard$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 3422
    iget-object v1, p4, Lcom/android/phone/CallCard$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 3423
    iget-object v2, p4, Lcom/android/phone/CallCard$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 3425
    const-string v3, "ecid_enable"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v3, :cond_3

    .line 3434
    :goto_1
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 3435
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 3456
    :cond_0
    :goto_2
    if-nez p1, :cond_1

    .line 3457
    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 3459
    :cond_1
    return-void

    .line 3416
    :cond_2
    const-string v0, "CallCard"

    const-string v1, "Person Uri isn\'t available while Image is successfully loaded."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3427
    :cond_3
    iput-object p2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 3428
    iput-object p3, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    .line 3429
    iput-boolean v4, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    goto :goto_1

    .line 3436
    :cond_4
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 3437
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 3439
    :cond_5
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3440
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3441
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

    .line 3444
    invoke-direct {p0, v1, v5}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 3447
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3448
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

    .line 3451
    invoke-direct {p0, v1, v5}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_2
.end method

.method onPause()V
    .locals 1

    .prologue
    .line 753
    invoke-direct {p0}, Lcom/android/phone/CallCard;->isVideoCallWidgetVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->onPause()V

    .line 756
    :cond_0
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v4, 0x0

    .line 3353
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

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3355
    instance-of v0, p2, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_4

    .line 3359
    const-string v0, "callerinfo query complete, updating ui from displayMainCallStatus()"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v6, p2

    .line 3362
    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 3363
    .local v6, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 3364
    .local v5, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    .line 3365
    .local v8, phoneType:I
    const/4 v0, 0x2

    if-ne v8, v0, :cond_0

    .line 3366
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 3369
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v6, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v7

    .line 3372
    .local v7, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .line 3373
    .local v2, numPresentation:I
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .line 3374
    .local v3, namPresentation:I
    if-eqz v6, :cond_1

    .line 3376
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 3377
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    .line 3379
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onQueryComplete: NumberPresentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "namPresentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contactExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 3386
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_3

    .line 3387
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .end local v2           #numPresentation:I
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .end local v3           #namPresentation:I
    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 3391
    :goto_0
    invoke-direct {p0, v5}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 3397
    .end local v5           #call:Lcom/android/internal/telephony/Call;
    .end local v6           #conn:Lcom/android/internal/telephony/Connection;
    .end local v7           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v8           #phoneType:I
    .end local p2
    :cond_2
    :goto_1
    return-void

    .line 3389
    .restart local v2       #numPresentation:I
    .restart local v3       #namPresentation:I
    .restart local v5       #call:Lcom/android/internal/telephony/Call;
    .restart local v6       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v7       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v8       #phoneType:I
    .restart local p2
    :cond_3
    iget-object v1, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 3393
    .end local v2           #numPresentation:I
    .end local v3           #namPresentation:I
    .end local v5           #call:Lcom/android/internal/telephony/Call;
    .end local v6           #conn:Lcom/android/internal/telephony/Connection;
    .end local v7           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v8           #phoneType:I
    :cond_4
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 3394
    const-string v0, "callerinfo query complete, updating ui from ongoing or onhold"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3395
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {p3, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .parameter "timeElapsed"

    .prologue
    .line 761
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 762
    return-void
.end method

.method public resetCallCardAnimation()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 536
    const-string v0, "resetCallCardAnimation"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    move v0, v1

    .line 538
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallCard;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 539
    :goto_1
    iget-object v3, p0, Lcom/android/phone/CallCard;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 540
    iget-object v3, p0, Lcom/android/phone/CallCard;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 538
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_1
    return-void
.end method

.method resetCallTime(Lcom/android/internal/telephony/Phone;)V
    .locals 9
    .parameter "phone"

    .prologue
    const/4 v8, 0x1

    .line 6850
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetCallTime()... phone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 6852
    const/4 v1, 0x0

    .line 6853
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    const/4 v3, 0x1

    .line 6854
    .local v3, isResetTime:Z
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 6855
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    move-object v0, v2

    .line 6856
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 6857
    .local v4, phoneType:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 6858
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5}, Lcom/android/phone/CallCard;->isBlockResetTime(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6859
    const/4 v3, 0x0

    .line 6861
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 6868
    :goto_0
    if-eqz v1, :cond_2

    .line 6869
    if-eqz v3, :cond_1

    .line 6870
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->resetConnectTimeReal()V

    .line 6871
    :cond_1
    const-string v5, "resetConnectTimeReal()"

    invoke-direct {p0, v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 6873
    :cond_2
    iput-boolean v8, p0, Lcom/android/phone/CallCard;->mIsReset:Z

    .line 6874
    return-void

    .line 6862
    :cond_3
    if-ne v4, v8, :cond_4

    .line 6863
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 6866
    :cond_4
    const-string v5, "CallCard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method protected resumeVideo()V
    .locals 1

    .prologue
    .line 3199
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3200
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->resumeVideo()V

    .line 3202
    :cond_0
    return-void
.end method

.method public setAcceptViaSpeakerBtn(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 7237
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAcceptSpeakerButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mAcceptSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7238
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAcceptSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 7240
    :cond_0
    return-void
.end method

.method public setAutoAnswered(Z)V
    .locals 4
    .parameter "autoAnswered"

    .prologue
    .line 7093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoAnswered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 7094
    iget-object v1, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    const-string v2, "com.android.phone.auto_answer_memo_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7095
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "isAutoAnswered"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7096
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7097
    return-void
.end method

.method public setGuidanceMsgPlaying(Z)V
    .locals 4
    .parameter "isGuidance"

    .prologue
    .line 7122
    iget-object v1, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    const-string v2, "com.android.phone.auto_answer_memo_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7123
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "isGuidanceMsgPlaying"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7125
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 747
    return-void
.end method

.method setSecondaryCallClickable(Z)V
    .locals 0
    .parameter "clickable"

    .prologue
    .line 4611
    return-void
.end method

.method shouldShowHeadsetToastForExtraVol()Z
    .locals 4

    .prologue
    .line 770
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v0

    .line 771
    .local v0, hasHeadset:Z
    iget-object v3, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    .line 772
    .local v1, isSpeakerON:Z
    const/4 v2, 0x0

    .line 774
    .local v2, result:Z
    move v2, v0

    .line 776
    if-eqz v1, :cond_0

    .line 777
    const/4 v2, 0x0

    .line 780
    :cond_0
    return v2
.end method

.method public showAnswerMemoRecordingPhoto()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7147
    invoke-virtual {p0, v2}, Lcom/android/phone/CallCard;->setGuidanceMsgPlaying(Z)V

    .line 7148
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsMemoImageView:Landroid/widget/ImageView;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7149
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 7150
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 7152
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsMemoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7153
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsweringMemo:Landroid/widget/TextView;

    const v1, 0x7f0908eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7154
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsweringMemo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7155
    return-void
.end method

.method public showGuidancePlayingPhoto()V
    .locals 3

    .prologue
    const/16 v1, 0x82

    const/4 v2, 0x0

    .line 7165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->setGuidanceMsgPlaying(Z)V

    .line 7166
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7167
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    .line 7169
    iput v2, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    .line 7171
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    .line 7172
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 7174
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsMemoImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 7175
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsMemoImageView:Landroid/widget/ImageView;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7176
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsMemoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7178
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsweringMemo:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 7179
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsweringMemo:Landroid/widget/TextView;

    const v1, 0x7f0908ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7180
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAnsweringMemo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7182
    :cond_3
    return-void
.end method

.method showIncomingPopupForSecondCall(Lcom/android/internal/telephony/Call$State;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 990
    iget-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCallPopup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1014
    :goto_0
    return-void

    .line 992
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 994
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 995
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_2

    if-ne p2, v5, :cond_2

    .line 996
    const v1, 0x7f0907c9

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->updateIncomingPopupMsg(I)V

    .line 1004
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v1, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1005
    iget-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCallPopup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 997
    :cond_2
    if-eq p2, v4, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    const/4 v2, 0x5

    if-eq p2, v2, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1001
    :cond_3
    const v1, 0x7f0907c8

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->updateIncomingPopupMsg(I)V

    goto :goto_1

    .line 1006
    :cond_4
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDualInCallState()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDualIncomingCall()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1010
    iget-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCallPopup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1012
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCallPopup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public startMinuteTone(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .parameter "mPhone"

    .prologue
    .line 6878
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 6879
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    const-string v0, "min_minder"

    .line 6881
    .local v0, MINUTE_MINDER:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "min_minder"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 6882
    .local v1, minuteMinderTone:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startMinuteTone, mCallTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 6883
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 6884
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v3}, Lcom/android/phone/CallTime;->isMinuteMinderLaunched()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6885
    const-string v3, "already start when dialing out"

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 6886
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->stopMinuteMinderAlarm()V

    .line 6887
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    .line 6898
    :cond_0
    :goto_0
    return-void

    .line 6890
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 6891
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v3}, Lcom/android/phone/CallTime;->reset()V

    .line 6892
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v3}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6893
    const-string v3, "startMinuteMinderAlarm()"

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 6894
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    goto :goto_0
.end method

.method public stopCallCardAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x8c

    const/16 v2, 0x82

    .line 590
    const-string v0, "stopCallCardAnimation"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 591
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    :cond_1
    return-void
.end method

.method public stopCallCardAnimationForMemoRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x82

    .line 606
    const-string v0, "stopCallCardAnimationForMemoRecording"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 607
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 609
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/CallCard;->mCurrentAnimationType:I

    .line 610
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I

    .line 612
    :cond_0
    return-void
.end method

.method public stopMinuteMinderAlarm()V
    .locals 1

    .prologue
    .line 7438
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->stopMinuteMinderAlarm()V

    .line 7439
    return-void
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 767
    return-void
.end method

.method protected switchCamera()V
    .locals 1

    .prologue
    .line 3281
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3282
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->onClickSwitchCamera()V

    .line 3284
    :cond_0
    return-void
.end method

.method toggleExtraVolBtn()V
    .locals 5

    .prologue
    const v4, 0x7f09039b

    const/4 v3, 0x1

    .line 784
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 785
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v1

    .line 787
    .local v1, mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->shouldShowHeadsetToastForExtraVol()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 788
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    .line 799
    :goto_0
    return-void

    .line 789
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 790
    const v2, 0x7f09039c

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_0

    .line 791
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isHacEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 793
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_0

    .line 795
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v4, v2, v3}, Lcom/android/phone/PhoneUtils;->turnOnExtraVol(Landroid/content/Context;ZZ)V

    .line 796
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 797
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f090380

    :goto_2
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_0

    .line 795
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 797
    :cond_4
    const v2, 0x7f09037f

    goto :goto_2
.end method

.method updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "call"

    .prologue
    .line 3944
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 3945
    .local v0, duration:J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 3948
    return-void
.end method

.method updateIncomingPopupMsg(I)V
    .locals 2
    .parameter

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 935
    const-string v0, ""

    .line 936
    if-eqz v1, :cond_0

    .line 937
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 940
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mIncomingCallPopupMsg:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 941
    iget-object v1, p0, Lcom/android/phone/CallCard;->mIncomingCallPopupMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 944
    :cond_1
    const-string v0, "updateIncomingPopupMsg"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 945
    return-void
.end method

.method updateMemoRecordTime()V
    .locals 5

    .prologue
    .line 7249
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7250
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7251
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->getRecordTime()J

    move-result-wide v0

    .line 7252
    iget-object v2, p0, Lcom/android/phone/CallCard;->memoRecInfo:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallCard;->memoRecordTime:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 7253
    iget-object v2, p0, Lcom/android/phone/CallCard;->memoRecordTime:Landroid/widget/TextView;

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-static {v0, v1}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7257
    :cond_0
    return-void
.end method

.method updateMySoundBtn(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 802
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 804
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_3

    .line 805
    const-string v1, "support_easy_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 809
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 882
    :cond_3
    :goto_0
    return-void

    .line 813
    :cond_4
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 814
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDualInCallState()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 815
    iget-boolean v0, p0, Lcom/android/phone/CallCard;->isMySoundButtonLayoutChanged:Z

    if-nez v0, :cond_5

    .line 816
    const-string v0, "change layout of MySoundButton for DUOS"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 817
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 819
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/android/phone/CallCard;->mMySoundTopMargin:I

    .line 820
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v1, p0, Lcom/android/phone/CallCard;->mMySoundHeight:I

    .line 821
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v1, p0, Lcom/android/phone/CallCard;->mMySoundWidth:I

    .line 823
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 824
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 825
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 826
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 828
    iput-boolean v2, p0, Lcom/android/phone/CallCard;->isMySoundButtonLayoutChanged:Z

    .line 844
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoiceCallEq()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mInCallScreen.isImsRegisteredOverWifi():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isImsRegisteredOverWifi()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " call.getPhone().getPhoneType():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 860
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isImsRegisteredOverWifi()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 862
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 865
    :cond_6
    const-string v0, "answering_call_in_external_screen"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 866
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isHardKeyboardOpened()Z

    move-result v0

    .line 867
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 874
    :cond_7
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 875
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 876
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 831
    :cond_8
    iget-boolean v0, p0, Lcom/android/phone/CallCard;->isMySoundButtonLayoutChanged:Z

    if-eqz v0, :cond_5

    .line 832
    const-string v0, "recover layout of MySoundButton for DUOS"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 833
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 835
    iget v1, p0, Lcom/android/phone/CallCard;->mMySoundTopMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 836
    iget v1, p0, Lcom/android/phone/CallCard;->mMySoundHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 837
    iget v1, p0, Lcom/android/phone/CallCard;->mMySoundWidth:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 838
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    iput-boolean v3, p0, Lcom/android/phone/CallCard;->isMySoundButtonLayoutChanged:Z

    goto/16 :goto_1
.end method

.method updateRecordTime()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x3e8

    .line 6761
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneVoiceRecorder;->getRecordTime()J

    move-result-wide v0

    .line 6762
    .local v0, recordElapsed:J
    iget-object v3, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallCard;->mRecordTime:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 6763
    div-long v3, v0, v5

    long-to-int v2, v3

    .line 6764
    .local v2, tempRecord:I
    const/16 v3, 0xe10

    if-ne v2, v3, :cond_0

    .line 6765
    iget-object v3, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 6767
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallCard;->mRecordTime:Landroid/widget/TextView;

    div-long v4, v0, v5

    invoke-static {v4, v5}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6769
    .end local v2           #tempRecord:I
    :cond_1
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter

    .prologue
    .line 1268
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

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1269
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1270
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreenActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1271
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    .line 1272
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1273
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateState() state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1282
    :cond_1
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1283
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    .line 1284
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1285
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1286
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1302
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    .line 1303
    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 1305
    const-string v5, "phone_kk_tablet_gui"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1306
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1316
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- updateState: !!!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 1317
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_a

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1322
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    .line 1323
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1324
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1325
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    .line 1332
    :cond_3
    :goto_2
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1333
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1334
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->invisibleMemoRecInfoView()V

    .line 1421
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    if-eqz v0, :cond_5

    .line 1422
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 1423
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1428
    :cond_5
    :goto_4
    return-void

    .line 1288
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    .line 1289
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1290
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1291
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto/16 :goto_0

    .line 1308
    :cond_7
    invoke-direct {p0, v3, v1}, Lcom/android/phone/CallCard;->updateTabletCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 1328
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->visibleRecInfoView()V

    goto :goto_2

    .line 1337
    :cond_9
    const-string v0, "visibleMemoRecInfoView1 ="

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->visibleMemoRecInfoView()V

    goto :goto_3

    .line 1342
    :cond_a
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_10

    .line 1352
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    .line 1353
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1354
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1355
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1356
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    .line 1365
    :cond_c
    :goto_5
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1366
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1367
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->invisibleMemoRecInfoView()V

    goto/16 :goto_3

    .line 1358
    :cond_d
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->visibleRecInfoView()V

    goto :goto_5

    .line 1361
    :cond_e
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    goto :goto_5

    .line 1370
    :cond_f
    const-string v0, "visibleMemoRecInfoView2 ="

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->visibleMemoRecInfoView()V

    goto/16 :goto_3

    .line 1378
    :cond_10
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v0, v0, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    if-eqz v0, :cond_12

    .line 1386
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateAlreadyDisconnected(Lcom/android/internal/telephony/CallManager;)V

    .line 1414
    :cond_11
    :goto_6
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1415
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1416
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->invisibleMemoRecInfoView()V

    goto/16 :goto_3

    .line 1400
    :cond_12
    const-string v0, "feature_kdi"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1402
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v4, v0, :cond_11

    .line 1403
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_6

    .line 1405
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    .line 1406
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->stopMinuteMinderAlarm()V

    .line 1407
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1408
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1409
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    goto :goto_6

    .line 1425
    :cond_14
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_4
.end method

.method public updateTotalCallTime()V
    .locals 1

    .prologue
    .line 6612
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->updateTotalCallTime(Lcom/android/internal/telephony/Call;)V

    .line 6613
    return-void
.end method

.method public updateTotalCallTime(Lcom/android/internal/telephony/Call;)V
    .locals 11
    .parameter

    .prologue
    .line 6617
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 6618
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v1

    aget-object v0, v0, v1

    .line 6622
    :goto_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 6623
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 6625
    const-wide/16 v0, 0x0

    .line 6626
    invoke-static {v2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v4

    .line 6627
    invoke-static {v3}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    .line 6632
    const/4 v6, 0x4

    new-array v6, v6, [B

    .line 6635
    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string v8, "/efs/total_call_time"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6636
    if-nez v7, :cond_2

    .line 6637
    const-string v0, "CallCard"

    const-string v1, "NullPointer"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 6693
    :cond_0
    :goto_1
    return-void

    .line 6620
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 6639
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    .line 6640
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 6641
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "chmod 664 /efs/total_call_time"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 6642
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 6666
    :cond_3
    :goto_2
    const-wide/16 v8, 0x1c20

    cmp-long v8, v0, v8

    if-gez v8, :cond_0

    .line 6669
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_7

    .line 6670
    const-wide/16 v2, 0x3e8

    div-long v2, v4, v2

    add-long/2addr v0, v2

    .line 6674
    :cond_4
    :goto_3
    const-wide/16 v2, 0x1c20

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    .line 6675
    const-wide/16 v0, 0x1c20

    .line 6678
    :cond_5
    :try_start_2
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6680
    const/4 v3, 0x0

    const-wide/16 v4, 0xff

    and-long/2addr v4, v0

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v6, v3

    .line 6681
    const/4 v3, 0x1

    const/16 v4, 0x8

    shr-long v4, v0, v4

    const-wide/16 v7, 0xff

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v6, v3

    .line 6682
    const/4 v3, 0x2

    const/16 v4, 0x10

    shr-long v4, v0, v4

    const-wide/16 v7, 0xff

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v6, v3

    .line 6683
    const/4 v3, 0x3

    const/16 v4, 0x18

    shr-long/2addr v0, v4

    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v6, v3

    .line 6685
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {v2, v6, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 6686
    if-eqz v2, :cond_0

    .line 6687
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 6688
    :catch_0
    move-exception v0

    .line 6689
    const-string v1, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTotalCallTime: [Write] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6644
    :cond_6
    :try_start_3
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6645
    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {v8, v6, v9, v10}, Ljava/io/InputStream;->read([BII)I

    .line 6647
    const/4 v9, 0x0

    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v0, v9

    .line 6648
    const/4 v9, 0x1

    aget-byte v9, v6, v9

    shl-int/lit8 v9, v9, 0x8

    const v10, 0xff00

    and-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v0, v9

    .line 6649
    const/4 v9, 0x2

    aget-byte v9, v6, v9

    shl-int/lit8 v9, v9, 0x10

    const/high16 v10, 0xff

    and-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v0, v9

    .line 6650
    const/4 v9, 0x3

    aget-byte v9, v6, v9

    shl-int/lit8 v9, v9, 0x18

    const/high16 v10, -0x100

    and-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v0, v9

    .line 6652
    if-eqz v8, :cond_3

    .line 6653
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 6655
    :catch_1
    move-exception v0

    .line 6656
    const-string v1, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTotalCallTime: [Read] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6658
    :catch_2
    move-exception v0

    .line 6659
    const-string v1, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTotalCallTime: [Read] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6661
    :catch_3
    move-exception v0

    .line 6662
    const-string v1, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTotalCallTime: [Create] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6671
    :cond_7
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4

    .line 6672
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    goto/16 :goto_3

    .line 6690
    :catch_4
    move-exception v0

    .line 6691
    const-string v1, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTotalCallTime: [Write] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public updateVCInviteButton(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0e00f1

    const v5, 0x7f0e00b0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7261
    iget-object v0, p0, Lcom/android/phone/CallCard;->mModifyVCCallButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 7303
    :goto_0
    return-void

    .line 7266
    :cond_0
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isAvailableAddUser(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v1, v2

    .line 7270
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mBtnLayoutOnVTScreen:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7271
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_4

    .line 7272
    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7273
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 7274
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 7294
    :goto_2
    iget-object v4, p0, Lcom/android/phone/CallCard;->mBtnLayoutOnVTScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7296
    if-eqz v1, :cond_8

    .line 7297
    iget-object v0, p0, Lcom/android/phone/CallCard;->mModifyVCCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 7298
    iget-object v0, p0, Lcom/android/phone/CallCard;->mModifyVCCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 7275
    :cond_2
    const-string v4, "tablet_device"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7276
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 7277
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 7279
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 7280
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 7283
    :cond_4
    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7284
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 7285
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 7286
    :cond_6
    const-string v4, "tablet_device"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 7287
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 7288
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 7290
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 7291
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 7300
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallCard;->mModifyVCCallButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 7301
    iget-object v0, p0, Lcom/android/phone/CallCard;->mModifyVCCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    move v1, v3

    goto/16 :goto_1
.end method

.method public updateVTinitialized(Z)V
    .locals 0
    .parameter "isInit"

    .prologue
    .line 3275
    iput-boolean p1, p0, Lcom/android/phone/CallCard;->isVTinitialized:Z

    .line 3276
    return-void
.end method

.method visibleMemoRecInfoView()V
    .locals 2

    .prologue
    .line 7208
    const-string v0, "visibleMemoRecInfoView"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;Z)V

    .line 7209
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showMemoRecInfo()V

    .line 7210
    return-void
.end method

.method visibleRecInfoView()V
    .locals 0

    .prologue
    .line 6739
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showRecInfo()V

    .line 6740
    return-void
.end method
