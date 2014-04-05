.class final Lcom/android/phone/PhoneUtils$18;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->playGuidance(Lcom/android/phone/PhoneGlobals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .parameter

    .prologue
    .line 8805
    iput-object p1, p0, Lcom/android/phone/PhoneUtils$18;->val$app:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 8807
    const-string v0, "- Playing error "

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$300(Ljava/lang/String;)V

    .line 8808
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAutoAnsweringMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8809
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$18;->val$app:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->setAutoAnsweringMode(Lcom/android/phone/PhoneGlobals;Z)V

    .line 8810
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8811
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 8813
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 8814
    const/4 p1, 0x0

    .line 8815
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$1402(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 8816
    const/4 v0, 0x1

    return v0
.end method
