.class final Lcom/android/phone/VTPreviousState$1;
.super Ljava/lang/Object;
.source "VTPreviousState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VTPreviousState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/phone/VTPreviousState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/phone/VTPreviousState;
    .locals 2
    .parameter "source"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 34
    .local v0, speakerOn:B
    new-instance v1, Lcom/android/phone/VTPreviousState;

    invoke-direct {v1, v0}, Lcom/android/phone/VTPreviousState;-><init>(B)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/phone/VTPreviousState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/phone/VTPreviousState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/phone/VTPreviousState;
    .locals 1
    .parameter "size"

    .prologue
    .line 38
    new-array v0, p1, [Lcom/android/phone/VTPreviousState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/phone/VTPreviousState$1;->newArray(I)[Lcom/android/phone/VTPreviousState;

    move-result-object v0

    return-object v0
.end method
