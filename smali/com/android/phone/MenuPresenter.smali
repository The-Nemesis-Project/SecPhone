.class public interface abstract Lcom/android/phone/MenuPresenter;
.super Ljava/lang/Object;
.source "MenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MenuPresenter$Callback;
    }
.end annotation


# virtual methods
.method public abstract collapseItemActionView(Lcom/android/phone/MenuBuilder;Lcom/android/phone/MenuItemImpl;)Z
.end method

.method public abstract expandItemActionView(Lcom/android/phone/MenuBuilder;Lcom/android/phone/MenuItemImpl;)Z
.end method

.method public abstract flagActionItems()Z
.end method

.method public abstract initForMenu(Landroid/content/Context;Lcom/android/phone/MenuBuilder;)V
.end method

.method public abstract onCloseMenu(Lcom/android/phone/MenuBuilder;Z)V
.end method

.method public abstract onSubMenuSelected(Lcom/android/phone/SubMenuBuilder;)Z
.end method

.method public abstract updateMenuView(Z)V
.end method
