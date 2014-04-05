.class final Lcom/android/phone/PhoneUtilsCommon$1;
.super Ljava/lang/Object;
.source "PhoneUtilsCommon.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtilsCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 294
    const-string v6, "onSContextChanged"

    #calls: Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V
    invoke-static {v6, v8}, Lcom/android/phone/PhoneUtilsCommon;->access$000(Ljava/lang/String;Z)V

    .line 295
    iget-object v5, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 297
    .local v5, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v5}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_2

    .line 298
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    .line 299
    .local v2, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getCallPoseContext()Landroid/hardware/scontext/SContextCallPose;

    move-result-object v3

    .line 300
    .local v3, callPoseContext:Landroid/hardware/scontext/SContextCallPose;
    invoke-virtual {v3}, Landroid/hardware/scontext/SContextCallPose;->getPose()I

    move-result v0

    .line 301
    .local v0, Pose:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSContextChanged Pose : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V
    invoke-static {v6, v8}, Lcom/android/phone/PhoneUtilsCommon;->access$000(Ljava/lang/String;Z)V

    .line 303
    iget-object v6, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_1

    .line 304
    const-string v6, "onSContextChanged Pose : no works"

    #calls: Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V
    invoke-static {v6, v8}, Lcom/android/phone/PhoneUtilsCommon;->access$000(Ljava/lang/String;Z)V

    .line 345
    .end local v0           #Pose:I
    .end local v2           #app:Lcom/android/phone/PhoneGlobals;
    .end local v3           #callPoseContext:Landroid/hardware/scontext/SContextCallPose;
    :cond_0
    :goto_0
    return-void

    .line 308
    .restart local v0       #Pose:I
    .restart local v2       #app:Lcom/android/phone/PhoneGlobals;
    .restart local v3       #callPoseContext:Landroid/hardware/scontext/SContextCallPose;
    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 310
    :pswitch_0
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hearing_direction"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 311
    invoke-static {v8, v8}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 312
    const-string v6, "phone.dev.callpose"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 313
    const/16 v6, 0x8

    invoke-static {v2, v6}, Lcom/android/phone/CallTextToSpeech;->getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;

    goto :goto_0

    .line 317
    :pswitch_1
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hearing_direction"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    invoke-static {v8, v8}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 319
    const-string v6, "phone.dev.callpose"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 320
    const/16 v6, 0x9

    invoke-static {v2, v6}, Lcom/android/phone/CallTextToSpeech;->getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;

    goto :goto_0

    .line 327
    .end local v0           #Pose:I
    .end local v2           #app:Lcom/android/phone/PhoneGlobals;
    .end local v3           #callPoseContext:Landroid/hardware/scontext/SContextCallPose;
    :cond_2
    invoke-virtual {v5}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_0

    .line 328
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->isCoverClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 329
    const-string v6, "onSContextChanged PUT_DOWN_MOTION, but cover is opened"

    #calls: Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V
    invoke-static {v6, v8}, Lcom/android/phone/PhoneUtilsCommon;->access$000(Ljava/lang/String;Z)V

    goto :goto_0

    .line 332
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getPutDownMotionContext()Landroid/hardware/scontext/SContextPutDownMotion;

    move-result-object v4

    .line 333
    .local v4, putDownMotionContext:Landroid/hardware/scontext/SContextPutDownMotion;
    invoke-virtual {v4}, Landroid/hardware/scontext/SContextPutDownMotion;->getAction()I

    move-result v1

    .line 334
    .local v1, action:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSContextChanged PUT_DOWN_MOTION : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V
    invoke-static {v6, v8}, Lcom/android/phone/PhoneUtilsCommon;->access$000(Ljava/lang/String;Z)V

    .line 335
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 337
    :pswitch_2
    invoke-static {v8}, Lcom/android/phone/PhoneUtilsCommon;->doActionPutUpDown(Z)V

    goto :goto_0

    .line 340
    :pswitch_3
    invoke-static {v9}, Lcom/android/phone/PhoneUtilsCommon;->doActionPutUpDown(Z)V

    goto/16 :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 335
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
