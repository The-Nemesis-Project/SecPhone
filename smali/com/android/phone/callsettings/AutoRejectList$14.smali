.class Lcom/android/phone/callsettings/AutoRejectList$14;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectList;->deleteManyItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$14;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 680
    const/4 v2, 0x0

    .line 682
    .local v2, isDeleted:Z
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$14;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectList;->access$900(Lcom/android/phone/callsettings/AutoRejectList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    .line 683
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$14;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectList;->access$900(Lcom/android/phone/callsettings/AutoRejectList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 684
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$14;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectList;->access$500(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 685
    .local v0, del_id:I
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$14;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->deleteAutoRejectNumber(I)V
    invoke-static {v3, v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$1800(Lcom/android/phone/callsettings/AutoRejectList;I)V

    .line 686
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$14;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectList;->access$500(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 687
    const/4 v2, 0x1

    .line 682
    .end local v0           #del_id:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 691
    :cond_1
    if-nez v2, :cond_2

    .line 693
    const-string v3, "AutoRejectList"

    const-string v4, "softkeyLeftRun - no item"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_1
    return-void

    .line 697
    :cond_2
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$14;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$1102(Lcom/android/phone/callsettings/AutoRejectList;I)I

    .line 698
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$14;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$14;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    const v5, 0x7f09035e

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->displayToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$1900(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    .line 699
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$14;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->makeScreen()V
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectList;->access$1500(Lcom/android/phone/callsettings/AutoRejectList;)V

    goto :goto_1
.end method
