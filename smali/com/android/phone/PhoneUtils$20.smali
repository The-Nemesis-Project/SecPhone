.class final Lcom/android/phone/PhoneUtils$20;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->guidanceBeepSoundPlay(Lcom/android/phone/PhoneGlobals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 8882
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 8883
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 8884
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$1402(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 8885
    const/4 v0, 0x1

    return v0
.end method
