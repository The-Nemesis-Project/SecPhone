.class Lcom/android/phone/InCallScreen$66;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showCallRoamingGuardDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 12091
    iput-object p1, p0, Lcom/android/phone/InCallScreen$66;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 12094
    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    const/4 v2, 0x5

    if-ne p2, v2, :cond_1

    .line 12137
    :cond_0
    :goto_0
    return v1

    .line 12096
    :cond_1
    const/16 v2, 0x18

    if-eq p2, v2, :cond_2

    const/16 v2, 0x19

    if-ne p2, v2, :cond_4

    .line 12097
    :cond_2
    const-string v2, "InCallScreen"

    const-string v3, "VOLUME key: Key Up or Down"

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 12098
    iget-object v2, p0, Lcom/android/phone/InCallScreen$66;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    .line 12112
    const-string v2, "InCallScreen"

    const-string v3, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 12117
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12118
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    iget-object v3, p0, Lcom/android/phone/InCallScreen$66;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$3300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v3

    aget-object v0, v2, v3

    .line 12119
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12122
    iget-object v2, p0, Lcom/android/phone/InCallScreen$66;->this$0:Lcom/android/phone/InCallScreen;

    const-string v3, "VOLUME key: silence ringer"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v1}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 12123
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto :goto_0

    .line 12126
    .end local v0           #notifier:Lcom/android/phone/CallNotifier;
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 12127
    .restart local v0       #notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12130
    iget-object v2, p0, Lcom/android/phone/InCallScreen$66;->this$0:Lcom/android/phone/InCallScreen;

    const-string v3, "VOLUME key: silence ringer"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v1}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 12131
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto :goto_0

    .line 12137
    .end local v0           #notifier:Lcom/android/phone/CallNotifier;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
