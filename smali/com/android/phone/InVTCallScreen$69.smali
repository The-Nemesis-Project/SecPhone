.class Lcom/android/phone/InVTCallScreen$69;
.super Landroid/os/Handler;
.source "InVTCallScreen.java"


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
    .line 14057
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 14060
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSurfaceHandler:: msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/InVTCallScreen;->access$000(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;Z)V

    .line 14061
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 14101
    :cond_0
    :goto_0
    return-void

    .line 14063
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "mSurfaceHandler::In SHOW_CAMERA_NEAREND condition"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 14064
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14065
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->showCameraOnNearEndView(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 14069
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "mSurfaceHandler::In SHOW_CAMERA_FAREND condition"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 14070
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14071
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->showCameraOnFarEndView(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 14075
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "mSurfaceHandler::In SHOW_PREVIEW_NEAREND condition"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 14076
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14077
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->showPreviewOnNearEndView(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 14081
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "mSurfaceHandler::In SHOW_PREVIEW_FAREND condition"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 14082
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14083
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->showPreviewOnFarEndView(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 14087
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "mSurfaceHandler::In SET_NEAREND_SURFACE_VISIBLE condition"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 14088
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 14089
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/TextureView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 14090
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->app:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iput-boolean v3, v0, Lcom/android/phone/InVTCallState;->mIsNearEndTransparent:Z

    goto/16 :goto_0

    .line 14094
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "mSurfaceHandler::In SET_FAREND_SURFACE_VISIBLE condition"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 14095
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 14096
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/TextureView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 14097
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$69;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsFarEndTransparent:Z
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$15102(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 14061
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
