.class Lcom/android/phone/CallCardCovered$AsyncLoadCookie;
.super Ljava/lang/Object;
.source "CallCardCovered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCardCovered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncLoadCookie"
.end annotation


# instance fields
.field public final call:Lcom/android/internal/telephony/Call;

.field public final callerInfo:Lcom/android/internal/telephony/CallerInfo;

.field public final imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "imageView"
    .parameter "callerInfo"
    .parameter "call"

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 248
    iput-object p2, p0, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 249
    iput-object p3, p0, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 250
    return-void
.end method
