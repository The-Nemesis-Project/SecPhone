.class Lcom/android/phone/callsettings/IpCall$9;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall;->softkeyLeftRun(Landroid/view/View;)V
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
    .line 496
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 498
    const/4 v2, 0x0

    .line 500
    .local v2, isDeleted:Z
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 501
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$1100(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 503
    .local v0, del_id:I
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->deleteIpNumber(I)V
    invoke-static {v3, v0}, Lcom/android/phone/callsettings/IpCall;->access$1200(Lcom/android/phone/callsettings/IpCall;I)V

    .line 504
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$1300(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    const-string v4, ""

    #calls: Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/IpCall;->access$900(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 506
    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 507
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$1100(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 508
    const/4 v2, 0x1

    .line 509
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Z)V
    invoke-static {v3, v7}, Lcom/android/phone/callsettings/IpCall;->access$1400(Lcom/android/phone/callsettings/IpCall;Z)V

    .line 500
    .end local v0           #del_id:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 512
    :cond_2
    if-nez v2, :cond_4

    .line 513
    const-string v3, "ip_call_gsm"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 514
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Z)V
    invoke-static {v3, v6}, Lcom/android/phone/callsettings/IpCall;->access$1400(Lcom/android/phone/callsettings/IpCall;Z)V

    .line 526
    :cond_3
    :goto_1
    return-void

    .line 519
    :cond_4
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    const v5, 0x7f09035e

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/IpCall;->access$1500(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 520
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$500(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 521
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 522
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$500(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 523
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Z)V
    invoke-static {v3, v6}, Lcom/android/phone/callsettings/IpCall;->access$1400(Lcom/android/phone/callsettings/IpCall;Z)V

    .line 524
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$200(Lcom/android/phone/callsettings/IpCall;)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 525
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
