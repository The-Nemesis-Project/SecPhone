.class public Lcom/android/phone/CallCardCoveredDialog;
.super Ljava/lang/Object;
.source "CallCardCoveredDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;
    }
.end annotation


# instance fields
.field private mCallCardCovered:Lcom/android/phone/CallCardCovered;

.field private mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

.field private mContext:Landroid/content/Context;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;-><init>(Lcom/android/phone/CallCardCoveredDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallCardCoveredDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/CallCardCoveredDialog;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/phone/CallCardCoveredDialog;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/CallCardCoveredDialog;)Lcom/android/phone/CallCardCovered;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/CallCardCoveredDialog;Lcom/android/phone/CallCardCovered;)Lcom/android/phone/CallCardCovered;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/CallCardCoveredDialog;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method


# virtual methods
.method public clearAnswerMemoImageView()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0}, Lcom/android/phone/CallCardCovered;->clearAnswerMemoImageView()V

    .line 301
    return-void
.end method

.method public dismissDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/android/phone/CallCardCoveredDialog;->stopHandlerOfUi()V

    .line 239
    iget-object v1, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 240
    iget-object v1, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 241
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    if-eq v1, v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallCardCoveredDialog;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 244
    :cond_1
    const-string v1, "CallCardCoveredDialog"

    const-string v2, "clearcover popup is dismissed"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_2
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method invisibleMemoRecInfoView()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0}, Lcom/android/phone/CallCardCovered;->invisibleMemoRecInfoView()V

    .line 312
    return-void
.end method

.method public setAutoAnswered(Z)V
    .locals 1
    .parameter "autoAnswered"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallCardCovered;->setAutoAnswered(Z)V

    .line 305
    return-void
.end method

.method public setCallCardCoveredBackgound()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0}, Lcom/android/phone/CallCardCovered;->setCallCardCoveredBackgound()V

    .line 268
    :cond_0
    return-void
.end method

.method public setCoverScreenTime(Z)V
    .locals 7
    .parameter "isDialing"

    .prologue
    const-wide/16 v5, 0x0

    const-wide/16 v3, 0x1770

    .line 197
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 202
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_1

    .line 204
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const/16 v4, 0x7530

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 207
    .local v0, currentTimeOutSetValue:I
    const-string v2, "samsung_screen_timeout_incall"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    const-wide/16 v2, 0x7530

    iput-wide v2, v1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 209
    const-wide/16 v2, 0x4e20

    iput-wide v2, v1, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 232
    .end local v0           #currentTimeOutSetValue:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 233
    return-void

    .line 211
    .restart local v0       #currentTimeOutSetValue:I
    :cond_0
    int-to-long v2, v0

    iput-wide v2, v1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_0

    .line 214
    .end local v0           #currentTimeOutSetValue:I
    :cond_1
    const-string v2, "samsung_screen_timeout_incall"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 215
    const-string v2, "clear_cover_enhanced"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    iput-wide v3, v1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 217
    iput-wide v5, v1, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_0

    .line 219
    :cond_2
    iput-wide v3, v1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 220
    iput-wide v5, v1, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_0

    .line 223
    :cond_3
    const-string v2, "clear_cover_enhanced"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 224
    iput-wide v3, v1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 225
    iput-wide v5, v1, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_0

    .line 227
    :cond_4
    iput-wide v3, v1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_0
.end method

.method public setGuidanceMsgPlaying(Z)V
    .locals 1
    .parameter "isGuidance"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallCardCovered;->setAutoAnswered(Z)V

    .line 309
    return-void
.end method

.method public showDialog(Landroid/content/Context;Lcom/android/phone/InCallScreen;)V
    .locals 11
    .parameter "context"
    .parameter "inCallScreen"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 123
    iget-object v6, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_7

    .line 124
    iput-object p2, p0, Lcom/android/phone/CallCardCoveredDialog;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 125
    iget-object v6, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v6, p2}, Lcom/android/phone/CallCardCovered;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 126
    iget-object v6, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x833

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 127
    iget-object v6, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v8, 0x10

    or-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 128
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    if-eq v6, v10, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 130
    :cond_0
    iget-object v6, p0, Lcom/android/phone/CallCardCoveredDialog;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 132
    :cond_1
    const/high16 v3, 0x428

    .line 135
    .local v3, flags:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_2

    .line 136
    const/high16 v6, 0x40

    or-int/2addr v3, v6

    .line 139
    :cond_2
    iget-object v6, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 140
    .local v5, lp:Landroid/view/WindowManager$LayoutParams;
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v6, v3

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 142
    invoke-virtual {p0, v9}, Lcom/android/phone/CallCardCoveredDialog;->setCoverScreenTime(Z)V

    .line 145
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 147
    iget-object v6, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, coverState:Lcom/samsung/android/sdk/cover/ScoverState;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v6, :cond_3

    .line 151
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 153
    :cond_3
    const/4 v2, -0x1

    .line 154
    .local v2, dialogWidth:I
    const/4 v1, -0x1

    .line 155
    .local v1, dialogHeight:I
    if-eqz v0, :cond_4

    .line 157
    const-string v6, "clear_cover_enhanced"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 158
    iget-object v6, p0, Lcom/android/phone/CallCardCoveredDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0179

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 159
    .local v4, height:I
    mul-int/lit8 v1, v4, 0x2

    .line 164
    .end local v4           #height:I
    :cond_4
    :goto_0
    iget-object v6, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 165
    iget-object v6, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 166
    iget-object v6, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object v6, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 168
    iget-object v6, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    .line 169
    const-string v6, "clear_cover_enhanced"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 170
    invoke-virtual {p0}, Lcom/android/phone/CallCardCoveredDialog;->setCallCardCoveredBackgound()V

    .line 172
    :cond_5
    const-string v6, "support_incomingcall_popup_service"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 173
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->stopIncomingPopupService()V

    .line 176
    :cond_6
    iget-object v6, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 178
    iget-object v6, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Lcom/android/phone/CallCardCovered;->disableCoverLockUI(I)V

    .line 192
    const-string v6, "CallCardCoveredDialog"

    const-string v7, "clearcover popup is showed"

    invoke-static {v6, v7, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 194
    .end local v0           #coverState:Lcom/samsung/android/sdk/cover/ScoverState;
    .end local v1           #dialogHeight:I
    .end local v2           #dialogWidth:I
    .end local v3           #flags:I
    .end local v5           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_7
    return-void

    .line 161
    .restart local v0       #coverState:Lcom/samsung/android/sdk/cover/ScoverState;
    .restart local v1       #dialogHeight:I
    .restart local v2       #dialogWidth:I
    .restart local v3       #flags:I
    .restart local v5       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_8
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowWidth()I

    move-result v1

    goto :goto_0
.end method

.method public stopHandlerOfUi()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0}, Lcom/android/phone/CallCardCovered;->stopTimer()V

    .line 262
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0}, Lcom/android/phone/CallCardCovered;->stopCallCardAnimation()V

    .line 263
    return-void
.end method

.method updateMemoRecordTime()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0}, Lcom/android/phone/CallCardCovered;->updateMemoRecordTime()V

    .line 316
    return-void
.end method

.method public updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "callManager"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallCardCovered;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 253
    return-void
.end method
