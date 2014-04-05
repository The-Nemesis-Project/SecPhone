.class public Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;
.super Landroid/widget/BaseAdapter;
.source "IMSConferenceCallMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IMSConferenceCallMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParticipantsAdapter"
.end annotation


# instance fields
.field confCM:Lcom/android/phone/IMSConferenceCallMgr;

.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/IMSConferenceCallMain;


# direct methods
.method public constructor <init>(Lcom/android/phone/IMSConferenceCallMain;Lcom/android/phone/IMSConferenceCallMgr;)V
    .locals 1
    .parameter
    .parameter "ccm"

    .prologue
    .line 987
    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 988
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 989
    new-instance v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    invoke-direct {v0}, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;-><init>()V

    #setter for: Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;
    invoke-static {p1, v0}, Lcom/android/phone/IMSConferenceCallMain;->access$1202(Lcom/android/phone/IMSConferenceCallMain;Lcom/android/phone/IMSConferenceCallMain$HolderCtl;)Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    .line 990
    iput-object p2, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->confCM:Lcom/android/phone/IMSConferenceCallMgr;

    .line 991
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->confCM:Lcom/android/phone/IMSConferenceCallMgr;

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->confCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v0

    .line 996
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;
    .locals 1
    .parameter "position"

    .prologue
    .line 999
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->confCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v0

    .line 1002
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 983
    invoke-virtual {p0, p1}, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->getItem(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->confCM:Lcom/android/phone/IMSConferenceCallMgr;

    if-eqz v0, :cond_0

    .line 1007
    int-to-long v0, p1

    .line 1009
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1021
    const/4 v0, 0x0

    .line 1022
    .local v0, holder:Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;
    move v3, p1

    .line 1023
    .local v3, pos:I
    const/4 v2, 0x0

    .line 1024
    .local v2, number:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->getItem(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v1

    .line 1025
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    if-nez p2, :cond_3

    .line 1026
    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04009d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1027
    new-instance v0, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;

    .end local v0           #holder:Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;
    invoke-direct {v0}, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;-><init>()V

    .line 1028
    .restart local v0       #holder:Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;
    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    invoke-virtual {v4, p2, v0}, Lcom/android/phone/IMSConferenceCallMain;->setParticipantHolder(Landroid/view/View;Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;)V

    .line 1029
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1030
    if-eqz v1, :cond_0

    .line 1031
    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    invoke-virtual {v4, p2, v0, v1}, Lcom/android/phone/IMSConferenceCallMain;->setHolderData(Landroid/view/View;Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    .line 1043
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 1045
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 1046
    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    invoke-virtual {v4, p2, v0, v1}, Lcom/android/phone/IMSConferenceCallMain;->showParticipantHolder(Landroid/view/View;Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    .line 1048
    :cond_1
    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #getter for: Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;
    invoke-static {v4}, Lcom/android/phone/IMSConferenceCallMain;->access$1200(Lcom/android/phone/IMSConferenceCallMain;)Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showButton:Z

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    if-eqz v4, :cond_2

    .line 1049
    iget-object v4, v0, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    new-instance v5, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter$1;

    invoke-direct {v5, p0, v3}, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter$1;-><init>(Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1057
    :cond_2
    return-object p2

    .line 1033
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;
    check-cast v0, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;

    .line 1034
    .restart local v0       #holder:Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;
    if-eqz v1, :cond_0

    .line 1035
    iget-object v4, v0, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1036
    if-eqz v2, :cond_4

    if-eqz v2, :cond_5

    iget-object v4, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1037
    :cond_4
    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    invoke-virtual {v4, p2, v0, v1}, Lcom/android/phone/IMSConferenceCallMain;->setHolderData(Landroid/view/View;Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    goto :goto_0

    .line 1039
    :cond_5
    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getView do not set holder Data number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/IMSConferenceCallMain;->access$1500(Lcom/android/phone/IMSConferenceCallMain;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1014
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1015
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #calls: Lcom/android/phone/IMSConferenceCallMain;->setDeleteOption()V
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallMain;->access$1300(Lcom/android/phone/IMSConferenceCallMain;)V

    .line 1016
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #calls: Lcom/android/phone/IMSConferenceCallMain;->show_SendButton()V
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallMain;->access$1400(Lcom/android/phone/IMSConferenceCallMain;)V

    .line 1017
    return-void
.end method
