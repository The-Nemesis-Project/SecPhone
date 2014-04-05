.class public final Lcom/samsung/android/sdk/multiwindow/SMultiWindow;
.super Ljava/lang/Object;
.source "SMultiWindow.java"


# static fields
.field private static enableQueried:Z

.field private static isFreeStyle:Z

.field private static isSplitStyle:Z

.field private static mVersionCode:I

.field private static mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->mVersionCode:I

    .line 45
    const-string v0, "MultiWindow 1.1"

    sput-object v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->mVersionName:Ljava/lang/String;

    .line 47
    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->enableQueried:Z

    .line 48
    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isSplitStyle:Z

    .line 49
    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFreeStyle:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->initMultiWindowFeature()V

    .line 61
    return-void
.end method

.method private initMultiWindowFeature()V
    .locals 2

    .prologue
    .line 125
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->enableQueried:Z

    if-nez v1, :cond_0

    .line 126
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->enableQueried:Z

    .line 127
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 128
    .local v0, pm:Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_0

    .line 129
    sget-object v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FEATURE_MULTIWINDOW:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isSplitStyle:Z

    .line 130
    sget-object v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FEATURE_MULTIWINDOW_FREESTYLE_LAUNCH:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFreeStyle:Z

    .line 131
    sget-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFreeStyle:Z

    if-nez v1, :cond_0

    .line 132
    sget-object v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FEATURE_MULTIWINDOW_TABLET:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFreeStyle:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0           #pm:Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public isFeatureEnabled(I)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 87
    packed-switch p1, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 89
    :pswitch_0
    sget-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isSplitStyle:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFreeStyle:Z

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isSplitStyle:Z

    goto :goto_0

    .line 95
    :pswitch_2
    sget-boolean v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFreeStyle:Z

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
