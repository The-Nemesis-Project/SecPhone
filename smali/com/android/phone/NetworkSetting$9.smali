.class Lcom/android/phone/NetworkSetting$9;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 973
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/NetworkSetting;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$3300(Lcom/android/phone/NetworkSetting;Z)V

    .line 977
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v1, -0x2712

    #setter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$2702(Lcom/android/phone/NetworkSetting;I)I

    .line 978
    return-void
.end method
