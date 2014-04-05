.class Lcom/android/phone/InVTCallScreen$37;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 11121
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0x9

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11125
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$9500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "support_kk_vt_tablet_multiwindow"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11126
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isEasyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11127
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11128
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 11129
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "This is inside onLongClick of OnLongClickListener for Own Image and isSurfaceViewSwipe is true"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11130
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mInCSVTCallMenu:Lcom/android/phone/InCSVTCallMenu;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10200(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InCSVTCallMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCSVTCallMenu;->setNearEndMenuString()V

    .line 11131
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$10302(Z)Z

    .line 11132
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isFarEndRecord()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isNearEndRecord()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isShowMe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11133
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->showDialog(I)V

    .line 11206
    :cond_0
    :goto_0
    return v2

    .line 11137
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "In onLongClick of far_endsurview "

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11139
    const-string v0, "lawmo_lock"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getLawmoLockState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11142
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mInCSVTCallMenu:Lcom/android/phone/InCSVTCallMenu;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10200(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InCSVTCallMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCSVTCallMenu;->setFarEndMenuString()V

    .line 11144
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$10302(Z)Z

    .line 11146
    const-string v0, "kor_cs_vt_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11148
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isFarEndRecord()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$10400()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$1400()Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 11149
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 11154
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsRecordSupport:Z

    if-nez v0, :cond_4

    .line 11155
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "In onLongClick of far_endsurview : Recording was not support!"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 11158
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isFarEndRecord()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isNearEndRecord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11159
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 11167
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isEasyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11168
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 11169
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "In onLongClick of far_endsurview "

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11170
    const-string v0, "lawmo_lock"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getLawmoLockState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11173
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mInCSVTCallMenu:Lcom/android/phone/InCSVTCallMenu;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10200(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InCSVTCallMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCSVTCallMenu;->setFarEndMenuString()V

    .line 11175
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$10302(Z)Z

    .line 11177
    const-string v0, "kor_cs_vt_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11179
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isFarEndRecord()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$10400()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11180
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 11185
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsRecordSupport:Z

    if-nez v0, :cond_8

    .line 11186
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "In onLongClick of far_endsurview : Recording was not support!"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11189
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isFarEndRecord()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isNearEndRecord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11190
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 11194
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 11195
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "This is inside onLongClick of OnLongClickListener for near end surface view  for Own Image isSurfaceViewSwipe is false"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "This is inside onLongClick of OnLongClickListener for Own Image"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11197
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mInCSVTCallMenu:Lcom/android/phone/InCSVTCallMenu;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10200(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InCSVTCallMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCSVTCallMenu;->setNearEndMenuString()V

    .line 11198
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$10302(Z)Z

    .line 11199
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isFarEndRecord()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isNearEndRecord()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isShowMe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0
.end method
