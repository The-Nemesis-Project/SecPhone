.class public Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;
.super Ljava/lang/Object;
.source "SMultiWindowReflator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Intent"
.end annotation


# static fields
.field public static EXTRA_WINDOW_DEFAULT_SIZE:Ljava/lang/String;

.field public static EXTRA_WINDOW_MODE:Ljava/lang/String;

.field public static EXTRA_WINDOW_POSITION:Ljava/lang/String;

.field static FIELD_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 85
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "EXTRA_WINDOW_MODE"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "EXTRA_WINDOW_POSITION"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "EXTRA_WINDOW_DEFAULT_SIZE"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "EXTRA_WINDOW_LAST_SIZE"

    aput-object v3, v1, v2

    sput-object v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->FIELD_NAMES:[Ljava/lang/String;

    .line 93
    sget-object v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->FIELD_NAMES:[Ljava/lang/String;

    array-length v1, v1

    .line 94
    :goto_0
    if-ge v0, v1, :cond_0

    .line 96
    :try_start_0
    const-class v2, Landroid/content/Intent;

    sget-object v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 97
    const-class v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;

    sget-object v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 98
    invoke-virtual {v2, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-void

    .line 101
    :catch_0
    move-exception v2

    goto :goto_1

    .line 100
    :catch_1
    move-exception v2

    goto :goto_1

    .line 99
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
