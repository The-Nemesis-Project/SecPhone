.class Lcom/android/phone/callsettings/IpNumberDeleteCdma$2;
.super Ljava/lang/Object;
.source "IpNumberDeleteCdma.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpNumberDeleteCdma;->listBinding()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpNumberDeleteCdma;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpNumberDeleteCdma;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$2;->this$0:Lcom/android/phone/callsettings/IpNumberDeleteCdma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$2;->this$0:Lcom/android/phone/callsettings/IpNumberDeleteCdma;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 250
    return-void
.end method
