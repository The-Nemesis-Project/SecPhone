.class Lcom/android/phone/PhoneGlobals$11;
.super Ljava/lang/Object;
.source "PhoneGlobals.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 6232
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$11;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 6238
    const-string v0, "AutoCSP"

    const-string v1, "AutoCSP Service Connected"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6239
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$11;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {p2}, Lcom/android/phone/IAutoCSP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/IAutoCSP;

    move-result-object v1

    #setter for: Lcom/android/phone/PhoneGlobals;->autoCSP:Lcom/android/phone/IAutoCSP;
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$3702(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/IAutoCSP;)Lcom/android/phone/IAutoCSP;

    .line 6241
    const-string v0, "feature_ltn_auto_csp"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$11;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 6242
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$11;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$11;->this$0:Lcom/android/phone/PhoneGlobals;

    #getter for: Lcom/android/phone/PhoneGlobals;->autoCSP:Lcom/android/phone/IAutoCSP;
    invoke-static {v1}, Lcom/android/phone/PhoneGlobals;->access$3700(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IAutoCSP;

    move-result-object v1

    #calls: Lcom/android/phone/PhoneGlobals;->setAutoCSP(Lcom/android/phone/IAutoCSP;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$3800(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/IAutoCSP;)V

    .line 6244
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 6234
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$11;->this$0:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/PhoneGlobals;->autoCSP:Lcom/android/phone/IAutoCSP;
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$3702(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/IAutoCSP;)Lcom/android/phone/IAutoCSP;

    .line 6235
    return-void
.end method
