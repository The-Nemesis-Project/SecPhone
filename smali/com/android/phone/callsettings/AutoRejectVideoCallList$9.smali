.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$9;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$9;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 596
    packed-switch p2, :pswitch_data_0

    .line 606
    :goto_0
    return-void

    .line 598
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$9;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->callMatchCriteriaToEditNum()V
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1600(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    goto :goto_0

    .line 601
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$9;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->deleteDialog(ZIZ)V

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
