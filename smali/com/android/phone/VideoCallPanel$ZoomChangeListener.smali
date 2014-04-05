.class Lcom/android/phone/VideoCallPanel$ZoomChangeListener;
.super Ljava/lang/Object;
.source "VideoCallPanel.java"

# interfaces
.implements Lcom/android/phone/ZoomControl$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VideoCallPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VideoCallPanel;


# direct methods
.method private constructor <init>(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;->this$0:Lcom/android/phone/VideoCallPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;-><init>(Lcom/android/phone/VideoCallPanel;)V

    return-void
.end method


# virtual methods
.method public onZoomValueChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;->this$0:Lcom/android/phone/VideoCallPanel;

    #calls: Lcom/android/phone/VideoCallPanel;->onZoomValueChanged(I)V
    invoke-static {v0, p1}, Lcom/android/phone/VideoCallPanel;->access$800(Lcom/android/phone/VideoCallPanel;I)V

    .line 304
    return-void
.end method
