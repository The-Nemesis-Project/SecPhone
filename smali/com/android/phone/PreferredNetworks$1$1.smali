.class Lcom/android/phone/PreferredNetworks$1$1;
.super Ljava/lang/Object;
.source "PreferredNetworks.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PreferredNetworks$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/PreferredNetworks$1;


# direct methods
.method constructor <init>(Lcom/android/phone/PreferredNetworks$1;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/phone/PreferredNetworks$1$1;->this$1:Lcom/android/phone/PreferredNetworks$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/PreferredNetworks$1$1;->this$1:Lcom/android/phone/PreferredNetworks$1;

    iget-object v0, v0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 78
    return-void
.end method
