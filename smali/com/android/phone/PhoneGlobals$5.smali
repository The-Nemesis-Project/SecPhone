.class Lcom/android/phone/PhoneGlobals$5;
.super Ljava/lang/Object;
.source "PhoneGlobals.java"

# interfaces
.implements Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneGlobals;->registerScoverListener()V
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
    .line 1860
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 6
    .parameter "state"

    .prologue
    const/16 v5, 0x1b

    const/4 v4, 0x1

    .line 1864
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    #setter for: Lcom/android/phone/PhoneGlobals;->mCoverType:I
    invoke-static {v1, v2}, Lcom/android/phone/PhoneGlobals;->access$1802(Lcom/android/phone/PhoneGlobals;I)I

    .line 1865
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    #getter for: Lcom/android/phone/PhoneGlobals;->mCoverType:I
    invoke-static {v1}, Lcom/android/phone/PhoneGlobals;->access$1800(Lcom/android/phone/PhoneGlobals;)I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    #getter for: Lcom/android/phone/PhoneGlobals;->mCoverType:I
    invoke-static {v1}, Lcom/android/phone/PhoneGlobals;->access$1800(Lcom/android/phone/PhoneGlobals;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1866
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    #getter for: Lcom/android/phone/PhoneGlobals;->mCoverType:I
    invoke-static {v2}, Lcom/android/phone/PhoneGlobals;->access$1800(Lcom/android/phone/PhoneGlobals;)I

    move-result v2

    #setter for: Lcom/android/phone/PhoneGlobals;->isCoverType:I
    invoke-static {v1, v2}, Lcom/android/phone/PhoneGlobals;->access$1902(Lcom/android/phone/PhoneGlobals;I)I

    .line 1867
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scover : isCoverType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    #getter for: Lcom/android/phone/PhoneGlobals;->isCoverType:I
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->access$1900(Lcom/android/phone/PhoneGlobals;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1870
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    if-ne v1, v4, :cond_9

    .line 1871
    const-string v1, "PhoneApp"

    const-string v2, "Scover : State Open"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1873
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_2

    .line 1874
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->dismissCoveredDialog()V

    .line 1876
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_3

    .line 1878
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->stopPutDownListening(Landroid/content/Context;)V

    .line 1880
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, v1, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v1, v2, :cond_7

    .line 1882
    :cond_4
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_5

    .line 1883
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "automatic_receive_call"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1885
    .local v0, automaticAnswer:I
    if-lez v0, :cond_5

    .line 1886
    const-string v1, "PhoneApp"

    const-string v2, "automatic_receive_call by cover open"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1887
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_5

    .line 1888
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 1893
    .end local v0           #automaticAnswer:I
    :cond_5
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_6

    .line 1894
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 1897
    :cond_6
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1918
    :cond_7
    :goto_0
    const-string v1, "feature_srvcc_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1919
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSecImsCallStateSrvcc()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1920
    const-string v1, "PhoneApp"

    const-string v2, "Scover : This is SEC IMS Call State - return"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1921
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->dismissCoveredDialog()V

    .line 1925
    :cond_8
    return-void

    .line 1900
    :cond_9
    const-string v1, "PhoneApp"

    const-string v2, "Scover : State Close"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1902
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_a

    .line 1904
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->startPutDownListening(Landroid/content/Context;)V

    .line 1906
    :cond_a
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, v1, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v1, v2, :cond_7

    .line 1909
    :cond_b
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_c

    .line 1910
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 1915
    :cond_c
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
