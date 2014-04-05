.class Lcom/android/phone/NetworkNotificationUI$2;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 615
    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged-S:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v0, p1}, Lcom/android/phone/NetworkNotificationUI;->access$2402(Lcom/android/phone/NetworkNotificationUI;I)I

    .line 619
    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$2400(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrevDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$500(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsWifiConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$300(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m3gwarningPopup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$400(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$2400(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$300(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$400(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$500(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v0

    if-nez v0, :cond_1

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->notify3gWarning()V
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$2500(Lcom/android/phone/NetworkNotificationUI;)V

    .line 627
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z
    invoke-static {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->access$402(Lcom/android/phone/NetworkNotificationUI;Z)Z

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$2400(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v1

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I
    invoke-static {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->access$502(Lcom/android/phone/NetworkNotificationUI;I)I

    .line 630
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 11
    .parameter "state"

    .prologue
    .line 444
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$1000()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 445
    const-string v8, "NetworkNotificationUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onServiceStateChanged-S:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iput-object p1, v8, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    .line 449
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, v8, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, v8, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-eqz v8, :cond_16

    :cond_1
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, v8, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, v8, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_16

    const/4 v2, 0x1

    .line 451
    .local v2, hasRegistered:Z
    :goto_0
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v9, v9, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    iput-object v9, v8, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    .line 453
    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 455
    const-string v8, "NetworkNotificationUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPhone.isNetworkRoaming() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v10}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, v8, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, v8, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_3

    .line 457
    const-string v8, "true"

    const-string v9, "persist.sys.restrict_background"

    const-string v10, "false"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 458
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "NetworkNotificationUI"

    const-string v9, "RestrictBackground OFF"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v8, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, Backgroundintent:Landroid/content/Intent;
    const-string v8, "ENABLED"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1200(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 466
    .end local v0           #Backgroundintent:Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$1300()Z

    move-result v8

    if-nez v8, :cond_4

    .line 469
    :cond_4
    const-string v8, "feature_skt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 470
    if-eqz v2, :cond_6

    .line 471
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1200(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 472
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v8, "persist_sys_rplmn"

    const-string v9, ""

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 473
    .local v5, rplmn:Ljava/lang/String;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 474
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "NetworkNotificationUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RPLMN :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , roaming :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z
    invoke-static {v10}, Lcom/android/phone/NetworkNotificationUI;->access$1500(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_5
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1500(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v8

    if-nez v8, :cond_17

    .line 476
    const-string v8, "persist_sys_rplmn"

    const-string v9, "domestic"

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 477
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 539
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #rplmn:Ljava/lang/String;
    .end local v6           #sp:Landroid/content/SharedPreferences;
    :cond_6
    :goto_1
    const-string v8, "feature_ktt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 540
    const-string v8, "20"

    const-string v9, "ril.simtype"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 541
    if-eqz v2, :cond_7

    .line 542
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.REGIST_HOME"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .local v3, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1200(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 547
    .end local v3           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iput-object p1, v8, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    .line 548
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, v8, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "0"

    const-string v9, "ril.IsManualSelection"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 549
    :cond_8
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "NetworkNotificationUI"

    const-string v9, "Reset mNoservicePopupSelectionNagativeButton for Switching to Automatic Selection"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_9
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v9, 0x0

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z
    invoke-static {v8, v9}, Lcom/android/phone/NetworkNotificationUI;->access$1702(Lcom/android/phone/NetworkNotificationUI;Z)Z

    .line 553
    :cond_a
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 554
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1800(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v8

    if-nez v8, :cond_c

    .line 556
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1900(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$900(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 557
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "NetworkNotificationUI"

    const-string v9, "send EVENT_MANUAL_SELECTION_NO_SVC msg"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_b
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1900(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 559
    .local v4, m:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1900(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x61a8

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 566
    .end local v4           #m:Landroid/os/Message;
    :cond_c
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_14

    .line 567
    const-string v8, "feature_ktt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 568
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->refleshRTSValue()V
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$2000(Lcom/android/phone/NetworkNotificationUI;)V

    .line 569
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$2100(Lcom/android/phone/NetworkNotificationUI;)[Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_d

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$2100(Lcom/android/phone/NetworkNotificationUI;)[Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_e

    :cond_d
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$2100(Lcom/android/phone/NetworkNotificationUI;)[Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$2100(Lcom/android/phone/NetworkNotificationUI;)[Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$2100(Lcom/android/phone/NetworkNotificationUI;)[Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_e

    .line 570
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->dissmissRTSPopup()V
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$2200(Lcom/android/phone/NetworkNotificationUI;)V

    .line 576
    :cond_e
    :goto_2
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$2300(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 577
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "NetworkNotificationUI"

    const-string v9, "mNotifyNetworkRegisteringDialog.dismiss"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_f
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$2300(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 579
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v9, 0x0

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;
    invoke-static {v8, v9}, Lcom/android/phone/NetworkNotificationUI;->access$2302(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 582
    :cond_10
    const-string v8, "feature_ktt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 583
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v9, 0x0

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z
    invoke-static {v8, v9}, Lcom/android/phone/NetworkNotificationUI;->access$1702(Lcom/android/phone/NetworkNotificationUI;Z)Z

    .line 584
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1900(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 585
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1900(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 587
    :cond_11
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1800(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 589
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "NetworkNotificationUI"

    const-string v9, "mNoServiceAndManualSelectionDialog.dismiss"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_12
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1800(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 591
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v9, 0x0

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v8, v9}, Lcom/android/phone/NetworkNotificationUI;->access$1802(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 595
    :cond_13
    const-string v8, "hd_voice_network_prefer"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 596
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->checkKTHDVoice()V

    .line 600
    :cond_14
    const-string v8, "missing_phone_lock"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 601
    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v8, "lock"

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1200(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "missing_phone_lock"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 603
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_15

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    const/16 v9, 0xe

    if-ne v8, v9, :cond_15

    .line 604
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1200(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "missing_phone_lock"

    const-string v10, "unlock"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 605
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.phone.Emergencydialer.MISSING_PHONE_UNLOCK"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    .local v7, statusIntent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1200(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 607
    const-string v8, "NetworkNotificationUI"

    const-string v9, "onServiceStateChanged : COMMAND_MISSINGPHONE_UNLOCK"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .end local v7           #statusIntent:Landroid/content/Intent;
    :cond_15
    return-void

    .line 449
    .end local v2           #hasRegistered:Z
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 478
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #hasRegistered:Z
    .restart local v5       #rplmn:Ljava/lang/String;
    .restart local v6       #sp:Landroid/content/SharedPreferences;
    :cond_17
    const-string v8, "domestic"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 479
    :cond_18
    const-string v8, "persist_sys_rplmn"

    const-string v9, "oversea"

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 480
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 481
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->notifyRoaming()V
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1600(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_1

    .line 572
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #rplmn:Ljava/lang/String;
    .end local v6           #sp:Landroid/content/SharedPreferences;
    :cond_19
    const-string v8, "feature_kor_open"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 573
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->dissmissRTSPopup()V
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$2200(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_2
.end method
