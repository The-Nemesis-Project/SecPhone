.class Lcom/android/phone/VideoCallPanel$5;
.super Ljava/lang/Object;
.source "VideoCallPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VideoCallPanel;->showMenuDialog(I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VideoCallPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1879
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel$5;->this$0:Lcom/android/phone/VideoCallPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$5;->this$0:Lcom/android/phone/VideoCallPanel;

    #calls: Lcom/android/phone/VideoCallPanel;->dismissMenuDialog()V
    invoke-static {v0}, Lcom/android/phone/VideoCallPanel;->access$1400(Lcom/android/phone/VideoCallPanel;)V

    .line 1882
    return-void
.end method
