.class Lcom/android/phone/InVTCallScreen$39;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Lsiso/vt/VTManager$VTStackStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
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
    .line 11366
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lsiso/vt/VTManager$VTEventForUI;Lsiso/vt/VideoTelephonyData;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f090417

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 11368
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inside VTStackStateListener:: onStateChanged State ::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v3, v1}, Lcom/android/phone/InVTCallScreen;->access$000(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;Z)V

    .line 11370
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_FIRST_VIDEO_FRAME_DECODED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_8

    .line 11372
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 11373
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/TextureView;

    invoke-virtual {v0, v6}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11375
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11376
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f090414

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 11379
    :cond_1
    const-string v0, "support_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8200(Lcom/android/phone/InVTCallScreen;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8200(Lcom/android/phone/InVTCallScreen;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isPenMultiWindow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11380
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->app:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iput-boolean v2, v0, Lcom/android/phone/InVTCallState;->mIsNoDataFromModem:Z

    .line 11381
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 11382
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x6

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11386
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->app:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iput-boolean v1, v0, Lcom/android/phone/InVTCallState;->mIsFirstVideoFrameDecoded:Z

    .line 11387
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsTabletDevice:Z

    if-eqz v0, :cond_5

    .line 11388
    const-string v0, "kor_cs_vt_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 11389
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11390
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11392
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11393
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11396
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11397
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11401
    :cond_5
    const-string v0, "kor_cs_vt_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11403
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->hideFarEnViewAnim()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11000(Lcom/android/phone/InVTCallScreen;)V

    .line 11404
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1402(Z)Z

    .line 11407
    :cond_6
    const-string v0, "kor_qc_cs_vt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11408
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "H324M_VT_FIRST_VIDEO_FRAME_DECODED"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11409
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mMuteEnable:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11410
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMuteEnable:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    #calls: Lcom/android/phone/InVTCallScreen;->updateMuteButton(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$3000(Lcom/android/phone/InVTCallScreen;Z)V

    .line 11411
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11910
    :cond_7
    :goto_0
    return-void

    .line 11413
    :cond_8
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_RECIEVED_DATA_IND:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_a

    .line 11415
    const-string v0, "support_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8200(Lcom/android/phone/InVTCallScreen;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8200(Lcom/android/phone/InVTCallScreen;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isPenMultiWindow()Z

    move-result v0

    if-nez v0, :cond_9

    .line 11416
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "H324M_VT_RECIEVED_DATA_IND : Multiwindow"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11417
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->app:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iput-boolean v2, v0, Lcom/android/phone/InVTCallState;->mIsNoDataFromModem:Z

    .line 11418
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 11419
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 11422
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "H324M_VT_RECIEVED_DATA_IND"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 11424
    :cond_a
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_NO_DATA_ERR_IND:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_b

    .line 11426
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->app:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iput-boolean v1, v0, Lcom/android/phone/InVTCallState;->mIsNoDataFromModem:Z

    .line 11427
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "H324M_VT_NO_DATA_ERR_IND"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 11428
    :cond_b
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_VIDEO_TX_OLC_ESTABLISHED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_10

    .line 11431
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 11432
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateOwnImageStatus()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11200(Lcom/android/phone/InVTCallScreen;)V

    .line 11434
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 11435
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "Camera desabled due DPM\t- INTENT_MSG_SECURITY"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11436
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "camera_security_enter toast pop-up removed in VT app, toast will be raised by EDM famework"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11442
    :cond_d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_f

    .line 11444
    :cond_e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    goto/16 :goto_0

    .line 11446
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isShowMe()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11447
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    .line 11448
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v0, v5}, Lcom/android/phone/InVTCallScreen;->access$7402(Lcom/android/phone/InVTCallScreen;I)I

    goto/16 :goto_0

    .line 11452
    :cond_10
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_CALL_DEINITIALIZED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_24

    .line 11453
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v3, "onStateChanged: for H324M_VT_CALL_DEINITIALIZED"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11454
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$1802(Z)Z

    .line 11456
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsShowEndCallScreenStarted:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 11457
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateEndcallButtonState(Z)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$11400(Lcom/android/phone/InVTCallScreen;Z)V

    .line 11460
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_14

    .line 11466
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$3300(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 11468
    if-eqz v0, :cond_61

    .line 11469
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v5, v0

    .line 11471
    :goto_1
    if-eqz v5, :cond_60

    .line 11472
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 11473
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 11474
    if-nez v0, :cond_16

    move v4, v1

    .line 11475
    :goto_2
    if-nez v0, :cond_17

    move v3, v1

    .line 11476
    :goto_3
    if-nez v0, :cond_18

    move v0, v1

    .line 11477
    :goto_4
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v7

    .line 11479
    sget v8, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-eq v7, v8, :cond_12

    sget v8, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-eq v7, v8, :cond_12

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    move v0, v2

    move v3, v2

    move v4, v2

    .line 11489
    :cond_13
    :goto_5
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$11500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v7

    if-eqz v4, :cond_19

    move v5, v1

    :goto_6
    invoke-virtual {v7, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11490
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$11600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v5

    if-eqz v3, :cond_1a

    move v3, v1

    :goto_7
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11491
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11492
    const-string v0, "ip_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 11493
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIpCallButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 11494
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIpCallButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v4, :cond_1c

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11497
    :cond_14
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 11498
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->releaseVTManager()V

    .line 11499
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->deinitVTManager()V

    .line 11500
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0, v6}, Lcom/android/phone/InVTCallScreen;->access$2102(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;

    .line 11503
    :cond_15
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 11504
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 11505
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    :cond_16
    move v4, v2

    .line 11474
    goto/16 :goto_2

    :cond_17
    move v3, v2

    .line 11475
    goto/16 :goto_3

    :cond_18
    move v0, v2

    .line 11476
    goto/16 :goto_4

    :cond_19
    move v5, v2

    .line 11489
    goto :goto_6

    :cond_1a
    move v3, v2

    .line 11490
    goto :goto_7

    :cond_1b
    move v0, v2

    .line 11491
    goto :goto_8

    :cond_1c
    move v1, v2

    .line 11494
    goto :goto_9

    .line 11506
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 11507
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1900(Lcom/android/phone/InVTCallScreen;)V

    .line 11508
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$2000(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 11510
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 11515
    :cond_1f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 11516
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 11517
    :cond_20
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 11518
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1900(Lcom/android/phone/InVTCallScreen;)V

    .line 11519
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$2000(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 11520
    :cond_21
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5900(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 11521
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5900(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 11522
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 11527
    :cond_22
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 11530
    :cond_23
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 11536
    :cond_24
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_END_CALL_REQUEST:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_25

    .line 11537
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "onStateChanged: for H324M_VT_END_CALL_REQUEST"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11538
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1700(Lcom/android/phone/InVTCallScreen;)V

    .line 11539
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$1602(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 11540
    :cond_25
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_SESSION_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_26

    .line 11541
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "onStateChanged: for H324M_VT_SESSION_STOP_SUCCESS"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11542
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$1602(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11544
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11545
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->cleanupCall()V

    goto/16 :goto_0

    .line 11549
    :cond_26
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_PROTOCOL_ERR_IND:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_28

    .line 11550
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "onStateChanged: for H324M_VT_PROTOCOL_ERR_IND"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11551
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 11553
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v2, "51010"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 11554
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1700(Lcom/android/phone/InVTCallScreen;)V

    .line 11555
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$1602(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 11559
    :cond_27
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "onStateChanged: keep current Call state for special operator of Exception handling[H324M_VT_PROTOCOL_ERR_IND]"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11561
    :cond_28
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_29

    .line 11562
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "onStateChanged: for H324M_IC_START_FAILURE"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11566
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const v1, 0x7f0903ea

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$11800(Lcom/android/phone/InVTCallScreen;I)V

    goto/16 :goto_0

    .line 11568
    :cond_29
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_SUCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_32

    .line 11569
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v3, "onStateChanged: for H324M_IC_START_SUCESS"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11570
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 11571
    const-string v0, "kor_cs_vt_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12100(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$3800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 11573
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$12100(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$7202(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11574
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 11577
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->setIsShowMe(Z)V

    .line 11578
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsTabletDevice:Z

    if-eqz v0, :cond_2b

    .line 11579
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->invalidateOptionsMenu()V

    .line 11581
    :cond_2b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 11582
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v3, "H324M_IC_START_SUCESS:: Preset Image Enabled"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11583
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$12202(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11584
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$12002(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11590
    :goto_a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$12100(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$12302(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 11591
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7402(Lcom/android/phone/InVTCallScreen;I)I

    .line 11593
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previewEffectState:Lcom/android/phone/PreviewEffectState;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12400(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PreviewEffectState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PreviewEffectState;->isShowingEffectLayout()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 11594
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerInfoLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11595
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mPreviewEffectUI:Lcom/android/phone/PreviewEffectUI;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12600(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PreviewEffectUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PreviewEffectUI;->hideAllEffectLayout()V

    .line 11596
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsTabletDevice:Z

    if-eqz v0, :cond_31

    .line 11597
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsRecordSupport:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureRecordBtnLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 11598
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureRecordBtnLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11611
    :cond_2c
    :goto_b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsTabletDevice:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecordOrCaptureProgressive:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 11612
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isFarEndRecord()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isNearEndRecord()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 11613
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11615
    :cond_2d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11616
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecordOrCaptureProgressive:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$12802(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11619
    :cond_2e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$3802(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11620
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$11902(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 11586
    :cond_2f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v3, "H324M_IC_START_SUCESS:: Preset Image Desabled"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11587
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$12202(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_a

    .line 11600
    :cond_30
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isNearEndRecord()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureRecordBtnLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 11601
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureRecordBtnLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11602
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_b

    .line 11605
    :cond_31
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->setMainBackgroundToNormal()V

    goto :goto_b

    .line 11622
    :cond_32
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_VIDEO_DEACTIVATED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_33

    .line 11623
    const-string v0, "InVTCallScreen"

    const-string v1, "CHH onStateChanged: H324M_IC_VIDEO_DEACTIVATED"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11624
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const v4, 0x7f0904b8

    invoke-virtual {v3, v4}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7202(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11628
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 11629
    :cond_33
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_VIDEO_ACTIVATED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_34

    .line 11630
    const-string v0, "InVTCallScreen"

    const-string v1, "CHH onStateChanged: H324M_IC_VIDEO_ACTIVATED"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11631
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const v4, 0x7f0904b9

    invoke-virtual {v3, v4}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7202(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11635
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 11636
    :cond_34
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_36

    .line 11637
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "onStateChanged: for H324M_REC_START_FAILURE"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11638
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f090415

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$11800(Lcom/android/phone/InVTCallScreen;I)V

    .line 11639
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isFarEndRecord()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 11640
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11641
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11642
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    goto/16 :goto_0

    .line 11643
    :cond_35
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isNearEndRecord()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11644
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->app:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iput-object v6, v0, Lcom/android/phone/InVTCallState;->mRecordingFileName:Ljava/lang/String;

    .line 11645
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    goto/16 :goto_0

    .line 11648
    :cond_36
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_37

    .line 11649
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "onStateChanged: for H324M_REC_START_SUCCESS"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11650
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11651
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 11652
    :cond_37
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_38

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_RETRY_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_3f

    .line 11654
    :cond_38
    const-string v0, "vt_camera_init_noise_reduction"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 11655
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v3, "Disable camera init noise reduction"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11656
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setCameraMute(Z)V

    .line 11659
    :cond_39
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_3e

    .line 11660
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x5

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11665
    :cond_3a
    :goto_c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    if-eqz v0, :cond_3b

    .line 11667
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v2, v0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    .line 11669
    :cond_3b
    const-string v0, "InVTCallScreen:: "

    const-string v3, "VTMNGR_CAMERA_START_SUCCESS "

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11670
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v1, v0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    .line 11671
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->isShowMe()Z

    move-result v3

    #calls: Lcom/android/phone/InVTCallScreen;->updateCameraButtons(Z)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;Z)V

    .line 11672
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsSwitchCameraAnimationStarted:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 11673
    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 11674
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsSwitchCameraAnimationStarted:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$5002(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11675
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0xb5

    const-wide/16 v3, 0x258

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11679
    :cond_3c
    const-string v0, "vt_dual_camera"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11680
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previewEffectState:Lcom/android/phone/PreviewEffectState;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12400(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PreviewEffectState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PreviewEffectState;->isDualCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 11681
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->updateDualCameraLayout(Z)V

    .line 11684
    :cond_3d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mInCSVTCallMenu:Lcom/android/phone/InCSVTCallMenu;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10200(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InCSVTCallMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/phone/InCSVTCallMenu;->setEnableDualCameraMenu(Z)V

    goto/16 :goto_0

    .line 11662
    :cond_3e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3a

    .line 11663
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x5

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_c

    .line 11686
    :cond_3f
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_42

    .line 11687
    const-string v0, "InVTCallScreen:: "

    const-string v3, "VTMNGR_CAMERA_START_FAILURE"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11688
    const-string v0, "vt_camera_init_noise_reduction"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 11689
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v3, "Disable camera init noise reduction"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11690
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setCameraMute(Z)V

    .line 11693
    :cond_40
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->setIsShowMe(Z)V

    .line 11694
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v2, v0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    .line 11695
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->isShowMe()Z

    move-result v3

    #calls: Lcom/android/phone/InVTCallScreen;->updateCameraButtons(Z)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;Z)V

    .line 11697
    const-string v0, "vt_dual_camera"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11698
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previewEffectState:Lcom/android/phone/PreviewEffectState;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12400(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PreviewEffectState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PreviewEffectState;->isDualCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 11699
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previewEffectState:Lcom/android/phone/PreviewEffectState;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12400(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PreviewEffectState;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/PreviewEffectState;->setDualCameraEnable(Z)V

    .line 11700
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->updateDualCameraLayout(Z)V

    .line 11702
    :cond_41
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mInCSVTCallMenu:Lcom/android/phone/InCSVTCallMenu;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10200(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InCSVTCallMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/phone/InCSVTCallMenu;->setEnableDualCameraMenu(Z)V

    goto/16 :goto_0

    .line 11704
    :cond_42
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_46

    .line 11705
    const-string v0, "InVTCallScreen:: "

    const-string v3, "H324M_REC_STOP_SUCCESS"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11706
    invoke-static {}, Lcom/android/phone/MediaLowSpaceReceiver;->unRegisterLowMemoryListner()V

    .line 11707
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 11708
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const v7, 0x7f090416

    invoke-virtual {v5, v7}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->app:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v5, v5, Lcom/android/phone/InVTCallState;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v5, v8}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$7202(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11715
    :goto_d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 11716
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 11718
    :cond_43
    new-array v0, v1, [Ljava/lang/String;

    .line 11719
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->app:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v1, v1, Lcom/android/phone/InVTCallState;->mRecordingFileName:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 11720
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Lcom/android/phone/InVTCallScreen$39$1;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$39$1;-><init>(Lcom/android/phone/InVTCallScreen$39;)V

    invoke-static {v1, v0, v6, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 11726
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$12902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11728
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13000(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFarEndRecordStopped:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$13100(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    if-ne v0, v1, :cond_45

    .line 11730
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V

    .line 11731
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, -0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$13002(Lcom/android/phone/InVTCallScreen;I)I

    goto/16 :goto_0

    .line 11712
    :cond_44
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->app:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v5, v5, Lcom/android/phone/InVTCallState;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v5, v8}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$7202(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_d

    .line 11732
    :cond_45
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13000(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mNearEndRecordStopped:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$13200(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 11734
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    .line 11735
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, -0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$13002(Lcom/android/phone/InVTCallScreen;I)I

    goto/16 :goto_0

    .line 11737
    :cond_46
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_MAX_TIMEOUT:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_49

    .line 11738
    const-string v0, "InVTCallScreen:: "

    const-string v3, "H324M_REC_MAX_TIMEOUT"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11739
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isFarEndRecord()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 11740
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    .line 11742
    :cond_47
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isNearEndRecord()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 11743
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    .line 11745
    :cond_48
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->app:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v5, v5, Lcom/android/phone/InVTCallState;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v5, v8}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7202(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11747
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$12902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11748
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11749
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 11751
    :cond_49
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_PROTOCOL_ERROR:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_4d

    .line 11752
    const-string v0, "InVTCallScreen:: "

    const-string v3, "H324M_REC_PROTOCOL_ERROR"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11753
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isFarEndRecord()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 11754
    const-string v0, "vt_audio_mixed_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "vt_audio_mixed_recording_via_stack"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 11755
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingAudio()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$800(Lcom/android/phone/InVTCallScreen;)V

    .line 11760
    :cond_4a
    :goto_e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isNearEndRecord()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 11761
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    .line 11763
    :cond_4b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->app:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v5, v5, Lcom/android/phone/InVTCallState;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v5, v8}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7202(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11765
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$12902(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 11757
    :cond_4c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    goto :goto_e

    .line 11767
    :cond_4d
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_4f

    .line 11768
    const-string v0, "InVTCallScreen:: "

    const-string v2, "H324M_REC_PROTOCOL_ERROR"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11769
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isFarEndRecord()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 11770
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    .line 11772
    :cond_4e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isNearEndRecord()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11773
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    goto/16 :goto_0

    .line 11776
    :cond_4f
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_50

    .line 11778
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->setIsShowMe(Z)V

    .line 11779
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->isShowMe()Z

    move-result v1

    #calls: Lcom/android/phone/InVTCallScreen;->updateCameraButtons(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;Z)V

    .line 11780
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13300(Lcom/android/phone/InVTCallScreen;)V

    .line 11783
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->handlingSwitchCameraButton()V

    .line 11785
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$12302(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 11786
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x2

    #setter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7402(Lcom/android/phone/InVTCallScreen;I)I

    .line 11788
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previewEffectState:Lcom/android/phone/PreviewEffectState;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12400(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PreviewEffectState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PreviewEffectState;->isShowingEffectLayout()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11789
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->setNormalLayout()V

    .line 11790
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mPreviewEffectUI:Lcom/android/phone/PreviewEffectUI;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12600(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PreviewEffectUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PreviewEffectUI;->hideAllEffectLayout()V

    goto/16 :goto_0

    .line 11792
    :cond_50
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_PROTOCOL_ERROR:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_51

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_NO_VIDEO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_51

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_51

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_UNSUPPORTED_AUDIO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_51

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_FILE_READ_ERR:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_51

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_UNSUPPORTED_VIDEO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_51

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_NO_AUDIO:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_54

    .line 11799
    :cond_51
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const v3, 0x7f0903ea

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$11800(Lcom/android/phone/InVTCallScreen;I)V

    .line 11801
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11802
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7400(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-eq v0, v5, :cond_53

    .line 11803
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7400(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_52

    .line 11804
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$4202(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11805
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$4002(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11806
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$12300(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$12102(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 11819
    :goto_f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/android/phone/InVTCallScreen;->access$12302(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 11820
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    goto/16 :goto_0

    .line 11809
    :cond_52
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$4202(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11810
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$4002(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11811
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$12300(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$4502(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_f

    .line 11814
    :cond_53
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$4202(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11815
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$4002(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11816
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->setIsShowMe(Z)V

    goto :goto_f

    .line 11822
    :cond_54
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_ALL_OLC_ESTABLISHED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_55

    .line 11823
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "H324M_VT_ALL_OLC_ESTABLISHED"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11824
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isAllOLC:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$13402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11825
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mAllOlcOpened:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$13502(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11826
    const-string v0, "vt_multimedia_ringback_tone_timer"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11827
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11828
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xaa

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 11830
    :cond_55
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_MRBT_START:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_56

    .line 11831
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "H324M_VT_MRBT_START"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11832
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mMRBTstart:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5602(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 11833
    :cond_56
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_MRBT_END:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_58

    .line 11834
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v3, "H324M_VT_MRBT_END"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11835
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mMRBTend:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5702(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11836
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5800(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11837
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5800(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5900(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 11838
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5800(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 11839
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5800(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->startMRBTTimer()V

    .line 11840
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 11841
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5800(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 11842
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5800(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    .line 11844
    :cond_57
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11845
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 11849
    :cond_58
    const-string v0, "kor_cs_vt_network_operator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_VMS_MODE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_59

    .line 11851
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "VTMNGR_VMS_MODE"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11852
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10402(Z)Z

    goto/16 :goto_0

    .line 11854
    :cond_59
    const-string v0, "kor_cs_vt_network_operator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_USER_INDICATION:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_5f

    .line 11856
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "onUserIndication"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11857
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "object id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getObjectMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11858
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11859
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user data len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getDataLen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11861
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getObjectMode()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 11863
    const-string v0, ".*VMode_0.*"

    .line 11864
    const-string v1, ".*VMode_1.*"

    .line 11865
    const-string v2, ".*VMode_2.*"

    .line 11866
    const-string v3, ".*VMode_3.*"

    .line 11867
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    .line 11868
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getDataLen()I

    .line 11870
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v4, v4, Lcom/android/phone/InVTCallScreen;->isRemoteModeControl:Z

    if-eqz v4, :cond_5e

    .line 11872
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v5, "isRemoteModeControl true"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11873
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 11875
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisplaySize_Old()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13600(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 11877
    :cond_5a
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 11879
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->getDisplayMode()Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->setOldDisplayMode(Lcom/android/phone/InVTCallScreen$VideoDisplayMode;)V

    .line 11880
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisplaySize_Big()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13700(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 11882
    :cond_5b
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 11884
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->getDisplayMode()Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->setOldDisplayMode(Lcom/android/phone/InVTCallScreen$VideoDisplayMode;)V

    .line 11885
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisplaySize_Small()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13800(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 11887
    :cond_5c
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 11889
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->getDisplayMode()Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->setOldDisplayMode(Lcom/android/phone/InVTCallScreen$VideoDisplayMode;)V

    .line 11890
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisplaySize_BigOnly()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13900(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 11894
    :cond_5d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "Not support VMode"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11899
    :cond_5e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "isRemoteModeControl false"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11902
    :cond_5f
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_FIRST_FRAME_FROM_CAMERA:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_7

    .line 11903
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsSwitchCameraAnimationStarted:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11904
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsSwitchCameraAnimationStarted:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$5002(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11905
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb5

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11906
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "VTMNGR_FIRST_FRAME_FROM_CAMERA"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_60
    move v0, v1

    move v3, v1

    move v4, v1

    goto/16 :goto_5

    :cond_61
    move-object v5, v6

    goto/16 :goto_1
.end method
