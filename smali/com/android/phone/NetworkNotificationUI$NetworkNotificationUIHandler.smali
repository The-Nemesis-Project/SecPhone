.class Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;
.super Landroid/os/Handler;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkNotificationUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method private constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NetworkNotificationUI;Lcom/android/phone/NetworkNotificationUI$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1260
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1263
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1265
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$1800(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$1200(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_network_transition"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$1700(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1269
    const-string v0, "NetworkNotificationUI"

    const-string v1, "display showNoServiceAndManualSelecionDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->showNoServiceAndManualSelecionDialog()V
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$4100(Lcom/android/phone/NetworkNotificationUI;)V

    goto :goto_0

    .line 1276
    :pswitch_1
    const-string v0, "NetworkNotificationUI"

    const-string v1, "addRoamingRegFailNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->addRoamingRegFailNotification()V
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$4200(Lcom/android/phone/NetworkNotificationUI;)V

    .line 1278
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$4300(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->getFactoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->showNetworkRegNotiPopUp()V
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$4400(Lcom/android/phone/NetworkNotificationUI;)V

    goto :goto_0

    .line 1263
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
