.class Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;
.super Landroid/telephony/PhoneStateListener;
.source "GlobalNetworkSelectAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GlobalNetworkSelectAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 179
    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 181
    .local v0, state:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    iget-object v1, v1, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->createDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    iget-object v1, v1, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 187
    .end local v0           #state:I
    :cond_0
    return-void
.end method
