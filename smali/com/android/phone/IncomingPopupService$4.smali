.class Lcom/android/phone/IncomingPopupService$4;
.super Ljava/lang/Object;
.source "IncomingPopupService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingPopupService;->makeRejectWithMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IncomingPopupService;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingPopupService;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/phone/IncomingPopupService$4;->this$0:Lcom/android/phone/IncomingPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService$4;->this$0:Lcom/android/phone/IncomingPopupService;

    const-string v1, "Missing voicemail AlertDialog: NEGATIVE click..."

    #calls: Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IncomingPopupService;->access$700(Lcom/android/phone/IncomingPopupService;Ljava/lang/String;)V

    .line 416
    return-void
.end method
