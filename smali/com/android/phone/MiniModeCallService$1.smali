.class Lcom/android/phone/MiniModeCallService$1;
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
    .line 68
    iput-object p1, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    .line 71
    const-string v4, "MiniModeCallService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 100
    :goto_0
    :pswitch_0
    return v8

    .line 75
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 76
    .local v0, currentTime:J
    iget-object v4, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    #getter for: Lcom/android/phone/MiniModeCallService;->mLastDownEventTime:J
    invoke-static {v4}, Lcom/android/phone/MiniModeCallService;->access$000(Lcom/android/phone/MiniModeCallService;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 77
    iget-object v4, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    invoke-virtual {v4}, Lcom/android/phone/MiniModeCallService;->onTouchEvent()V

    .line 80
    .end local v0           #currentTime:J
    :cond_0
    :pswitch_2
    iget-object v4, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/phone/MiniModeCallService;->onFocus(Z)V

    goto :goto_0

    .line 83
    :pswitch_3
    iget-object v4, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    #setter for: Lcom/android/phone/MiniModeCallService;->mLastDownEventTime:J
    invoke-static {v4, v5, v6}, Lcom/android/phone/MiniModeCallService;->access$002(Lcom/android/phone/MiniModeCallService;J)J

    .line 84
    iget-object v4, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    invoke-virtual {v4, v8}, Lcom/android/phone/MiniModeCallService;->onFocus(Z)V

    .line 85
    iget-object v4, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    #setter for: Lcom/android/phone/MiniModeCallService;->START_X:F
    invoke-static {v4, v5}, Lcom/android/phone/MiniModeCallService;->access$102(Lcom/android/phone/MiniModeCallService;F)F

    .line 86
    iget-object v4, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    #setter for: Lcom/android/phone/MiniModeCallService;->START_Y:F
    invoke-static {v4, v5}, Lcom/android/phone/MiniModeCallService;->access$202(Lcom/android/phone/MiniModeCallService;F)F

    .line 87
    iget-object v4, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    iget-object v5, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    #getter for: Lcom/android/phone/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v5}, Lcom/android/phone/MiniModeCallService;->access$400(Lcom/android/phone/MiniModeCallService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    #setter for: Lcom/android/phone/MiniModeCallService;->PREV_X:I
    invoke-static {v4, v5}, Lcom/android/phone/MiniModeCallService;->access$302(Lcom/android/phone/MiniModeCallService;I)I

    .line 88
    iget-object v4, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    iget-object v5, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    #getter for: Lcom/android/phone/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v5}, Lcom/android/phone/MiniModeCallService;->access$400(Lcom/android/phone/MiniModeCallService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    #setter for: Lcom/android/phone/MiniModeCallService;->PREV_Y:I
    invoke-static {v4, v5}, Lcom/android/phone/MiniModeCallService;->access$502(Lcom/android/phone/MiniModeCallService;I)I

    goto :goto_0

    .line 91
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v5, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    #getter for: Lcom/android/phone/MiniModeCallService;->START_X:F
    invoke-static {v5}, Lcom/android/phone/MiniModeCallService;->access$100(Lcom/android/phone/MiniModeCallService;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 92
    .local v2, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    #getter for: Lcom/android/phone/MiniModeCallService;->START_Y:F
    invoke-static {v5}, Lcom/android/phone/MiniModeCallService;->access$200(Lcom/android/phone/MiniModeCallService;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 94
    .local v3, y:I
    iget-object v4, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    #getter for: Lcom/android/phone/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lcom/android/phone/MiniModeCallService;->access$400(Lcom/android/phone/MiniModeCallService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    #getter for: Lcom/android/phone/MiniModeCallService;->PREV_X:I
    invoke-static {v5}, Lcom/android/phone/MiniModeCallService;->access$300(Lcom/android/phone/MiniModeCallService;)I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 95
    iget-object v4, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    #getter for: Lcom/android/phone/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lcom/android/phone/MiniModeCallService;->access$400(Lcom/android/phone/MiniModeCallService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    #getter for: Lcom/android/phone/MiniModeCallService;->PREV_Y:I
    invoke-static {v5}, Lcom/android/phone/MiniModeCallService;->access$500(Lcom/android/phone/MiniModeCallService;)I

    move-result v5

    add-int/2addr v5, v3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 96
    iget-object v4, p0, Lcom/android/phone/MiniModeCallService$1;->this$0:Lcom/android/phone/MiniModeCallService;

    #calls: Lcom/android/phone/MiniModeCallService;->updateViewLayout()V
    invoke-static {v4}, Lcom/android/phone/MiniModeCallService;->access$600(Lcom/android/phone/MiniModeCallService;)V

    goto/16 :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
