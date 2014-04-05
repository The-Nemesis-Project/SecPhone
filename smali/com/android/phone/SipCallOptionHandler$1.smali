.class Lcom/android/phone/SipCallOptionHandler$1;
.super Ljava/lang/Object;
.source "SipCallOptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SipCallOptionHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/SipCallOptionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 453
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v8}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 454
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #calls: Lcom/android/phone/SipCallOptionHandler;->isNetworkConnected()Z
    invoke-static {v8}, Lcom/android/phone/SipCallOptionHandler;->access$100(Lcom/android/phone/SipCallOptionHandler;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 455
    iget-object v6, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v6, v11}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    .line 532
    :goto_0
    return-void

    .line 458
    :cond_0
    const-string v8, "SipCallOptionHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "primary SIP URI is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v10}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    iget-object v9, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v9}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v9

    #calls: Lcom/android/phone/SipCallOptionHandler;->createSipPhoneIfNeeded(Landroid/net/sip/SipProfile;)V
    invoke-static {v8, v9}, Lcom/android/phone/SipCallOptionHandler;->access$200(Lcom/android/phone/SipCallOptionHandler;Landroid/net/sip/SipProfile;)V

    .line 461
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v8}, Lcom/android/phone/SipCallOptionHandler;->access$300(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "android.phone.extra.SIP_PHONE_URI"

    iget-object v10, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v10}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z
    invoke-static {v8}, Lcom/android/phone/SipCallOptionHandler;->access$400(Lcom/android/phone/SipCallOptionHandler;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 464
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {v8}, Lcom/android/phone/SipCallOptionHandler;->access$500(Lcom/android/phone/SipCallOptionHandler;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v9}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/phone/sip/SipSharedPreferences;->setPrimaryAccount(Ljava/lang/String;)V

    .line 469
    :cond_1
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z
    invoke-static {v8}, Lcom/android/phone/SipCallOptionHandler;->access$600(Lcom/android/phone/SipCallOptionHandler;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v8}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v8

    if-nez v8, :cond_2

    .line 470
    iget-object v6, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto :goto_0

    .line 473
    :cond_2
    const/4 v1, 0x0

    .line 474
    .local v1, bUseIMSPhone:Z
    const/4 v0, 0x0

    .line 475
    .local v0, bIsVoLTE:Z
    const/4 v2, 0x0

    .line 476
    .local v2, convertCFCallToIMS:Z
    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 477
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_type"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_8

    move v0, v6

    .line 481
    :goto_1
    const-string v8, "common_volte"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->extraCallType:I
    invoke-static {v8}, Lcom/android/phone/SipCallOptionHandler;->access$700(Lcom/android/phone/SipCallOptionHandler;)I

    move-result v8

    if-nez v8, :cond_3

    if-nez v0, :cond_5

    :cond_3
    const-string v8, "common_volte_vt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->extraCallType:I
    invoke-static {v8}, Lcom/android/phone/SipCallOptionHandler;->access$700(Lcom/android/phone/SipCallOptionHandler;)I

    move-result v8

    if-ne v8, v11, :cond_4

    if-nez v0, :cond_5

    :cond_4
    const-string v8, "common_volte_vt_kor"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->extraCallType:I
    invoke-static {v8}, Lcom/android/phone/SipCallOptionHandler;->access$700(Lcom/android/phone/SipCallOptionHandler;)I

    move-result v8

    if-ne v8, v11, :cond_b

    :cond_5
    move v1, v6

    .line 485
    :goto_2
    const-string v8, "SipCallOptionHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "COMMON_VOLTE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "common_volte"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / extraCallType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->extraCallType:I
    invoke-static {v10}, Lcom/android/phone/SipCallOptionHandler;->access$700(Lcom/android/phone/SipCallOptionHandler;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / bIsVoLTE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / mUseSipPhone: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z
    invoke-static {v10}, Lcom/android/phone/SipCallOptionHandler;->access$600(Lcom/android/phone/SipCallOptionHandler;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 492
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v8}, Lcom/android/phone/SipCallOptionHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v5

    .line 494
    .local v5, registrationState:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;
    sget-object v8, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v5, v8, :cond_c

    move v4, v6

    .line 495
    .local v4, isRegisteredOverWifi:Z
    :goto_3
    if-eqz v4, :cond_6

    .line 496
    const-string v7, "SipCallOptionHandler"

    const-string v8, "IMS is registered over Wi-Fi. set bUseImsPhone to true"

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v1, 0x1

    .line 501
    :cond_6
    if-eqz v1, :cond_7

    iget-object v7, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z
    invoke-static {v7}, Lcom/android/phone/SipCallOptionHandler;->access$600(Lcom/android/phone/SipCallOptionHandler;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "common_volte"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 506
    iget-object v7, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/android/phone/SipCallOptionHandler;->access$300(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsIms;->shouldOutgoingIMSCall(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 507
    iget-object v6, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/android/phone/SipCallOptionHandler;->access$300(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->extraCallType:I
    invoke-static {v7}, Lcom/android/phone/SipCallOptionHandler;->access$700(Lcom/android/phone/SipCallOptionHandler;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/phone/PhoneUtils;->convertCallToIMS(Landroid/content/Intent;I)V

    .line 508
    const/4 v2, 0x1

    .line 515
    :cond_7
    :goto_4
    const-string v6, "us_cdma_call_fowarding"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 516
    iget-object v6, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    iget-object v7, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/SipCallOptionHandler;->access$800(Lcom/android/phone/SipCallOptionHandler;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/phone/SipCallOptionHandler;->IsVZWCFNumber(Ljava/lang/String;)Z
    invoke-static {v6, v7}, Lcom/android/phone/SipCallOptionHandler;->access$900(Lcom/android/phone/SipCallOptionHandler;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "us_cdma_call_fowarding_setting"

    iget-object v7, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->extra:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/SipCallOptionHandler;->access$1000(Lcom/android/phone/SipCallOptionHandler;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 517
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.UsCdmaCallForwardingDialog"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 520
    const-string v6, "phone_number"

    iget-object v7, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/SipCallOptionHandler;->access$800(Lcom/android/phone/SipCallOptionHandler;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string v6, "extra_call_type"

    iget-object v7, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->extraCallType:I
    invoke-static {v7}, Lcom/android/phone/SipCallOptionHandler;->access$700(Lcom/android/phone/SipCallOptionHandler;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    const-string v6, "convert_cf_call_to_ims"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 523
    iget-object v6, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v6, v3}, Lcom/android/phone/SipCallOptionHandler;->startActivity(Landroid/content/Intent;)V

    .line 531
    .end local v3           #intent:Landroid/content/Intent;
    :goto_5
    iget-object v6, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v6}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto/16 :goto_0

    .end local v4           #isRegisteredOverWifi:Z
    .end local v5           #registrationState:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;
    :cond_8
    move v0, v7

    .line 477
    goto/16 :goto_1

    .line 479
    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_type"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_a

    move v0, v6

    :goto_6
    goto/16 :goto_1

    :cond_a
    move v0, v7

    goto :goto_6

    :cond_b
    move v1, v7

    .line 481
    goto/16 :goto_2

    .restart local v5       #registrationState:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;
    :cond_c
    move v4, v7

    .line 494
    goto/16 :goto_3

    .line 511
    .restart local v4       #isRegisteredOverWifi:Z
    :cond_d
    const-string v7, "SipCallOptionHandler"

    const-string v8, "IMS phone is unavailable"

    invoke-static {v7, v8, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_4

    .line 525
    :cond_e
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    iget-object v7, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/android/phone/SipCallOptionHandler;->access$300(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    goto :goto_5

    .line 528
    :cond_f
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    iget-object v7, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/android/phone/SipCallOptionHandler;->access$300(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    goto :goto_5
.end method
