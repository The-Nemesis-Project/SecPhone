.class Lcom/android/phone/IncomingPopupService$AsyncLoadCookie;
.super Ljava/lang/Object;
.source "IncomingPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingPopupService;
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
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/phone/IncomingPopupService$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 133
    iput-object p2, p0, Lcom/android/phone/IncomingPopupService$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 134
    iput-object p3, p0, Lcom/android/phone/IncomingPopupService$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 135
    return-void
.end method
