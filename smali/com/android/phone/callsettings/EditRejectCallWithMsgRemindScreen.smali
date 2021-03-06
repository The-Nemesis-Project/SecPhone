.class public Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "EditRejectCallWithMsgRemindScreen.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static mCustomizeDialog:Landroid/app/AlertDialog;

.field private static positiveButtonIsEnabled:Z


# instance fields
.field private customTimeSummary:Ljava/lang/String;

.field private final customiseIndex:I

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field istoastshowing:Z

.field private mBackupRemind:I

.field mCreateEdit:Landroid/widget/EditText;

.field private mRemindTime:I

.field private mRemindType:Landroid/preference/ListPreference;

.field private mRemind_index:I

.field private final mTextViewKeyListener:Landroid/view/View$OnKeyListener;

.field private prevString:Ljava/lang/String;

.field selectedMessage:Ljava/lang/String;

.field titleString:Ljava/lang/CharSequence;

.field updateMODE:Z

.field update_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCustomizeDialog:Landroid/app/AlertDialog;

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->positiveButtonIsEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->istoastshowing:Z

    .line 100
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->customiseIndex:I

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->customTimeSummary:Ljava/lang/String;

    .line 108
    iput v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I

    .line 109
    iput v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mBackupRemind:I

    .line 363
    new-instance v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$5;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$5;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->handler:Landroid/os/Handler;

    .line 531
    new-instance v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$7;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$7;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCustomizeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput-boolean p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->positiveButtonIsEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindType:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->updateRemind(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mBackupRemind:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->customTimeSummary:Ljava/lang/String;

    return-object p1
.end method

.method public static constructReminderLabel(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "minutes"

    .prologue
    const/4 v5, 0x1

    .line 777
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 778
    .local v1, resources:Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 779
    .local v3, value:I
    const/4 v0, 0x0

    .line 780
    .local v0, format:Ljava/lang/String;
    const/4 v2, 0x0

    .line 782
    .local v2, retString:Ljava/lang/String;
    rem-int/lit8 v4, p1, 0x3c

    if-eqz v4, :cond_2

    .line 783
    move v3, p1

    .line 784
    if-ne v3, v5, :cond_1

    .line 785
    const v4, 0x7f0907ba

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 798
    :goto_0
    if-eq v3, v5, :cond_0

    .line 799
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 802
    :cond_0
    return-object v2

    .line 787
    :cond_1
    const v4, 0x7f0907bb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 790
    :cond_2
    div-int/lit8 v3, p1, 0x3c

    .line 791
    if-ne v3, v5, :cond_3

    .line 792
    const v4, 0x7f0907b9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 794
    :cond_3
    const v4, 0x7f0907bc

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createAlarmCustomizeDialog()V
    .locals 14

    .prologue
    .line 634
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 635
    .local v9, r:Landroid/content/res/Resources;
    const v0, 0x7f0907ae

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 636
    .local v4, alarm_min:Ljava/lang/String;
    const v0, 0x7f0907af

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 637
    .local v5, alarm_hour:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 638
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f0400cd

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 640
    .local v6, mainView:Landroid/widget/LinearLayout;
    const v0, 0x7f0a031f

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 641
    .local v2, input:Landroid/widget/EditText;
    const v0, 0x7f0a00e5

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 643
    .local v3, button:Landroid/widget/Button;
    new-instance v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$8;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$8;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;Landroid/widget/EditText;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 665
    new-instance v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$9;

    invoke-direct {v0, p0, v4, v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$9;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 681
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0907b0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x7f0905b7

    new-instance v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$12;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;Landroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    invoke-virtual {v12, v13, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090025

    new-instance v12, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$11;

    invoke-direct {v12, p0, v6}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$11;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$10;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$10;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 743
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCustomizeDialog:Landroid/app/AlertDialog;

    .line 744
    sget-object v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCustomizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 745
    .local v11, window:Landroid/view/Window;
    const/4 v0, 0x5

    invoke-virtual {v11, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 747
    sget-object v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCustomizeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 748
    sget-object v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCustomizeDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 751
    :cond_0
    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mBackupRemind:I

    iget v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I

    if-eqz v0, :cond_3

    .line 753
    iget v10, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I

    .line 754
    .local v10, value:I
    rem-int/lit8 v0, v10, 0x3c

    if-eqz v0, :cond_2

    .line 755
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    :goto_0
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 763
    sget-boolean v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->positiveButtonIsEnabled:Z

    if-eqz v0, :cond_1

    .line 764
    sget-object v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCustomizeDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 773
    .end local v10           #value:I
    :cond_1
    :goto_1
    return-void

    .line 758
    .restart local v10       #value:I
    :cond_2
    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I

    div-int/lit8 v10, v0, 0x3c

    .line 759
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 767
    .end local v10           #value:I
    :cond_3
    const-string v0, ""

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    sget-object v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCustomizeDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 614
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 615
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 616
    return-void
.end method

.method private updateRemind(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindType:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 436
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindType:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->customTimeSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 442
    :goto_0
    const-string v0, "CreateRejectMessages_Remind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v0, "CreateRejectMessages_Remind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRemindType.getEntry() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindType:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v0, "CreateRejectMessages_Remind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "customTimeSummary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->customTimeSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindType:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindType:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/16 v6, 0x50

    .line 489
    const-string v3, "CreateRejectMessages_Remind"

    const-string v4, "============== afterTextChanged ============== :"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v3, "display_reject_message_limit"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 491
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, text:Ljava/lang/String;
    const/4 v0, 0x0

    .line 494
    .local v0, errorMsg:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090577

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->getStringByteSize(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->titleString:Ljava/lang/CharSequence;

    .line 496
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->titleString:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 498
    const-string v3, "CreateRejectMessages_Remind"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStringByteSize(text)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->getStringByteSize(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->getStringByteSize(Ljava/lang/String;)I

    move-result v3

    if-ge v6, v3, :cond_1

    .line 504
    const v3, 0x7f0902e1

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 506
    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->prevString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->prevString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 509
    iget-boolean v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->istoastshowing:Z

    if-eqz v3, :cond_0

    .line 510
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->istoastshowing:Z

    .line 512
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->displayToast(Ljava/lang/String;)V

    .line 514
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 515
    .local v2, timer:Landroid/os/Handler;
    new-instance v3, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$6;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$6;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 527
    .end local v0           #errorMsg:Ljava/lang/String;
    .end local v1           #text:Ljava/lang/String;
    .end local v2           #timer:Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 523
    .restart local v0       #errorMsg:Ljava/lang/String;
    .restart local v1       #text:Ljava/lang/String;
    :cond_1
    iput-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->prevString:Ljava/lang/String;

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 480
    return-void
.end method

.method public getStringByteSize(Ljava/lang/String;)I
    .locals 10
    .parameter "str"

    .prologue
    const/16 v9, 0x7f

    const/4 v6, 0x0

    .line 543
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v3, v6

    .line 592
    :cond_0
    :goto_0
    return v3

    .line 547
    :cond_1
    const/4 v3, 0x0

    .line 548
    .local v3, ret:I
    const/4 v1, 0x0

    .line 549
    .local v1, nByte:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 553
    .local v2, nStr:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 554
    .local v5, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_0

    .line 556
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, szSubscriberId:Ljava/lang/String;
    if-eqz v4, :cond_4

    const/4 v7, 0x5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "45006"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 559
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 560
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v9, :cond_2

    .line 561
    add-int/lit8 v1, v1, 0x2

    .line 559
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 564
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 567
    :cond_3
    move v3, v1

    goto :goto_0

    .line 570
    .end local v0           #i:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-ge v0, v2, :cond_5

    .line 571
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v9, :cond_6

    .line 583
    :cond_5
    if-ne v0, v2, :cond_7

    .line 584
    move v3, v1

    goto :goto_0

    .line 575
    :cond_6
    const/16 v6, 0x1b

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(C)I

    move-result v7

    if-eq v6, v7, :cond_5

    .line 578
    add-int/lit8 v1, v1, 0x1

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 586
    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    mul-int/lit8 v3, v6, 0x2

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 429
    const-string v0, "Configuration"

    const-string v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 431
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 432
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 127
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const-string v2, "CreateRejectMessages_Remind"

    const-string v3, "OnCreate ============== :"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const v2, 0x7f060011

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 131
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 132
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 133
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 137
    :cond_0
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 138
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 10
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v9, 0x7f0902bf

    const v8, 0x7f0902bb

    const/4 v7, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 374
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    .line 375
    .local v1, isTablet:Z
    const-string v5, "order_neg_pos_buttons"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 376
    .local v0, cancelOrder:I
    :goto_0
    const-string v5, "order_neg_pos_buttons"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    .line 378
    .local v2, saveOrder:I
    :goto_1
    const/4 v5, 0x4

    invoke-interface {p1, v3, v5, v0, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v1, :cond_2

    move v5, v4

    :goto_2
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 380
    const/4 v5, 0x3

    invoke-interface {p1, v3, v5, v0, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f020439

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 383
    const/4 v5, 0x2

    invoke-interface {p1, v3, v5, v2, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v1, :cond_3

    move v5, v4

    :goto_3
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 385
    invoke-interface {p1, v3, v4, v2, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02043c

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 389
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 390
    return-void

    .end local v0           #cancelOrder:I
    .end local v2           #saveOrder:I
    :cond_0
    move v0, v4

    .line 375
    goto :goto_0

    .restart local v0       #cancelOrder:I
    :cond_1
    move v2, v3

    .line 376
    goto :goto_1

    .restart local v2       #saveOrder:I
    :cond_2
    move v5, v3

    .line 378
    goto :goto_2

    :cond_3
    move v5, v3

    .line 383
    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 144
    const v8, 0x7f0400c2

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 146
    .local v7, v:Landroid/view/View;
    const-string v8, "remind_mode"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindType:Landroid/preference/ListPreference;

    .line 147
    const/4 v8, 0x7

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    .line 148
    .local v5, remind_time:[I
    const/4 v8, 0x7

    new-array v6, v8, [Ljava/lang/CharSequence;

    .line 149
    .local v6, remind_time_item:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v8, 0x7

    if-ge v3, v8, :cond_0

    .line 150
    packed-switch v3, :pswitch_data_0

    .line 149
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 152
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0907aa

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    goto :goto_1

    .line 157
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0907bb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget v11, v5, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    goto :goto_1

    .line 161
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0907b9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    goto :goto_1

    .line 164
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0907bc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget v11, v5, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    goto :goto_1

    .line 168
    :pswitch_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0907b0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    goto :goto_1

    .line 174
    :cond_0
    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindType:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindType:Landroid/preference/ListPreference;

    invoke-virtual {v8, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 176
    const v8, 0x7f0a0307

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    .line 178
    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v8, :cond_1

    .line 179
    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 180
    :cond_1
    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->handler:Landroid/os/Handler;

    new-instance v9, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$1;

    invoke-direct {v9, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$1;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)V

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    new-instance v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$2;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$2;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)V

    .line 249
    .local v1, filter:Landroid/text/InputFilter;
    const/4 v8, 0x1

    new-array v2, v8, [Landroid/text/InputFilter;

    .line 251
    .local v2, filterArray:[Landroid/text/InputFilter;
    const-string v8, "dcm_reject_call_msg_limit"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 252
    const/4 v8, 0x0

    aput-object v1, v2, v8

    .line 253
    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 254
    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 257
    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    const/high16 v9, 0x4000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 263
    :goto_2
    const-string v8, "display_reject_message_limit"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 264
    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 266
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const-string v8, "input_method"

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    iput-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 269
    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    new-instance v9, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$3;

    invoke-direct {v9, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$3;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 283
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 284
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_7

    .line 286
    const-string v8, "UPDATE_MODE"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->updateMODE:Z

    .line 287
    const-string v8, "CreateRejectMessages_Remind"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMODE = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->updateMODE:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-boolean v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->updateMODE:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 290
    const-string v8, "SELECTED_MESSAGE"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->selectedMessage:Ljava/lang/String;

    .line 293
    const-string v8, "UPDATE_ID"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->update_ID:I

    .line 294
    const-string v8, "CreateRejectMessages_Remind"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " before getint remind me later mRemind_index"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindType:Landroid/preference/ListPreference;

    const-string v9, "REMIND_MODE"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I

    .line 297
    iget v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    .line 298
    const/4 v8, 0x6

    iput v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I

    .line 299
    const-string v8, "REMIND_MODE"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I

    .line 300
    iget v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I

    iput v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mBackupRemind:I

    .line 301
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I

    invoke-static {v8, v9}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->constructReminderLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->customTimeSummary:Ljava/lang/String;

    .line 305
    :goto_3
    const-string v8, "CreateRejectMessages_Remind"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRemind_index"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v8, "CreateRejectMessages_Remind"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRemindTime"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->selectedMessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/TextView;->length()I

    move-result v4

    .line 309
    .local v4, len:I
    if-lez v4, :cond_3

    .line 310
    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 318
    .end local v4           #len:I
    :cond_3
    :goto_4
    const-string v8, "display_reject_message_limit"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 319
    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 320
    iget-boolean v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->updateMODE:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 321
    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->prevString:Ljava/lang/String;

    .line 322
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f090577

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->prevString:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->getStringByteSize(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x50

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->titleString:Ljava/lang/CharSequence;

    .line 329
    :goto_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->titleString:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 331
    :cond_4
    return-object v7

    .line 260
    .end local v0           #args:Landroid/os/Bundle;
    :cond_5
    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/16 v10, 0x64

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v2, v8

    goto/16 :goto_2

    .line 303
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_6
    const-string v8, "REMIND_MODE"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I

    goto/16 :goto_3

    .line 316
    :cond_7
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I

    goto :goto_4

    .line 326
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f090577

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x50

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->titleString:Ljava/lang/CharSequence;

    goto :goto_5

    .line 147
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 357
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 358
    const-string v0, "CreateRejectMessages_Remind"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    sget-object v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCustomizeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 360
    sget-object v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCustomizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 361
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 455
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 474
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 466
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    .line 471
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_0

    .line 455
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindType:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 620
    const-string v0, "CreateRejectMessages_Remind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindType:Landroid/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I

    .line 622
    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->createAlarmCustomizeDialog()V

    .line 628
    :goto_0
    const/4 v0, 0x1

    .line 630
    :goto_1
    return v0

    .line 625
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I

    .line 626
    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->updateRemind(I)V

    goto :goto_0

    .line 630
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 394
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    .line 395
    .local v1, isTablet:Z
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_0

    move v0, v3

    .line 398
    .local v0, isLand:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 399
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 400
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 401
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 402
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 410
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 411
    return-void

    .end local v0           #isLand:Z
    :cond_0
    move v0, v4

    .line 395
    goto :goto_0

    .line 404
    .restart local v0       #isLand:Z
    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v0, :cond_3

    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 405
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 406
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_2

    move v4, v3

    :cond_2
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 407
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    move v2, v4

    .line 404
    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 337
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 338
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 340
    iget v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->updateRemind(I)V

    .line 341
    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$4;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$4;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    const-string v1, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    const v1, 0x7f090728

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, titleString:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 353
    .end local v0           #titleString:Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 485
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 5
    .parameter "target"

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 415
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "CreateRejectMessages_Remind"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "softkeyLeftRun = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v2, "EDITED_REMINDTIME"

    iget v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 417
    const-string v2, "UPDATED"

    iget-boolean v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->updateMODE:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    const-string v2, "EDITED_MESSAGE"

    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 420
    .local v1, pa:Landroid/preference/PreferenceActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 421
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 3
    .parameter "target"

    .prologue
    .line 424
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 425
    .local v0, pa:Landroid/preference/PreferenceActivity;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 426
    return-void
.end method
