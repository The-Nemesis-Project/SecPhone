.class Lcom/android/phone/ChangeIccPinScreen$2;
.super Ljava/lang/Object;
.source "ChangeIccPinScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ChangeIccPinScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ChangeIccPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/ChangeIccPinScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/16 v12, 0x64

    .line 201
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$100(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    if-ne p1, v8, :cond_1

    .line 202
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    if-ne p1, v8, :cond_2

    .line 204
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$300(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 205
    :cond_2
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$300(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    if-ne p1, v8, :cond_3

    .line 206
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$400(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 207
    :cond_3
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$400(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/Button;

    move-result-object v8

    if-ne p1, v8, :cond_6

    .line 208
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$500(Lcom/android/phone/ChangeIccPinScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    .line 209
    .local v2, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    if-eqz v2, :cond_0

    .line 210
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$100(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, oldPin:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, newPin1:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$300(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, newPin2:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #calls: Lcom/android/phone/ChangeIccPinScreen;->validateNewPin(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v8, v3, v4}, Lcom/android/phone/ChangeIccPinScreen;->access$600(Lcom/android/phone/ChangeIccPinScreen;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 216
    .local v1, error:I
    packed-switch v1, :pswitch_data_0

    .line 236
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$800(Lcom/android/phone/ChangeIccPinScreen;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {v8, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 242
    .local v0, callBack:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #calls: Lcom/android/phone/ChangeIccPinScreen;->reset()V
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$900(Lcom/android/phone/ChangeIccPinScreen;)V

    .line 244
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$1000(Lcom/android/phone/ChangeIccPinScreen;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 245
    invoke-interface {v2, v5, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 219
    .end local v0           #callBack:Landroid/os/Message;
    :pswitch_0
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    .line 220
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$300(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    .line 221
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$700(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 226
    .local v6, r:Landroid/content/res/Resources;
    const/4 v8, 0x1

    if-ne v1, v8, :cond_4

    .line 227
    const v8, 0x7f09015d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 232
    .local v7, text:Ljava/lang/CharSequence;
    :goto_1
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$700(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 229
    .end local v7           #text:Ljava/lang/CharSequence;
    :cond_4
    const v8, 0x7f09015e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #text:Ljava/lang/CharSequence;
    goto :goto_1

    .line 248
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #text:Ljava/lang/CharSequence;
    .restart local v0       #callBack:Landroid/os/Message;
    :cond_5
    invoke-interface {v2, v5, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 255
    .end local v0           #callBack:Landroid/os/Message;
    .end local v1           #error:I
    .end local v2           #iccCardInterface:Lcom/android/internal/telephony/IccCard;
    .end local v3           #newPin1:Ljava/lang/String;
    .end local v4           #newPin2:Ljava/lang/String;
    .end local v5           #oldPin:Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$1100(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    if-ne p1, v8, :cond_7

    .line 256
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$1200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 257
    :cond_7
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$1200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/Button;

    move-result-object v8

    if-ne p1, v8, :cond_0

    .line 258
    iget-object v8, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/phone/ChangeIccPinScreen;->access$500(Lcom/android/phone/ChangeIccPinScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/android/phone/ChangeIccPinScreen;->access$1100(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/ChangeIccPinScreen;->access$800(Lcom/android/phone/ChangeIccPinScreen;)Landroid/os/Handler;

    move-result-object v11

    invoke-static {v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method