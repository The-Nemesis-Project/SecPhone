.class Lcom/android/phone/callsettings/IpCall$5;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCall;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 419
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall;->selectAllCheck:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    .line 420
    .local v0, checked:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 421
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v2, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 423
    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->updateDeleteItems()V
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$700(Lcom/android/phone/callsettings/IpCall;)V

    .line 424
    return-void
.end method
