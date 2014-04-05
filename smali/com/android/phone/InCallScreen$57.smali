.class Lcom/android/phone/InCallScreen$57;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$answerCallType:I

.field final synthetic val$fgCall:Lcom/android/internal/telephony/Call;

.field final synthetic val$ringingCall:Lcom/android/internal/telephony/Call;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Call;ILcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9792
    iput-object p1, p0, Lcom/android/phone/InCallScreen$57;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$57;->val$ringingCall:Lcom/android/internal/telephony/Call;

    iput p3, p0, Lcom/android/phone/InCallScreen$57;->val$answerCallType:I

    iput-object p4, p0, Lcom/android/phone/InCallScreen$57;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "di"
    .parameter "pos"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 9794
    packed-switch p2, :pswitch_data_0

    .line 9851
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/phone/InCallScreen$57;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/InCallScreen$57;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v5}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9852
    const-string v5, "voice_call_recording_second_call_ongoing"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 9853
    iget-object v5, p0, Lcom/android/phone/InCallScreen$57;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "2nd answerCall - stop recording"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 9854
    iget-object v5, p0, Lcom/android/phone/InCallScreen$57;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v5}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 9857
    :cond_1
    return-void

    .line 9796
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/InCallScreen$57;->val$ringingCall:Lcom/android/internal/telephony/Call;

    iget v6, p0, Lcom/android/phone/InCallScreen$57;->val$answerCallType:I

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;I)Z

    .line 9797
    iget-object v5, p0, Lcom/android/phone/InCallScreen$57;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I
    invoke-static {v5, v8}, Lcom/android/phone/InCallScreen;->access$6302(Lcom/android/phone/InCallScreen;I)I

    goto :goto_0

    .line 9800
    :pswitch_1
    const-string v5, "vzw_volte_ui"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 9801
    iget-object v5, p0, Lcom/android/phone/InCallScreen$57;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v6, p0, Lcom/android/phone/InCallScreen$57;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    #setter for: Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$6402(Lcom/android/phone/InCallScreen;I)I

    .line 9802
    iget-object v5, p0, Lcom/android/phone/InCallScreen$57;->this$0:Lcom/android/phone/InCallScreen;

    iget v6, p0, Lcom/android/phone/InCallScreen$57;->val$answerCallType:I

    iput v6, v5, Lcom/android/phone/InCallScreen;->mRingingAcceptCallType:I

    .line 9805
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/InCallScreen$57;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 9806
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9808
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 9809
    .local v3, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "InCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call hangup: caught "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9811
    .end local v3           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_2
    iget-object v5, p0, Lcom/android/phone/InCallScreen$57;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAnswerCallAfterThisDisconnect =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InCallScreen$57;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$6400(Lcom/android/phone/InCallScreen;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 9825
    :goto_2
    iget-object v5, p0, Lcom/android/phone/InCallScreen$57;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/phone/InCallScreen$57;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$6500(Lcom/android/phone/InCallScreen;)Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->isRegisteredOverWifi()Z

    move-result v5

    if-nez v5, :cond_4

    .line 9827
    :cond_3
    iget-object v5, p0, Lcom/android/phone/InCallScreen$57;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I
    invoke-static {v5, v8}, Lcom/android/phone/InCallScreen;->access$6302(Lcom/android/phone/InCallScreen;I)I

    .line 9833
    :cond_4
    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9834
    iget-object v5, p0, Lcom/android/phone/InCallScreen$57;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v1

    .line 9835
    .local v1, call:Lcom/android/phone/InCallScreen;
    if-eqz v1, :cond_0

    .line 9836
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v2

    .line 9837
    .local v2, callCard:Lcom/android/phone/CallCard;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/phone/CallCard;->isAutoAnswered()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9838
    invoke-virtual {v2}, Lcom/android/phone/CallCard;->stopCallCardAnimationForMemoRecording()V

    .line 9839
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAutoAnsweringMode()Z

    move-result v5

    if-nez v5, :cond_5

    .line 9840
    iget-object v5, p0, Lcom/android/phone/InCallScreen$57;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/android/phone/PhoneUtils;->setAutoAnsweringMode(Lcom/android/phone/PhoneGlobals;Z)V

    .line 9841
    :cond_5
    iget-object v5, p0, Lcom/android/phone/InCallScreen$57;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->playGuidance(Lcom/android/phone/PhoneGlobals;)V

    .line 9842
    invoke-virtual {v2, v9}, Lcom/android/phone/CallCard;->setGuidanceMsgPlaying(Z)V

    goto/16 :goto_0

    .line 9813
    .end local v1           #call:Lcom/android/phone/InCallScreen;
    .end local v2           #callCard:Lcom/android/phone/CallCard;
    :cond_6
    iget-object v5, p0, Lcom/android/phone/InCallScreen$57;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_2

    .line 9794
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
