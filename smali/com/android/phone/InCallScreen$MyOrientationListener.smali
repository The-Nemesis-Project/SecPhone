.class Lcom/android/phone/InCallScreen$MyOrientationListener;
.super Lcom/android/internal/policy/impl/WindowOrientationListener;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListener"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 13493
    iput-object p1, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    .line 13494
    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 13495
    iput-object p2, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->mContext:Landroid/content/Context;

    .line 13496
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 13500
    iget-object v0, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mOrientationListener:Lcom/android/phone/InCallScreen$MyOrientationListener;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$7300(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallScreen$MyOrientationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13501
    iget-object v0, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$3300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13502
    iget-object v0, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mOrientationListener:Lcom/android/phone/InCallScreen$MyOrientationListener;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$7300(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallScreen$MyOrientationListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;->disable()V

    .line 13507
    :cond_0
    :goto_0
    return-void

    .line 13504
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen$MyOrientationListener;->setCameraOrientation(I)V

    goto :goto_0
.end method

.method public setCameraOrientation(I)V
    .locals 7
    .parameter "rotation"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 13510
    iget-object v4, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[orientationListener] rotation["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] mCurrentRotation["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget v6, v6, Lcom/android/phone/InIMSCallState;->mCurrentRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v3}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 13511
    const/4 v2, 0x0

    .line 13512
    .local v2, videocallmanager:Lcom/android/phone/VideoCallManager;
    iget-object v4, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 13513
    .local v0, bScreenAutoRotation:Z
    :goto_0
    if-nez v0, :cond_2

    .line 13514
    iget-object v4, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    const-string v5, "[orientationListener] AutoRotation is false"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v3}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 13532
    :cond_0
    :goto_1
    return-void

    .end local v0           #bScreenAutoRotation:Z
    :cond_1
    move v0, v3

    .line 13512
    goto :goto_0

    .line 13519
    .restart local v0       #bScreenAutoRotation:Z
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/VideoCallManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/VideoCallManager;
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 13524
    :goto_2
    if-eqz v2, :cond_3

    .line 13525
    iget-object v3, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget v3, v3, Lcom/android/phone/InIMSCallState;->mCurrentRotation:I

    if-eq v3, p1, :cond_0

    .line 13526
    invoke-virtual {v2, p1}, Lcom/android/phone/VideoCallManager;->setCameraDisplayOrientation(I)V

    .line 13527
    iget-object v3, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iput p1, v3, Lcom/android/phone/InIMSCallState;->mCurrentRotation:I

    goto :goto_1

    .line 13520
    :catch_0
    move-exception v1

    .line 13521
    .local v1, ve:Ljava/lang/VerifyError;
    iget-object v3, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catch VerifyError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    goto :goto_2

    .line 13530
    .end local v1           #ve:Ljava/lang/VerifyError;
    :cond_3
    const-string v3, "InCallScreen"

    const-string v4, "[orientationListener] fail videocallmanager == null"

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
