.class Lcom/android/phone/InVTCallScreen$50;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 12251
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/16 v3, 0x6c

    .line 12253
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 12254
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12255
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mOtherPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8000(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 12257
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 12264
    :goto_0
    return-void

    .line 12259
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1194

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 12262
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
