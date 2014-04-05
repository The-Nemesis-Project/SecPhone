.class Lcom/android/phone/NetworkSetting$3;
.super Landroid/os/Handler;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v8, 0x190

    const/16 v7, 0x12c

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 263
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandler msg.what"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 264
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 471
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 266
    :sswitch_1
    const-string v2, "phone"

    const-string v3, "EVENT_PLMN_REFRESH."

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 267
    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$500(Lcom/android/phone/NetworkSetting;)Landroid/preference/ListPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$500(Lcom/android/phone/NetworkSetting;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 270
    .local v1, defaultSetupDiallog:Landroid/app/Dialog;
    if-eqz v1, :cond_1

    .line 271
    const-string v2, "phone"

    const-string v3, "[NetworkSetting] ATT, Dismiss the Dialog after update of PLMN"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 275
    .end local v1           #defaultSetupDiallog:Landroid/app/Dialog;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->updatePLMNmode()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$600(Lcom/android/phone/NetworkSetting;)V

    goto :goto_0

    .line 280
    :sswitch_2
    const-string v2, "phone"

    const-string v3, "Search completed."

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 281
    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget v4, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v3, v2, v4}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V

    .line 283
    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    const-string v2, "1"

    invoke-static {}, Lcom/android/phone/NetworkSetting;->access$800()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 285
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "0"

    #calls: Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 286
    const-string v2, "phone"

    const-string v3, "EVENT_NETWORK_SCAN_COMPLETED, Set Automatic"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_2
    const-string v2, "network_manual_selection_when_bootup"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBootUpExtra"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 293
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 294
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$1002(Lcom/android/phone/NetworkSetting;Z)Z

    .line 297
    :cond_3
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z
    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;)Z

    move-result v3

    #calls: Lcom/android/phone/NetworkSetting;->enableMobileData(Z)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;Z)V

    goto/16 :goto_0

    .line 305
    :sswitch_3
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "EVENT_NETWORK_SELECTION_DONE hideProgressPanel"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 306
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeDialog(I)V

    .line 307
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 309
    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 310
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "1"

    #calls: Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 313
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 314
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    .line 315
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "manual network selection: failed!"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 317
    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 319
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->handleManualFailCase()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$1300(Lcom/android/phone/NetworkSetting;)V

    .line 324
    :cond_5
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$1400(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    .line 326
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 327
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->ManualSelectionFail:Z
    invoke-static {v2, v5}, Lcom/android/phone/NetworkSetting;->access$1502(Lcom/android/phone/NetworkSetting;Z)Z

    .line 328
    const-string v2, "phone"

    const-string v3, "[NetworkSelection] Manual selection Failed."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z
    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;)Z

    move-result v3

    #calls: Lcom/android/phone/NetworkSetting;->enableMobileData(Z)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;Z)V

    goto/16 :goto_0

    .line 332
    :cond_7
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "manual network selection: succeeded!"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 334
    const-string v2, "usa_gsm_network_setting"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 335
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->handleManualSuccessCase()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$1600(Lcom/android/phone/NetworkSetting;)V

    goto :goto_1

    .line 338
    :cond_8
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 339
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->ManualSelectionFail:Z
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$1502(Lcom/android/phone/NetworkSetting;Z)Z

    .line 342
    :cond_9
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$1700(Lcom/android/phone/NetworkSetting;I)V

    goto :goto_1

    .line 351
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 352
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "0"

    #calls: Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 355
    :cond_a
    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mSetAuto:Z
    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->access$1800(Lcom/android/phone/NetworkSetting;)Z

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_b

    .line 356
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->mSetAuto:Z
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$1802(Lcom/android/phone/NetworkSetting;Z)Z

    .line 357
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z
    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;)Z

    move-result v3

    #calls: Lcom/android/phone/NetworkSetting;->enableMobileData(Z)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;Z)V

    goto/16 :goto_0

    .line 360
    :cond_b
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v7, :cond_e

    .line 361
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "EVENT_AUTO_SELECT_DONE hideProgressPanel"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 362
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->removeDialog(I)V

    .line 367
    :cond_c
    :goto_2
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 369
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 370
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_f

    .line 371
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "automatic network selection: failed!"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 372
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->checkForbiddenNetwork:Z
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$1902(Lcom/android/phone/NetworkSetting;Z)Z

    .line 373
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$1400(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    .line 382
    :cond_d
    :goto_3
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z
    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;)Z

    move-result v3

    #calls: Lcom/android/phone/NetworkSetting;->enableMobileData(Z)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;Z)V

    goto/16 :goto_0

    .line 363
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_e
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v8, :cond_c

    .line 364
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "EVENT_AUTO_SELECT_DONE_AFTER_FAIL hideProgressPanel"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 365
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2, v8}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_2

    .line 375
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_f
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "automatic network selection: succeeded!"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 376
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v7, :cond_10

    .line 377
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$1700(Lcom/android/phone/NetworkSetting;I)V

    goto :goto_3

    .line 378
    :cond_10
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v8, :cond_d

    .line 379
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v2, v5}, Lcom/android/phone/NetworkSetting;->access$1700(Lcom/android/phone/NetworkSetting;I)V

    goto :goto_3

    .line 386
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->loadNetworksList()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2000(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    .line 390
    :sswitch_6
    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 391
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$2102(Lcom/android/phone/NetworkSetting;Z)Z

    .line 393
    :cond_11
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$2200(Lcom/android/phone/NetworkSetting;I)V

    goto/16 :goto_0

    .line 397
    :sswitch_7
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V
    invoke-static {v2, v5}, Lcom/android/phone/NetworkSetting;->access$2200(Lcom/android/phone/NetworkSetting;I)V

    goto/16 :goto_0

    .line 401
    :sswitch_8
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectList()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2300(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    .line 405
    :sswitch_9
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->goBackToPreviousManualNetwork()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2400(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    .line 409
    :sswitch_a
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, v3, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    .line 411
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_12

    invoke-static {}, Lcom/android/phone/NetworkSetting;->access$2500()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, v3, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 413
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->mSetAuto:Z
    invoke-static {v2, v5}, Lcom/android/phone/NetworkSetting;->access$1802(Lcom/android/phone/NetworkSetting;Z)Z

    .line 414
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$2200(Lcom/android/phone/NetworkSetting;I)V

    .line 415
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iput-boolean v5, v2, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    goto/16 :goto_0

    .line 417
    :cond_12
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2bc

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 424
    :sswitch_b
    const-string v2, "network_selection_delay"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 425
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "mHandler - SELECT_MANUAL_TIMEOUT"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$2600(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 426
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "mHandler - updateDataState()"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$2600(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 427
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandler - ActionType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$2700(Lcom/android/phone/NetworkSetting;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$2600(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2800(Lcom/android/phone/NetworkSetting;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    if-nez v2, :cond_13

    .line 430
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->updateDataState()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$100(Lcom/android/phone/NetworkSetting;)V

    .line 431
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$2702(Lcom/android/phone/NetworkSetting;I)I

    goto/16 :goto_0

    .line 433
    :cond_13
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xbb9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 436
    :cond_14
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2700(Lcom/android/phone/NetworkSetting;)I

    move-result v2

    const/16 v3, -0x2713

    if-ne v2, v3, :cond_0

    .line 437
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectList()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2300(Lcom/android/phone/NetworkSetting;)V

    .line 438
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$2702(Lcom/android/phone/NetworkSetting;I)I

    goto/16 :goto_0

    .line 444
    :sswitch_c
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    sget-object v3, Lcom/android/phone/NetworkSetting$userSelectionType;->AUTOSELECT:Lcom/android/phone/NetworkSetting$userSelectionType;

    #calls: Lcom/android/phone/NetworkSetting;->checkDataConnection(Lcom/android/phone/NetworkSetting$userSelectionType;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$2900(Lcom/android/phone/NetworkSetting;Lcom/android/phone/NetworkSetting$userSelectionType;)V

    goto/16 :goto_0

    .line 447
    :sswitch_d
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "remove femto cell search dialog"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 448
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v3, 0x384

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeDialog(I)V

    .line 449
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 450
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mSearchFemto:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$3000(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 452
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$500(Lcom/android/phone/NetworkSetting;)Landroid/preference/ListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-boolean v3, v3, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 453
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-boolean v2, v2, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    if-nez v2, :cond_15

    .line 454
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->clearList()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$3100(Lcom/android/phone/NetworkSetting;)V

    .line 455
    :cond_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 456
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_16

    .line 457
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "femto cell conncet fail"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 458
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const v3, 0x7f09044f

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 463
    :goto_4
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mIsDataDisconnectingFemto:Z
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$3200(Lcom/android/phone/NetworkSetting;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "femto search done, enable data"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 465
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->setMobileDataEnabled(Z)V
    invoke-static {v2, v5}, Lcom/android/phone/NetworkSetting;->access$3300(Lcom/android/phone/NetworkSetting;Z)V

    .line 466
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->mIsDataDisconnectingFemto:Z
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$3202(Lcom/android/phone/NetworkSetting;Z)Z

    goto/16 :goto_0

    .line 460
    :cond_16
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "femto cell conncet success"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 461
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const v3, 0x7f090450

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 264
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_4
        0x190 -> :sswitch_4
        0x1f4 -> :sswitch_c
        0x258 -> :sswitch_9
        0x2bc -> :sswitch_a
        0x320 -> :sswitch_0
        0x384 -> :sswitch_1
        0x3e8 -> :sswitch_d
        0x7d0 -> :sswitch_5
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_8
        0x7d3 -> :sswitch_7
        0xbb9 -> :sswitch_b
    .end sparse-switch
.end method
