.class public Lcom/android/phone/ManageConferenceUtils;
.super Ljava/lang/Object;
.source "ManageConferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;
    }
.end annotation


# instance fields
.field private mButtonManageConferenceDone:Landroid/view/View;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mConferenceCallList:[Landroid/view/ViewGroup;

.field private mConferenceTime:Landroid/widget/Chronometer;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mManageConferencePanel:Landroid/view/ViewGroup;

.field private mNumCallersInConference:I


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-string v0, "ManageConferenceUtils constructor..."

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 100
    iput-object p2, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ManageConferenceUtils;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ManageConferenceUtils;)[Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 386
    const-string v0, "ManageConferenceUtils"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 390
    const-string v0, "ManageConferenceUtils"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 391
    return-void
.end method


# virtual methods
.method public final displayCallerImageForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "ci"
    .parameter "callerImageView"

    .prologue
    .line 339
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    const v0, 0x7f020205

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public final displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 6
    .parameter "ci"
    .parameter "presentation"
    .parameter "nameTextView"
    .parameter "numberTypeTextView"
    .parameter "numberTextView"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 300
    const-string v0, ""

    .line 301
    .local v0, callerName:Ljava/lang/String;
    const-string v1, ""

    .line 302
    .local v1, callerNumber:Ljava/lang/String;
    const-string v2, ""

    .line 303
    .local v2, callerNumberType:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 304
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 305
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 308
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_0
    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 327
    invoke-virtual {p5, v5}, Landroid/view/View;->setVisibility(I)V

    .line 328
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 335
    :goto_1
    invoke-virtual {p4, v4}, Landroid/view/View;->setVisibility(I)V

    .line 336
    return-void

    .line 310
    :cond_1
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 312
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    goto :goto_0

    .line 314
    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 317
    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 318
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto :goto_0

    .line 330
    :cond_4
    invoke-virtual {p5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 331
    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public endConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> ENDING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 356
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 360
    return-void
.end method

.method public getNumCallersInConference()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    return v0
.end method

.method public initManageConferencePanel()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 104
    const-string v3, "initManageConferencePanel()..."

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;Z)V

    .line 105
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v3, :cond_3

    .line 106
    const-string v3, "initManageConferencePanel: first-time initialization!"

    invoke-direct {p0, v3}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, stub:Landroid/view/ViewStub;
    const-string v3, "phone_kk_tablet_gui"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->isPenMultiWindow()Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0a01f9

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #stub:Landroid/view/ViewStub;
    check-cast v1, Landroid/view/ViewStub;

    .line 116
    .restart local v1       #stub:Landroid/view/ViewStub;
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 118
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0a025b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 120
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 121
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t find manageConferencePanel!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0a01f8

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #stub:Landroid/view/ViewStub;
    check-cast v1, Landroid/view/ViewStub;

    .restart local v1       #stub:Landroid/view/ViewStub;
    goto :goto_0

    .line 125
    :cond_1
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0a025c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Chronometer;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    .line 127
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v5, 0x7f09017f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 130
    new-array v3, v6, [Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    .line 132
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    .line 134
    .local v2, viewGroupIdList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v6, :cond_2

    .line 135
    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    aget v5, v2, v0

    invoke-virtual {v3, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_2
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0a025f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mButtonManageConferenceDone:Landroid/view/View;

    .line 140
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mButtonManageConferenceDone:Landroid/view/View;

    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .end local v0           #i:I
    .end local v1           #stub:Landroid/view/ViewStub;
    .end local v2           #viewGroupIdList:[I
    :cond_3
    return-void

    .line 132
    nop

    :array_0
    .array-data 0x4
        0x61t 0x2t 0xat 0x7ft
        0x62t 0x2t 0xat 0x7ft
        0x63t 0x2t 0xat 0x7ft
        0x64t 0x2t 0xat 0x7ft
        0x65t 0x2t 0xat 0x7ft
    .end array-data
.end method

.method public separateConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> SEPARATING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 372
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    .line 382
    return-void
.end method

.method public setPanelVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_0
    return-void

    .line 149
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public startConferenceTime(J)V
    .locals 1
    .parameter "base"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 159
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 161
    :cond_0
    return-void
.end method

.method public stopConferenceTime()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 170
    :cond_0
    return-void
.end method

.method public updateManageConferencePanel(Ljava/util/List;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 185
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    iput v10, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    .line 186
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateManageConferencePanel()... num connections in conference = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v9}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;Z)V

    .line 191
    iget-object v10, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .line 192
    .local v2, hasActiveCall:Z
    iget-object v10, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    .line 193
    .local v4, hasHoldingCall:Z
    if-eqz v2, :cond_0

    if-nez v4, :cond_3

    :cond_0
    move v0, v9

    .line 195
    .local v0, canSeparate:Z
    :goto_0
    const-string v10, "feature_chn_duos"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 196
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getInCallScreenActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 197
    .local v7, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_4

    move v3, v9

    .line 198
    .local v3, hasActiveCallduos:Z
    :goto_1
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_5

    move v5, v9

    .line 199
    .local v5, hasHoldingCallduos:Z
    :goto_2
    if-eqz v3, :cond_1

    if-nez v5, :cond_6

    :cond_1
    move v0, v9

    .line 202
    .end local v3           #hasActiveCallduos:Z
    .end local v5           #hasHoldingCallduos:Z
    .end local v7           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    :goto_3
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    const/4 v9, 0x5

    if-ge v6, v9, :cond_8

    .line 203
    iget v9, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    if-ge v6, v9, :cond_7

    .line 205
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 206
    .local v1, connection:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0, v6, v1, v0}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    .line 202
    .end local v1           #connection:Lcom/android/internal/telephony/Connection;
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .end local v0           #canSeparate:Z
    .end local v6           #i:I
    :cond_3
    move v0, v8

    .line 193
    goto :goto_0

    .restart local v0       #canSeparate:Z
    .restart local v7       #phone:Lcom/android/internal/telephony/Phone;
    :cond_4
    move v3, v8

    .line 197
    goto :goto_1

    .restart local v3       #hasActiveCallduos:Z
    :cond_5
    move v5, v8

    .line 198
    goto :goto_2

    .restart local v5       #hasHoldingCallduos:Z
    :cond_6
    move v0, v8

    .line 199
    goto :goto_3

    .line 209
    .end local v3           #hasActiveCallduos:Z
    .end local v5           #hasHoldingCallduos:Z
    .end local v7           #phone:Lcom/android/internal/telephony/Phone;
    .restart local v6       #i:I
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {p0, v6, v9, v8}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    goto :goto_5

    .line 212
    :cond_8
    return-void
.end method

.method public updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V
    .locals 13
    .parameter "i"
    .parameter "connection"
    .parameter "canSeparate"

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateManageConferenceRow("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")...  connection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 230
    if-eqz p2, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f0a00ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 236
    .local v7, endButton:Landroid/view/View;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f0a00c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 238
    .local v11, separateButton:Landroid/view/View;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f0a00cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 240
    .local v3, nameTextView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f0a00cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 242
    .local v5, numberTextView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f0a00cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 245
    .local v4, numberTypeTextView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f0a00ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 248
    .local v6, callerImageView:Landroid/widget/ImageView;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- button: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nameTextView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 251
    new-instance v8, Lcom/android/phone/ManageConferenceUtils$1;

    invoke-direct {v8, p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils$1;-><init>(Lcom/android/phone/ManageConferenceUtils;ILcom/android/internal/telephony/Connection;)V

    .line 258
    .local v8, endThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    if-eqz p3, :cond_0

    .line 261
    new-instance v12, Lcom/android/phone/ManageConferenceUtils$2;

    invoke-direct {v12, p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils$2;-><init>(Lcom/android/phone/ManageConferenceUtils;ILcom/android/internal/telephony/Connection;)V

    .line 268
    .local v12, separateThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .end local v12           #separateThisConnection:Landroid/view/View$OnClickListener;
    :goto_0
    new-instance v10, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;

    invoke-direct {v10, p0, p1}, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;-><init>(Lcom/android/phone/ManageConferenceUtils;I)V

    .line 276
    .local v10, listener:Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0, p2, v10, p2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v9

    .line 279
    .local v9, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - got info from startGetCallerInfo(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 282
    iget-object v1, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/ManageConferenceUtils;->displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 284
    iget-object v0, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v0, v6}, Lcom/android/phone/ManageConferenceUtils;->displayCallerImageForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/ImageView;)V

    .line 289
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTypeTextView:Landroid/widget/TextView;
    .end local v5           #numberTextView:Landroid/widget/TextView;
    .end local v6           #callerImageView:Landroid/widget/ImageView;
    .end local v7           #endButton:Landroid/view/View;
    .end local v8           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v9           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v10           #listener:Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;
    .end local v11           #separateButton:Landroid/view/View;
    :goto_1
    return-void

    .line 271
    .restart local v3       #nameTextView:Landroid/widget/TextView;
    .restart local v4       #numberTypeTextView:Landroid/widget/TextView;
    .restart local v5       #numberTextView:Landroid/widget/TextView;
    .restart local v6       #callerImageView:Landroid/widget/ImageView;
    .restart local v7       #endButton:Landroid/view/View;
    .restart local v8       #endThisConnection:Landroid/view/View$OnClickListener;
    .restart local v11       #separateButton:Landroid/view/View;
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 287
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTypeTextView:Landroid/widget/TextView;
    .end local v5           #numberTextView:Landroid/widget/TextView;
    .end local v6           #callerImageView:Landroid/widget/ImageView;
    .end local v7           #endButton:Landroid/view/View;
    .end local v8           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v11           #separateButton:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
