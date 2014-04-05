.class Lcom/android/phone/EditFdnContactScreen$13;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const-wide/16 v5, 0x64

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 800
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$200(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 861
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$200(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 862
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 863
    return-void

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$200(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 803
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 804
    :cond_2
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 805
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$500(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 806
    :cond_3
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$500(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 810
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$600(Lcom/android/phone/EditFdnContactScreen;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 811
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    const v2, 0x7f090177

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    .line 812
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 813
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$200(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 814
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$13$1;

    invoke-direct {v2, p0}, Lcom/android/phone/EditFdnContactScreen$13$1;-><init>(Lcom/android/phone/EditFdnContactScreen$13;)V

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 819
    :cond_4
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 820
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    const v2, 0x7f090141

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    .line 821
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 822
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 823
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$13$2;

    invoke-direct {v2, p0}, Lcom/android/phone/EditFdnContactScreen$13$2;-><init>(Lcom/android/phone/EditFdnContactScreen$13;)V

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 828
    :cond_5
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->getPin2()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$900(Lcom/android/phone/EditFdnContactScreen;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/EditFdnContactScreen;->validatePin2(Ljava/lang/String;)Z
    invoke-static {v0, v4}, Lcom/android/phone/EditFdnContactScreen;->access$1000(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 829
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    const v2, 0x7f09016e

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    .line 830
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 831
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 832
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$13$3;

    invoke-direct {v2, p0}, Lcom/android/phone/EditFdnContactScreen$13$3;-><init>(Lcom/android/phone/EditFdnContactScreen$13;)V

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 838
    :cond_6
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$1100(Lcom/android/phone/EditFdnContactScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$500(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 840
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->authenticatePin2()V
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$1200(Lcom/android/phone/EditFdnContactScreen;)V

    .line 841
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #setter for: Lcom/android/phone/EditFdnContactScreen;->mIsRefreshingSIM:Z
    invoke-static {v0, v8}, Lcom/android/phone/EditFdnContactScreen;->access$1302(Lcom/android/phone/EditFdnContactScreen;Z)Z

    .line 843
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 844
    .local v3, tempUri:Landroid/net/Uri;
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 847
    :cond_7
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSimId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/FdnSetting;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v4}, Lcom/android/phone/EditFdnContactScreen;->access$1400(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 848
    sget v0, Lcom/android/phone/FdnSetting;->mSimId:I

    if-ne v0, v8, :cond_8

    .line 849
    const-string v0, "content://icc2/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 852
    :cond_8
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$1600(Lcom/android/phone/EditFdnContactScreen;)Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/EditFdnContactScreen;->access$1500()[Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V
    invoke-static {v0, v8}, Lcom/android/phone/EditFdnContactScreen;->access$1700(Lcom/android/phone/EditFdnContactScreen;Z)V

    goto/16 :goto_0

    .line 857
    .end local v3           #tempUri:Landroid/net/Uri;
    :cond_9
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mCancelButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$1800(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$13;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/EditFdnContactScreen;->finish()V

    goto/16 :goto_0
.end method
