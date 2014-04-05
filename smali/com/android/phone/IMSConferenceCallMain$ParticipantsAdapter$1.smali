.class Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter$1;
.super Ljava/lang/Object;
.source "IMSConferenceCallMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter$1;->this$1:Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

    iput p2, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1051
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1052
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter$1;->this$1:Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

    iget-object v0, v0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    iget v1, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter$1;->val$pos:I

    #calls: Lcom/android/phone/IMSConferenceCallMain;->onAdapterButtonClicked(Landroid/view/View;I)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/IMSConferenceCallMain;->access$1600(Lcom/android/phone/IMSConferenceCallMain;Landroid/view/View;I)V

    .line 1053
    return-void
.end method
