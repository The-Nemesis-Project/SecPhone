.class Lcom/android/phone/VideoCallPanel$3;
.super Ljava/lang/Object;
.source "VideoCallPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1868
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel$3;->this$0:Lcom/android/phone/VideoCallPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$3;->this$0:Lcom/android/phone/VideoCallPanel;

    #calls: Lcom/android/phone/VideoCallPanel;->dialogMenuSelected(I)V
    invoke-static {v0, p2}, Lcom/android/phone/VideoCallPanel;->access$1300(Lcom/android/phone/VideoCallPanel;I)V

    .line 1871
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1872
    return-void
.end method
