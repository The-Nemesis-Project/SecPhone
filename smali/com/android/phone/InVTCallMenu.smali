.class public abstract Lcom/android/phone/InVTCallMenu;
.super Ljava/lang/Object;
.source "InVTCallMenu.java"


# instance fields
.field protected mApp:Lcom/android/phone/PhoneGlobals;

.field protected mIsTabletDevice:Z

.field protected mMenuSelected:I

.field private mVTCommonFunction:Lcom/android/phone/VTCommonFunction;


# direct methods
.method public constructor <init>(Lcom/android/phone/VTCommonFunction;)V
    .locals 2
    .parameter "vTCommonFunction"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InVTCallMenu;->mMenuSelected:I

    .line 78
    const-string v0, "InVTCallMenu constructor..."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;Z)V

    .line 79
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

    .line 81
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 82
    iput-object p1, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    .line 83
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    .line 85
    return-void
.end method

.method private prepareOptionMenuForEasyMode(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const v8, 0x7f0a0419

    const v7, 0x7f0a0418

    const v6, 0x7f0a0417

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 247
    const-string v3, "incallvtmenu :: prepareOptionMenuForEasyMode()...SUPPORT_EASY_MODE"

    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 248
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 249
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 250
    .local v2, itemId:I
    packed-switch v2, :pswitch_data_0

    .line 298
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 299
    .local v0, etc:Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 248
    .end local v0           #etc:Landroid/view/MenuItem;
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v3, :cond_0

    .line 254
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 260
    :pswitch_2
    const-string v3, "common_volte_vt_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "no_receiver_in_call"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 263
    iget-boolean v3, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v3, :cond_0

    .line 264
    iget-object v3, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 266
    const v3, 0x7f0a041a

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 268
    :cond_1
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 269
    const v3, 0x7f0a041a

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 277
    :pswitch_3
    iget-object v3, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    invoke-interface {v3}, Lcom/android/phone/VTCommonFunction;->isBluetoothAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    invoke-interface {v3}, Lcom/android/phone/VTCommonFunction;->isBluetoothAudioConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    iget-boolean v3, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v3, :cond_0

    .line 280
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 281
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 285
    :cond_2
    iget-boolean v3, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v3, :cond_3

    .line 286
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 287
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 290
    :cond_3
    const-string v3, "kor_cs_vt_ui"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "common_volte_vt_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    :cond_4
    iget-object v3, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    invoke-interface {v3}, Lcom/android/phone/VTCommonFunction;->isBluetoothAvailable()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 292
    :cond_5
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 304
    .end local v2           #itemId:I
    :cond_6
    iget v3, p0, Lcom/android/phone/InVTCallMenu;->mMenuSelected:I

    packed-switch v3, :pswitch_data_1

    .line 313
    :goto_2
    return v5

    .line 306
    :pswitch_4
    const v3, 0x7f0a042b

    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_2

    .line 309
    :pswitch_5
    const v3, 0x7f0a040d

    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 310
    const v3, 0x7f0a042b

    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_2

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0416
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 304
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected clearVTCommonFunctionReference()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    .line 89
    return-void
.end method

.method protected getPreviewEffectState()Lcom/android/phone/PreviewEffectState;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v0, v0, Lcom/android/phone/InVTCallState;->previewEffectState:Lcom/android/phone/PreviewEffectState;

    return-object v0
.end method

.method abstract isDialerOpened()Z
.end method

.method abstract isFarEndRecord()Z
.end method

.method abstract isNearEndRecord()Z
.end method

.method abstract isShowMe()Z
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 369
    const-string v0, "InVTCallMenu"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void
.end method

.method protected log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 373
    const-string v0, "InVTCallMenu"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 374
    return-void
.end method

.method abstract mdmGetAllowCamera()Z
.end method

.method abstract mdmIsCameraEnabled(Z)Z
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 317
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

    .line 318
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

    .line 319
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

    .line 321
    iget-object v2, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    if-nez v2, :cond_0

    .line 322
    const-string v2, "InVTCallMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "optionsItemSelected("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), but null mVTCommonFunction!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 343
    :goto_0
    return v0

    .line 326
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 339
    const-string v1, "InVTCallMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "optionsItemSelected:  unexpected View ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (MenuItem = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    invoke-interface {v0}, Lcom/android/phone/VTCommonFunction;->onOpenCloseDialpad()V

    :goto_1
    move v0, v1

    .line 343
    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    invoke-interface {v0}, Lcom/android/phone/VTCommonFunction;->toggleBluetooth()V

    goto :goto_1

    .line 336
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    invoke-interface {v0}, Lcom/android/phone/VTCommonFunction;->toggleSpeaker()V

    goto :goto_1

    .line 326
    :pswitch_data_0
    .packed-switch 0x7f0a0416
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 13
    .parameter "menu"

    .prologue
    const v12, 0x7f0a0419

    const v11, 0x7f0a0418

    const v10, 0x7f0a0417

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    const-string v8, "prepareOptionsMenu()..."

    invoke-virtual {p0, v8}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 94
    iget-boolean v8, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-eqz v8, :cond_0

    .line 95
    iget-object v8, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v9, :cond_0

    .line 242
    :goto_0
    return v6

    .line 100
    :cond_0
    const-string v8, "support_easy_mode"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 102
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallMenu;->prepareOptionMenuForEasyMode(Landroid/view/Menu;)Z

    move-result v6

    .line 103
    .local v6, result:Z
    goto :goto_0

    .line 106
    .end local v6           #result:Z
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v8

    if-ge v0, v8, :cond_14

    .line 107
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 108
    .local v1, itemId:I
    sparse-switch v1, :sswitch_data_0

    .line 106
    :cond_2
    :goto_2
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :sswitch_1
    const-string v8, "support_kk_vt_tablet_multiwindow"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 112
    const-string v8, "no_receiver_in_call"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "vt_cmcc_operator_open_close_camera"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 114
    const v8, 0x7f0a0365

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 115
    .local v4, mHideMe:Landroid/view/MenuItem;
    const v8, 0x7f0a0414

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 116
    .local v5, mShowMe:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->isShowMe()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 117
    const-string v8, "Adding HIDE Me to Menu"

    invoke-virtual {p0, v8}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 118
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 121
    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->mdmGetAllowCamera()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0, v6}, Lcom/android/phone/InVTCallMenu;->mdmIsCameraEnabled(Z)Z

    move-result v8

    if-nez v8, :cond_4

    .line 122
    :cond_3
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 136
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->isNearEndRecord()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 137
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 124
    :cond_5
    const-string v8, "Adding SHOW Me to Menu"

    invoke-virtual {p0, v8}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 127
    iget-boolean v8, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v8, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->isDialerOpened()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->isFarEndRecord()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 128
    :cond_6
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 129
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 131
    :cond_7
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 132
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 139
    :cond_8
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 146
    .end local v4           #mHideMe:Landroid/view/MenuItem;
    .end local v5           #mShowMe:Landroid/view/MenuItem;
    :sswitch_2
    iget-boolean v8, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-eqz v8, :cond_2

    const-string v8, "support_kk_vt_tablet_multiwindow"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 147
    :cond_9
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 152
    :sswitch_3
    iget-object v8, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    invoke-interface {v8}, Lcom/android/phone/VTCommonFunction;->isBluetoothAvailable()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    invoke-interface {v8}, Lcom/android/phone/VTCommonFunction;->isBluetoothAudioConnected()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 154
    iget-boolean v8, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-eqz v8, :cond_a

    iget-boolean v8, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-eqz v8, :cond_2

    const-string v8, "support_kk_vt_tablet_multiwindow"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 155
    :cond_a
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 156
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 160
    :cond_b
    iget-boolean v8, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-eqz v8, :cond_c

    iget-boolean v8, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-eqz v8, :cond_d

    const-string v8, "support_kk_vt_tablet_multiwindow"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 161
    :cond_c
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 162
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 165
    :cond_d
    const-string v8, "kor_cs_vt_ui"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "common_volte_vt_kor"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 166
    :cond_e
    iget-object v8, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    invoke-interface {v8}, Lcom/android/phone/VTCommonFunction;->isBluetoothAvailable()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 167
    :cond_f
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 173
    :sswitch_4
    const-string v8, "common_volte_vt_kor"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "no_receiver_in_call"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 176
    iget-boolean v8, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v8, :cond_2

    .line 177
    iget-object v8, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 178
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 179
    const v8, 0x7f0a041a

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 181
    :cond_10
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 182
    const v8, 0x7f0a041a

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 188
    :sswitch_5
    const-string v8, "kor_qc_cs_vt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "common_volte_vt_kor"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "vt_theme_feature_support"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->getPreviewEffectState()Lcom/android/phone/PreviewEffectState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PreviewEffectState;->isShowingEmotionalAni()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 192
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 194
    :cond_11
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 195
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->isShowMe()Z

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 200
    :sswitch_6
    const-string v8, "kor_qc_cs_vt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "common_volte_vt_kor"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "vt_theme_feature_support"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->getPreviewEffectState()Lcom/android/phone/PreviewEffectState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PreviewEffectState;->isShowingThemeView()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 204
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 206
    :cond_12
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 207
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->isShowMe()Z

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 213
    :sswitch_7
    const-string v8, "kor_qc_cs_vt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "common_volte_vt_kor"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "vt_theme_feature_support"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 216
    const v8, 0x7f0a0421

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 217
    .local v3, mCartoonViewOn:Landroid/view/MenuItem;
    const v8, 0x7f0a0422

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 218
    .local v2, mCartoonViewOff:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->getPreviewEffectState()Lcom/android/phone/PreviewEffectState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PreviewEffectState;->isShowingCartoonView()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 219
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 220
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 221
    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->isShowMe()Z

    move-result v8

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 223
    :cond_13
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 224
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 225
    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->isShowMe()Z

    move-result v8

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 232
    .end local v1           #itemId:I
    .end local v2           #mCartoonViewOff:Landroid/view/MenuItem;
    .end local v3           #mCartoonViewOn:Landroid/view/MenuItem;
    :cond_14
    iget v8, p0, Lcom/android/phone/InVTCallMenu;->mMenuSelected:I

    packed-switch v8, :pswitch_data_0

    :goto_4
    move v6, v7

    .line 242
    goto/16 :goto_0

    .line 234
    :pswitch_0
    const v8, 0x7f0a042b

    invoke-interface {p1, v8, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_4

    .line 237
    :pswitch_1
    const v8, 0x7f0a040d

    invoke-interface {p1, v8, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 238
    const v8, 0x7f0a042b

    invoke-interface {p1, v8, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_4

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0365 -> :sswitch_0
        0x7f0a0414 -> :sswitch_1
        0x7f0a0416 -> :sswitch_2
        0x7f0a0417 -> :sswitch_0
        0x7f0a0418 -> :sswitch_3
        0x7f0a0419 -> :sswitch_0
        0x7f0a041a -> :sswitch_4
        0x7f0a041f -> :sswitch_5
        0x7f0a0420 -> :sswitch_6
        0x7f0a0421 -> :sswitch_0
        0x7f0a0422 -> :sswitch_7
    .end sparse-switch

    .line 232
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setMenuSelected(I)V
    .locals 0
    .parameter "newVal"

    .prologue
    .line 347
    iput p1, p0, Lcom/android/phone/InVTCallMenu;->mMenuSelected:I

    .line 348
    return-void
.end method
