.class public Lcom/samsung/android/sdk/SsdkUnsupportedException;
.super Ljava/lang/Exception;
.source "SsdkUnsupportedException.java"


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mType:I

.field private mVersionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "s"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    iput v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mType:I

    .line 30
    iput v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mVersionCode:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mPackageName:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mType:I

    .line 46
    return-void
.end method
