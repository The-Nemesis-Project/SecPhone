.class Lcom/android/phone/PhoneGlobals$17;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .parameter

    .prologue
    .line 6818
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$17;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 6820
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 6821
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$17;->this$0:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x1

    #calls: Lcom/android/phone/PhoneGlobals;->broadcastUwaServiceState(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$3900(Lcom/android/phone/PhoneGlobals;Z)V

    .line 6825
    :goto_0
    return-void

    .line 6823
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$17;->this$0:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/PhoneGlobals;->broadcastUwaServiceState(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$3900(Lcom/android/phone/PhoneGlobals;Z)V

    goto :goto_0
.end method
