.class public Lcom/android/phone/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/android/phone/MenuView$ItemView;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Lcom/android/phone/MenuItemImpl;

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/ListMenuItemView;->mTextAppearance:I

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 73
    iput-object p1, p0, Lcom/android/phone/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/phone/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertCheckBox()V
    .locals 3

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/android/phone/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 278
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090075

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/phone/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 283
    iget-object v1, p0, Lcom/android/phone/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 284
    return-void
.end method

.method private insertIconView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    invoke-direct {p0}, Lcom/android/phone/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 241
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040083

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 243
    iget-object v1, p0, Lcom/android/phone/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 244
    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/phone/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 260
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090078

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/phone/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 264
    iget-object v1, p0, Lcom/android/phone/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 265
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/phone/MenuItemImpl;I)V
    .locals 2
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/phone/ListMenuItemView;->mItemData:Lcom/android/phone/MenuItemImpl;

    .line 101
    invoke-virtual {p1}, Lcom/android/phone/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-virtual {p1, p0}, Lcom/android/phone/MenuItemImpl;->getTitleForItemView(Lcom/android/phone/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p1}, Lcom/android/phone/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/ListMenuItemView;->setCheckable(Z)V

    .line 105
    invoke-virtual {p1}, Lcom/android/phone/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/phone/MenuItemImpl;->getShortcut()C

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/ListMenuItemView;->setShortcut(ZC)V

    .line 106
    invoke-virtual {p1}, Lcom/android/phone/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-virtual {p1}, Lcom/android/phone/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 108
    return-void

    .line 101
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 87
    iget-object v0, p0, Lcom/android/phone/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    const v0, 0x7f0a00d8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 90
    iget v0, p0, Lcom/android/phone/ListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/phone/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/phone/ListMenuItemView;->mTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 95
    :cond_0
    const v0, 0x7f0a02b5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 96
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 228
    iget-object v2, p0, Lcom/android/phone/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/phone/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 231
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/phone/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 232
    .local v0, iconLp:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 233
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 236
    .end local v0           #iconLp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 237
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 5
    .parameter "checkable"

    .prologue
    const/16 v3, 0x8

    .line 129
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/phone/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v4, p0, Lcom/android/phone/ListMenuItemView;->mItemData:Lcom/android/phone/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/phone/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 139
    iget-object v4, p0, Lcom/android/phone/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_2

    .line 140
    invoke-direct {p0}, Lcom/android/phone/ListMenuItemView;->insertRadioButton()V

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/android/phone/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 143
    .local v0, compoundButton:Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/android/phone/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 152
    .local v2, otherCompoundButton:Landroid/widget/CompoundButton;
    :goto_1
    if-eqz p1, :cond_7

    .line 153
    iget-object v4, p0, Lcom/android/phone/ListMenuItemView;->mItemData:Lcom/android/phone/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/phone/MenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 155
    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 156
    .local v1, newVisibility:I
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_3

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 162
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 145
    .end local v0           #compoundButton:Landroid/widget/CompoundButton;
    .end local v1           #newVisibility:I
    .end local v2           #otherCompoundButton:Landroid/widget/CompoundButton;
    :cond_4
    iget-object v4, p0, Lcom/android/phone/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_5

    .line 146
    invoke-direct {p0}, Lcom/android/phone/ListMenuItemView;->insertCheckBox()V

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/android/phone/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 149
    .restart local v0       #compoundButton:Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/android/phone/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .restart local v2       #otherCompoundButton:Landroid/widget/CompoundButton;
    goto :goto_1

    :cond_6
    move v1, v3

    .line 155
    goto :goto_2

    .line 165
    :cond_7
    iget-object v4, p0, Lcom/android/phone/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/phone/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_8
    iget-object v4, p0, Lcom/android/phone/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .parameter "forceShow"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/phone/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/android/phone/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 112
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "icon"

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v2, p0, Lcom/android/phone/ListMenuItemView;->mItemData:Lcom/android/phone/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/phone/MenuItemImpl;->shouldShowIcon()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/phone/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 203
    .local v0, showIcon:Z
    :goto_0
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/android/phone/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_3

    .line 224
    .end local p1
    :cond_1
    :goto_1
    return-void

    .end local v0           #showIcon:Z
    .restart local p1
    :cond_2
    move v0, v1

    .line 202
    goto :goto_0

    .line 207
    .restart local v0       #showIcon:Z
    :cond_3
    iget-object v2, p0, Lcom/android/phone/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    iget-boolean v2, p0, Lcom/android/phone/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_1

    .line 211
    :cond_4
    iget-object v2, p0, Lcom/android/phone/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_5

    .line 212
    invoke-direct {p0}, Lcom/android/phone/ListMenuItemView;->insertIconView()V

    .line 215
    :cond_5
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/android/phone/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_8

    .line 216
    :cond_6
    iget-object v2, p0, Lcom/android/phone/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .end local p1
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v2, p0, Lcom/android/phone/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/android/phone/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 216
    .restart local p1
    :cond_7
    const/4 p1, 0x0

    goto :goto_2

    .line 222
    :cond_8
    iget-object v1, p0, Lcom/android/phone/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setShortcut(ZC)V
    .locals 3
    .parameter "showShortcut"
    .parameter "shortcutKey"

    .prologue
    .line 189
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/phone/ListMenuItemView;->mItemData:Lcom/android/phone/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/phone/MenuItemImpl;->shouldShowShortcut()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 192
    .local v0, newVisibility:I
    :goto_0
    if-nez v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/phone/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/ListMenuItemView;->mItemData:Lcom/android/phone/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/phone/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/android/phone/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 197
    iget-object v1, p0, Lcom/android/phone/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_1
    return-void

    .line 189
    .end local v0           #newVisibility:I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    const/16 v1, 0x8

    .line 115
    if-eqz p1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/phone/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/android/phone/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/phone/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
