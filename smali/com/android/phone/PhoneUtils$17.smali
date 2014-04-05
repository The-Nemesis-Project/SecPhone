.class final Lcom/android/phone/PhoneUtils$17;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 8777
    iput-object p1, p0, Lcom/android/phone/PhoneUtils$17;->val$app:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 8779
    const-string v0, "- Playing completed "

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$300(Ljava/lang/String;)V

    .line 8780
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8781
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 8783
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 8784
    const/4 p1, 0x0

    .line 8785
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$1402(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 8802
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$17;->val$app:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->guidanceBeepSoundPlay(Lcom/android/phone/PhoneGlobals;)V

    .line 8803
    return-void
.end method
