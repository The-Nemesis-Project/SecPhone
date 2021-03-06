.class public Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
.super Ljava/lang/Object;
.source "SMultiWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;
    }
.end annotation


# static fields
.field public static final ZONE_A:I

.field public static final ZONE_B:I

.field public static final ZONE_C:I

.field public static final ZONE_D:I

.field public static final ZONE_E:I

.field public static final ZONE_F:I


# instance fields
.field private mDefaultSize:Landroid/graphics/Rect;

.field private mDensity:F

.field private mMaximumSize:Landroid/graphics/Rect;

.field private mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

.field private mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

.field private mStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

.field private mWindowMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_A:I

    .line 67
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_B:I

    .line 72
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_C:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_C:I

    .line 77
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_D:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_D:I

    .line 82
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_E:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_E:I

    .line 87
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_F:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_F:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-direct {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    .line 170
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    invoke-direct {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "getWindowMode"

    move-object v0, v1

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v2, p1, v4, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setWindowMode"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, p1, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 176
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "getWindowInfo"

    move-object v0, v1

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v2, p1, v4, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 177
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "getWindow"

    move-object v0, v1

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v2, p1, v4, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 178
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "getMultiWindowStyle"

    move-object v0, v1

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v2, p1, v4, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMultiWindowStyle"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, p1, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 181
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 183
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-string v5, "getMultiPhoneWindowEvent"

    move-object v0, v1

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v2, v4, v5, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 184
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-string v5, "getWindowManager"

    move-object v0, v1

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v2, v4, v5, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string v4, "getAttributes"

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 187
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 188
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mDensity:F

    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getMultiPhoneWindowEvent()Ljava/lang/Object;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setStateChangeListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setExitListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMinimizeIcon"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "minimizeWindow"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "multiWindow"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "normalWindow"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 200
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "exitWindow"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v2, v1, v4, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "moveWindow"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setIsolatedCenterPoint"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Point;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "disableMultiWindow"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_1

    .line 210
    sget-object v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->EXTRA_WINDOW_DEFAULT_SIZE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mDefaultSize:Landroid/graphics/Rect;

    .line 213
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 214
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 215
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v7, v7, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMaximumSize:Landroid/graphics/Rect;

    .line 216
    return-void

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    return-object v0
.end method

.method private checkMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 101
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkOption(I)Z
    .locals 1
    .parameter "options"

    .prologue
    .line 112
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMultiPhoneWindowEvent()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v2, "getMultiPhoneWindowEvent"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getWindowInfo()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v2, "getWindowInfo"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public static makeMultiWindowIntent(Landroid/content/Intent;ILandroid/graphics/Rect;)Landroid/content/Intent;
    .locals 6
    .parameter "intent"
    .parameter "zoneInfo"
    .parameter "rect"

    .prologue
    const/4 v5, 0x1

    .line 512
    if-nez p0, :cond_0

    .line 513
    new-instance p0, Landroid/content/Intent;

    .end local p0
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 515
    .restart local p0
    :cond_0
    const/high16 v4, 0x1000

    invoke-virtual {p0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 516
    invoke-static {}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->supportMultiWindowStyle()Z

    move-result v4

    if-nez v4, :cond_3

    .line 517
    sget v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    and-int v1, p1, v4

    .line 518
    .local v1, targetZoneInfo:I
    const/4 v2, 0x0

    .line 520
    .local v2, windowMode:I
    if-nez v1, :cond_2

    .line 521
    sget v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    sget v5, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_PINUP:I

    or-int/2addr v4, v5

    or-int/2addr v2, v4

    .line 525
    :goto_0
    sget-object v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->EXTRA_WINDOW_MODE:Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 527
    if-eqz p2, :cond_1

    .line 528
    sget-object v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->EXTRA_WINDOW_POSITION:Ljava/lang/String;

    invoke-virtual {p0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 555
    .end local v1           #targetZoneInfo:I
    .end local v2           #windowMode:I
    :cond_1
    :goto_1
    return-object p0

    .line 523
    .restart local v1       #targetZoneInfo:I
    .restart local v2       #windowMode:I
    :cond_2
    sget v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    or-int/2addr v4, v1

    or-int/2addr v2, v4

    goto :goto_0

    .line 531
    .end local v1           #targetZoneInfo:I
    .end local v2           #windowMode:I
    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 532
    .local v0, mwStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-nez v0, :cond_1

    .line 533
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v0           #mwStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 534
    .restart local v0       #mwStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-nez p2, :cond_a

    .line 535
    const/4 v3, 0x0

    .line 537
    .local v3, zone:I
    sget v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_A:I

    if-ne p1, v4, :cond_5

    const/4 v3, 0x3

    .line 544
    :cond_4
    :goto_2
    invoke-virtual {v0, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 545
    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 551
    .end local v3           #zone:I
    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_1

    .line 538
    .restart local v3       #zone:I
    :cond_5
    sget v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_B:I

    if-ne p1, v4, :cond_6

    const/16 v3, 0xc

    goto :goto_2

    .line 539
    :cond_6
    sget v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_C:I

    if-ne p1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    .line 540
    :cond_7
    sget v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_D:I

    if-ne p1, v4, :cond_8

    const/4 v3, 0x2

    goto :goto_2

    .line 541
    :cond_8
    sget v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_E:I

    if-ne p1, v4, :cond_9

    const/4 v3, 0x4

    goto :goto_2

    .line 542
    :cond_9
    sget v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_F:I

    if-ne p1, v4, :cond_4

    const/16 v3, 0x8

    goto :goto_2

    .line 547
    .end local v3           #zone:I
    :cond_a
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 548
    const/16 v4, 0x800

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 549
    invoke-virtual {v0, p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_3
.end method

.method private setWindowMode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "setWindowMode"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    return-void
.end method

.method private static supportMultiWindowStyle()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 576
    :try_start_0
    const-string v3, "com.samsung.android.multiwindow.MultiWindowStyle"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 577
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 583
    .end local v0           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 580
    :catch_0
    move-exception v1

    .line 581
    .local v1, e:Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 583
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .restart local v0       #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateWindowMode()V
    .locals 4

    .prologue
    .line 119
    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "getWindowMode"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, windowMode:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 122
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #windowMode:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public isMultiWindow()Z
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 246
    :goto_0
    return v0

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    .line 246
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public minimizeWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 273
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    .line 275
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkOption(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "minimizeWindow"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "minimizeWindow"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 281
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 282
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_MINIMIZED:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 283
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 284
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setWindowMode()V

    goto :goto_0
.end method

.method public multiWindow()V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->multiWindow(Landroid/graphics/Rect;)V

    .line 298
    return-void
.end method

.method public multiWindow(Landroid/graphics/Rect;)V
    .locals 7
    .parameter "rect"

    .prologue
    const/16 v4, 0x800

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 301
    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v1, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    .line 303
    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkOption(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v2, "multiWindow"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    if-nez p1, :cond_2

    .line 308
    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v2, "multiWindow"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 310
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v2, "setMultiWindowStyle"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 312
    .local v0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 313
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 314
    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 315
    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v2, "setMultiWindowStyle"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 319
    .end local v0           #multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_3
    if-nez p1, :cond_4

    .line 320
    iget v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_MASK:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 321
    iget v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 322
    iget v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 323
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setWindowMode()V

    goto :goto_0

    .line 325
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v2, "setMultiWindowStyle"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 327
    .restart local v0       #multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 328
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 329
    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 330
    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v2, "setMultiWindowStyle"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public normalWindow()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 343
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    .line 345
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "normalWindow"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "normalWindow"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_UNIQUEOP_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 350
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 351
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 352
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_NORMAL:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 353
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setWindowMode()V

    goto :goto_0
.end method

.method public setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z
    .locals 7
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 432
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "setStateChangeListener"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    iput-object p1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    .line 434
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    if-nez v3, :cond_0

    .line 435
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "setStateChangeListener"

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :goto_0
    return v1

    .line 437
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$1;-><init>(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;)V

    .line 450
    .local v0, stateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "setStateChangeListener"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0           #stateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;
    :cond_1
    move v1, v2

    .line 455
    goto :goto_0
.end method
