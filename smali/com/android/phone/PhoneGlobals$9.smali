.class Lcom/android/phone/PhoneGlobals$9;
.super Ljava/lang/Object;
.source "PhoneGlobals.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .parameter

    .prologue
    .line 5911
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$9;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 5914
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$9;->this$0:Lcom/android/phone/PhoneGlobals;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    iput-object p2, v0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 5915
    const-string v0, "PhoneApp"

    const-string v1, "- Got BluetoothHeadset: "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5916
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 5920
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$9;->this$0:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 5921
    return-void
.end method