.class Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver$1;
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
    .line 4678
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver$1;->this$1:Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4680
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 4681
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver$1;->this$1:Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    .line 4682
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver$1;->this$1:Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4683
    .local v0, am:Landroid/media/AudioManager;
    const-string v1, "svr=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4684
    return-void
.end method
