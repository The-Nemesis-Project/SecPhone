.class Lcom/android/phone/PhoneGlobals$8;
.super Ljava/lang/Object;
.source "PhoneGlobals.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 5892
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$8;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 5896
    const-string v0, "PhoneApp"

    const-string v1, "VoIP Headset phone created, binding local service."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5897
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$8;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetVoIP;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->mBluetoothVoIP:Landroid/bluetooth/IBluetoothHeadsetVoIP;

    .line 5898
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 5902
    const-string v0, "PhoneApp"

    const-string v1, "VoIP Headset phone disconnected, cleaning local binding."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5903
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$8;->this$0:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->mBluetoothVoIP:Landroid/bluetooth/IBluetoothHeadsetVoIP;

    .line 5904
    return-void
.end method
