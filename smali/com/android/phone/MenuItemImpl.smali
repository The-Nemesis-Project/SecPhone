.class public final Lcom/android/phone/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/MenuItem;


# instance fields
.field private mActionProvider:Landroid/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field private mMenu:Lcom/android/phone/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mShowAsAction:I

.field private mSubMenu:Lcom/android/phone/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/phone/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 2
    .parameter "menu"
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "ordering"
    .parameter "title"
    .parameter "showAsAction"

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v1, p0, Lcom/android/phone/MenuItemImpl;->mIconResId:I

    .line 70
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    .line 78
    iput v1, p0, Lcom/android/phone/MenuItemImpl;->mShowAsAction:I

    .line 83
    iput-boolean v1, p0, Lcom/android/phone/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 109
    iput-object p1, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    .line 110
    iput p3, p0, Lcom/android/phone/MenuItemImpl;->mId:I

    .line 111
    iput p2, p0, Lcom/android/phone/MenuItemImpl;->mGroup:I

    .line 112
    iput p4, p0, Lcom/android/phone/MenuItemImpl;->mCategoryOrder:I

    .line 113
    iput p5, p0, Lcom/android/phone/MenuItemImpl;->mOrdering:I

    .line 114
    iput-object p6, p0, Lcom/android/phone/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 115
    iput p7, p0, Lcom/android/phone/MenuItemImpl;->mShowAsAction:I

    .line 116
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 569
    iget v1, p0, Lcom/android/phone/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 582
    :cond_0
    :goto_0
    return v0

    .line 572
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 574
    const/4 v0, 0x1

    goto :goto_0

    .line 577
    :cond_2
    iget-object v1, p0, Lcom/android/phone/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/phone/MenuBuilder;->collapseItemActionView(Lcom/android/phone/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 555
    iget v1, p0, Lcom/android/phone/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 564
    :cond_0
    :goto_0
    return v0

    .line 559
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/phone/MenuBuilder;->expandItemActionView(Lcom/android/phone/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 532
    :goto_0
    return-object v0

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 530
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mActionView:Landroid/view/View;

    goto :goto_0

    .line 532
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 206
    iget-char v0, p0, Lcom/android/phone/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 342
    :goto_0
    return-object v0

    .line 338
    :cond_0
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mIconResId:I

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/phone/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/MenuItemImpl;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 342
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 176
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 220
    iget-char v0, p0, Lcom/android/phone/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/phone/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/android/phone/MenuItemImpl;->mShortcutAlphabeticChar:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Lcom/android/phone/MenuItemImpl;->mShortcutNumericChar:C

    goto :goto_0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    const-string v0, ""

    return-object v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mSubMenu:Lcom/android/phone/SubMenuBuilder;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method getTitleForItemView(Lcom/android/phone/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "itemView"

    .prologue
    .line 295
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/phone/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public hasCollapsibleActionView()Z
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mSubMenu:Lcom/android/phone/SubMenuBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 124
    iget-object v2, p0, Lcom/android/phone/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v1

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    iget-object v3, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/phone/MenuBuilder;->getRootMenu()Lcom/android/phone/MenuBuilder;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/android/phone/MenuBuilder;->dispatchMenuItemSelected(Lcom/android/phone/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/phone/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 134
    iget-object v2, p0, Lcom/android/phone/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/android/phone/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/phone/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_3
    iget-object v2, p0, Lcom/android/phone/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v2}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActionButton()Z
    .locals 2

    .prologue
    .line 467
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/phone/MenuItemImpl;->mIsActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 364
    iget v1, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 386
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExclusiveCheckable()Z
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .parameter "actionProvider"

    .prologue
    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 542
    iput-object p1, p0, Lcom/android/phone/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 543
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/MenuBuilder;->onItemsChanged(Z)V

    .line 544
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 4
    .parameter "resId"

    .prologue
    .line 518
    iget-object v2, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/phone/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 519
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 520
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 521
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2
    .parameter "view"

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/phone/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 510
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mId:I

    if-lez v0, :cond_0

    .line 511
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/phone/MenuBuilder;->onItemActionRequestChanged(Lcom/android/phone/MenuItemImpl;)V

    .line 514
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .parameter "alphaChar"

    .prologue
    .line 210
    iget-char v0, p0, Lcom/android/phone/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    .line 216
    :goto_0
    return-object p0

    .line 212
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/phone/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 214
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4
    .parameter "checkable"

    .prologue
    const/4 v2, 0x0

    .line 368
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    .line 369
    .local v0, oldFlags:I
    iget v1, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    .line 370
    iget v1, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/android/phone/MenuBuilder;->onItemsChanged(Z)V

    .line 374
    :cond_0
    return-object p0

    :cond_1
    move v1, v2

    .line 369
    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "checked"

    .prologue
    .line 390
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/phone/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 398
    :goto_0
    return-object p0

    .line 395
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_0
.end method

.method setCheckedInt(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    const/4 v2, 0x0

    .line 402
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    .line 403
    .local v0, oldFlags:I
    iget v1, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x3

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    .line 404
    iget v1, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/android/phone/MenuBuilder;->onItemsChanged(Z)V

    .line 407
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 403
    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .parameter "enabled"

    .prologue
    .line 159
    if-eqz p1, :cond_0

    .line 160
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MenuBuilder;->onItemsChanged(Z)V

    .line 167
    return-object p0

    .line 162
    :cond_0
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 2
    .parameter "exclusive"

    .prologue
    .line 378
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    .line 379
    return-void

    .line 378
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2
    .parameter "iconResId"

    .prologue
    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 355
    iput p1, p0, Lcom/android/phone/MenuItemImpl;->mIconResId:I

    .line 358
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MenuBuilder;->onItemsChanged(Z)V

    .line 360
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2
    .parameter "icon"

    .prologue
    const/4 v1, 0x0

    .line 346
    iput v1, p0, Lcom/android/phone/MenuItemImpl;->mIconResId:I

    .line 347
    iput-object p1, p0, Lcom/android/phone/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 348
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/android/phone/MenuBuilder;->onItemsChanged(Z)V

    .line 350
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .parameter "intent"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/phone/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 193
    return-object p0
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menuInfo"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/phone/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 449
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .parameter "numericChar"

    .prologue
    .line 224
    iget-char v0, p0, Lcom/android/phone/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    .line 230
    :goto_0
    return-object p0

    .line 226
    :cond_0
    iput-char p1, p0, Lcom/android/phone/MenuItemImpl;->mShortcutNumericChar:C

    .line 228
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .parameter "listener"

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/phone/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 588
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/phone/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 439
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2
    .parameter "numericChar"
    .parameter "alphaChar"

    .prologue
    .line 234
    iput-char p1, p0, Lcom/android/phone/MenuItemImpl;->mShortcutNumericChar:C

    .line 235
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/phone/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 237
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MenuBuilder;->onItemsChanged(Z)V

    .line 239
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2
    .parameter "actionEnum"

    .prologue
    .line 491
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 500
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :pswitch_0
    iput p1, p0, Lcom/android/phone/MenuItemImpl;->mShowAsAction:I

    .line 504
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/phone/MenuBuilder;->onItemActionRequestChanged(Lcom/android/phone/MenuItemImpl;)V

    .line 505
    return-void

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0
    .parameter "actionEnum"

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Lcom/android/phone/MenuItemImpl;->setShowAsAction(I)V

    .line 550
    return-object p0
.end method

.method setSubMenu(Lcom/android/phone/SubMenuBuilder;)V
    .locals 1
    .parameter "subMenu"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/phone/MenuItemImpl;->mSubMenu:Lcom/android/phone/SubMenuBuilder;

    .line 279
    invoke-virtual {p0}, Lcom/android/phone/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/phone/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 280
    return-void
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/phone/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .parameter "title"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/phone/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 303
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MenuBuilder;->onItemsChanged(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mSubMenu:Lcom/android/phone/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mSubMenu:Lcom/android/phone/SubMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/phone/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 309
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .parameter "title"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/phone/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 324
    if-nez p1, :cond_0

    .line 325
    iget-object p1, p0, Lcom/android/phone/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MenuBuilder;->onItemsChanged(Z)V

    .line 330
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "shown"

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lcom/android/phone/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/phone/MenuBuilder;->onItemVisibleChanged(Lcom/android/phone/MenuItemImpl;)V

    .line 434
    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 4
    .parameter "shown"

    .prologue
    const/4 v2, 0x0

    .line 423
    iget v0, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    .line 424
    .local v0, oldFlags:I
    iget v1, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x9

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    .line 425
    iget v1, p0, Lcom/android/phone/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 424
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public shouldShowIcon()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/phone/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method shouldShowShortcut()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mMenu:Lcom/android/phone/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/phone/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/phone/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
