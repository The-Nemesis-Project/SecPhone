.class Lcom/android/phone/OutgoingCallBroadcaster$9;
.super Ljava/lang/Object;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OutgoingCallBroadcaster;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .locals 0
    .parameter

    .prologue
    .line 2800
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2802
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 2803
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2804
    return-void
.end method
