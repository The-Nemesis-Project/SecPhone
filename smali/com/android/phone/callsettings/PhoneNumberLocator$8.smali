.class Lcom/android/phone/callsettings/PhoneNumberLocator$8;
.super Ljava/lang/Object;
.source "PhoneNumberLocator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PhoneNumberLocator;->startDownloadThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V
    .locals 0
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$8;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$8;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$1000(Lcom/android/phone/callsettings/PhoneNumberLocator;)Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$8;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$1000(Lcom/android/phone/callsettings/PhoneNumberLocator;)Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->stopDownloadThread()V

    .line 599
    :cond_0
    return-void
.end method
