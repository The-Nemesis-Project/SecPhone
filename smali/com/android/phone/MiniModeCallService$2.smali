.class Lcom/android/phone/MiniModeCallService$2;
.super Ljava/lang/Object;
.source "MiniModeCallService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiniModeCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiniModeCallService;


# direct methods
.method constructor <init>(Lcom/android/phone/MiniModeCallService;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/phone/MiniModeCallService$2;->this$0:Lcom/android/phone/MiniModeCallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 107
    const-string v0, "MiniModeCallService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mButtonTouchListener onTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    return v3

    .line 110
    :pswitch_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 111
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    .line 114
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
