.class Lcom/android/phone/InCallScreen$AutoAnsTimer;
.super Landroid/os/CountDownTimer;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoAnsTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;JJ)V
    .locals 0
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 2358
    iput-object p1, p0, Lcom/android/phone/InCallScreen$AutoAnsTimer;->this$0:Lcom/android/phone/InCallScreen;

    .line 2359
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 2360
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/android/phone/InCallScreen$AutoAnsTimer;->this$0:Lcom/android/phone/InCallScreen;

    const-string v1, "- AutoAnsTimer = onFinish"

    const/4 v2, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 2365
    iget-object v0, p0, Lcom/android/phone/InCallScreen$AutoAnsTimer;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->answeringMode()V

    .line 2366
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 2370
    return-void
.end method
