.class Lcom/android/phone/CallCardCovered$2;
.super Ljava/lang/Object;
.source "CallCardCovered.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallCardCovered;->disableCoverLockUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCardCovered;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCardCovered;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/phone/CallCardCovered$2;->this$0:Lcom/android/phone/CallCardCovered;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 328
    const-string v0, "clear_cover"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->changeCoverLockUI(Z)V

    .line 331
    :cond_0
    return-void
.end method
