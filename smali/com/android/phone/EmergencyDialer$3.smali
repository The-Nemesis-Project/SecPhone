.class Lcom/android/phone/EmergencyDialer$3;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyDialer;->initSafetyAssurance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 606
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    .line 611
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 618
    :cond_2
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v0, v2}, Lcom/android/phone/EmergencyContactItemContainer;->setEmergencyContactExist(Z)V

    .line 622
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyContactItemContainer;->getScreenType()Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    move-result-object v0

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    if-ne v0, v1, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    .line 624
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v0, v2}, Lcom/android/phone/EmergencyContactItemContainer;->removeContacts(Z)V

    .line 625
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 633
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 637
    return-void
.end method
