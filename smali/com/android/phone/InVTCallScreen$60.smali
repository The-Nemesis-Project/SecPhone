.class Lcom/android/phone/InVTCallScreen$60;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 12381
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 12383
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isFarEndRecord()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12384
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFarEndRecordStopped:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$13100(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$13002(Lcom/android/phone/InVTCallScreen;I)I

    .line 12386
    const-string v0, "vt_audio_mixed_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "vt_audio_mixed_recording_via_stack"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12387
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingAudio()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$800(Lcom/android/phone/InVTCallScreen;)V

    .line 12396
    :cond_0
    :goto_0
    return-void

    .line 12389
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    goto :goto_0

    .line 12391
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isNearEndRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12392
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mNearEndRecordStopped:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$13200(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$13002(Lcom/android/phone/InVTCallScreen;I)I

    .line 12394
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    goto :goto_0
.end method
