.class Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver$2;
.super Ljava/lang/Object;
.source "PhoneGlobals.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 4926
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver$2;->this$1:Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4928
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 4930
    .local v3, mPhone:Lcom/android/internal/telephony/Phone;
    const-string v6, "00"

    const-string v7, "gsm.sim.roaming"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move v1, v4

    .line 4931
    .local v1, IsManualImsi:Z
    :goto_0
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    .line 4932
    .local v2, IsManualSelection:Z
    iget-object v6, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver$2;->this$1:Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lte_roaming_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v0, v4

    .line 4934
    .local v0, IsLteRoamingOn:Z
    :goto_1
    if-nez v1, :cond_3

    if-eqz v2, :cond_0

    const-string v4, "0"

    const-string v6, "ril.IsManualSelection"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4946
    :cond_0
    :goto_2
    return-void

    .end local v0           #IsLteRoamingOn:Z
    .end local v1           #IsManualImsi:Z
    .end local v2           #IsManualSelection:Z
    :cond_1
    move v1, v5

    .line 4930
    goto :goto_0

    .restart local v1       #IsManualImsi:Z
    .restart local v2       #IsManualSelection:Z
    :cond_2
    move v0, v5

    .line 4932
    goto :goto_1

    .line 4943
    .restart local v0       #IsLteRoamingOn:Z
    :cond_3
    invoke-interface {v3, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 4944
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->showNetworkRoamMccChanged()V

    goto :goto_2
.end method
