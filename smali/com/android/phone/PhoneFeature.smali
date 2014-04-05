.class public Lcom/android/phone/PhoneFeature;
.super Ljava/lang/Object;
.source "PhoneFeature.java"


# static fields
.field private static baseband:Ljava/lang/String;

.field private static buildcarrier:Ljava/lang/String;

.field private static countryiso_code:Ljava/lang/String;

.field private static deviceType:Ljava/lang/String;

.field private static language:Ljava/lang/String;

.field private static mFeatureList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static platform:Ljava/lang/String;

.field private static product_device:Ljava/lang/String;

.field private static salesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    .line 1236
    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneFeature;->platform:Ljava/lang/String;

    .line 1237
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    .line 1238
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    .line 1239
    const-string v0, "persist.sys.country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneFeature;->language:Ljava/lang/String;

    .line 1240
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneFeature;->deviceType:Ljava/lang/String;

    .line 1241
    const-string v0, "ro.baseband"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneFeature;->baseband:Ljava/lang/String;

    .line 1242
    const-string v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    .line 1243
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneFeature;->product_device:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDBGLevel()I
    .locals 3

    .prologue
    .line 2731
    const/4 v0, 0x2

    .line 2732
    .local v0, defaultLevel:I
    sget-object v1, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "espressorf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "espresso10rf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2734
    :cond_0
    const/4 v0, 0x0

    .line 2736
    :cond_1
    return v0
.end method

.method public static disableFeature(Ljava/lang/String;)V
    .locals 2
    .parameter "feature"

    .prologue
    .line 2721
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2722
    return-void
.end method

.method public static hasCallPoseFeature(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2827
    const/4 v0, 0x0

    .line 2829
    invoke-static {}, Lcom/android/phone/PhoneFeature;->isJProject()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasSensorHub(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 2833
    :cond_1
    sget-object v2, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "ks01lte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "meliusca"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "melius3gduosctc"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 2837
    :cond_3
    return v0
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .locals 1
    .parameter "feature"

    .prologue
    .line 2710
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2711
    :cond_0
    const/4 v0, 0x0

    .line 2713
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static hasIlluminanceSensor()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2761
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    const-string v5, "sensor"

    invoke-virtual {v3, v5}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 2762
    .local v2, mSensorManager:Landroid/hardware/SensorManager;
    if-nez v2, :cond_0

    move v3, v4

    .line 2774
    :goto_0
    return v3

    .line 2765
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 2766
    .local v1, mSensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v1, :cond_1

    move v3, v4

    .line 2767
    goto :goto_0

    .line 2769
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2770
    const/4 v5, 0x5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v5, v3, :cond_2

    .line 2771
    const/4 v3, 0x1

    goto :goto_0

    .line 2769
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    .line 2774
    goto :goto_0
.end method

.method public static hasMultiWindwoFeature()Z
    .locals 4

    .prologue
    .line 2778
    const/4 v2, 0x0

    .line 2780
    .local v2, result:Z
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2781
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 2782
    const-string v3, "com.sec.feature.multiwindow"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2787
    .end local v1           #packageManager:Landroid/content/pm/PackageManager;
    .end local v2           #result:Z
    :cond_0
    :goto_0
    return v2

    .line 2784
    .restart local v2       #result:Z
    :catch_0
    move-exception v0

    .line 2785
    .local v0, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasNewSNote()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 2809
    const/4 v3, 0x0

    .line 2810
    .local v3, result:Z
    const-string v0, "com.samsung.android.snote"

    .line 2812
    .local v0, NEW_SNOTE_PKG_NAME:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2813
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 2814
    const-string v6, "com.samsung.android.snote"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 2816
    .local v4, sNote:Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x1

    .line 2823
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    .end local v3           #result:Z
    .end local v4           #sNote:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v3

    .line 2818
    .restart local v3       #result:Z
    :catch_0
    move-exception v1

    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v3, v5

    .line 2819
    goto :goto_0

    .line 2820
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    move v3, v5

    .line 2821
    goto :goto_0
.end method

.method static hasNoiseSuppressionFeature(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 2749
    const-string v0, "c1lgt"

    sget-object v1, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "oversea"

    const-string v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2751
    const/4 v0, 0x0

    .line 2756
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasProximitySensor()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2860
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    const-string v5, "sensor"

    invoke-virtual {v3, v5}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 2861
    .local v2, mSensorManager:Landroid/hardware/SensorManager;
    if-nez v2, :cond_0

    move v3, v4

    .line 2873
    :goto_0
    return v3

    .line 2864
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 2865
    .local v1, mSensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v1, :cond_1

    move v3, v4

    .line 2866
    goto :goto_0

    .line 2868
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2869
    const/16 v5, 0x8

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v5, v3, :cond_2

    .line 2870
    const/4 v3, 0x1

    goto :goto_0

    .line 2868
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    .line 2873
    goto :goto_0
.end method

.method public static hasPutUpDownMotionFeature(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2841
    const/4 v0, 0x0

    .line 2843
    invoke-static {}, Lcom/android/phone/PhoneFeature;->isJProject()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneFeature;->isHProject()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasSensorHub(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "ks01lte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "meliusca"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 2847
    :cond_1
    sget-object v2, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "ks01lte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "meliusca"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 2851
    :cond_3
    return v0
.end method

.method public static hasSNote()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 2791
    const/4 v3, 0x0

    .line 2792
    .local v3, result:Z
    const-string v0, "com.sec.android.app.snotebook"

    .line 2794
    .local v0, SNOTE_PKG_NAME:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2795
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 2796
    const-string v6, "com.sec.android.app.snotebook"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 2798
    .local v4, sNote:Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x1

    .line 2805
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    .end local v3           #result:Z
    .end local v4           #sNote:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v3

    .line 2800
    .restart local v3       #result:Z
    :catch_0
    move-exception v1

    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v3, v5

    .line 2801
    goto :goto_0

    .line 2802
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    move v3, v5

    .line 2803
    goto :goto_0
.end method

.method public static hasSensorHub(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2855
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2856
    .local v0, packageMgr:Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method static hasVibratorFeature()Z
    .locals 4

    .prologue
    .line 2740
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 2741
    .local v1, vibrator:Landroid/os/Vibrator;
    const/4 v0, 0x1

    .line 2742
    .local v0, result:Z
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2743
    :cond_0
    const/4 v0, 0x0

    .line 2745
    :cond_1
    return v0
.end method

.method public static isHProject()Z
    .locals 3

    .prologue
    .line 2888
    const/4 v0, 0x0

    .line 2889
    sget-object v1, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "h3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "ha3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2890
    :cond_0
    const/4 v0, 0x1

    .line 2892
    :cond_1
    return v0
.end method

.method public static isJProject()Z
    .locals 3

    .prologue
    .line 2878
    const/4 v0, 0x0

    .line 2879
    sget-object v1, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "ja3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jalte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jactivelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2881
    :cond_0
    const/4 v0, 0x1

    .line 2884
    :cond_1
    return v0
.end method

.method public static isPreviousThanJProject()Z
    .locals 3

    .prologue
    .line 2907
    const/4 v0, 0x0

    .line 2908
    sget-object v1, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "m0xx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "m0ub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "expresslte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2909
    :cond_0
    const/4 v0, 0x1

    .line 2912
    :cond_1
    return v0
.end method

.method public static isTablet()Z
    .locals 2

    .prologue
    .line 2920
    sget-object v0, Lcom/android/phone/PhoneFeature;->deviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneFeature;->deviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2921
    const/4 v0, 0x1

    .line 2923
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeFeature()V
    .locals 0

    .prologue
    .line 1251
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makePreconditionForFeature()V

    .line 1254
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForCommon()V

    .line 1257
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForTablet()V

    .line 1260
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForHKTW()V

    .line 1263
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForCanada()V

    .line 1266
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForKor()V

    .line 1269
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForJapan()V

    .line 1272
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForChina()V

    .line 1275
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForUsa()V

    .line 1277
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForCamera()V

    .line 1280
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForLatin()V

    .line 1283
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForAustralia()V

    .line 1284
    return-void
.end method

.method public static makeFeatureForAustralia()V
    .locals 4

    .prologue
    .line 1704
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_ConfigPrivacyPolicy"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1706
    sget-object v1, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "video_call_remove_record_button"

    const-string v3, "record,capture"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    return-void
.end method

.method public static makeFeatureForCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2681
    sget-object v1, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "mproject3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2683
    .local v0, isCamera:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2691
    :goto_0
    return-void

    .line 2686
    :cond_0
    const-string v1, "disable_direct_photo_share"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2687
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2689
    :cond_1
    sget-object v1, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "direct_photo_share"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2690
    sget-object v1, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "direct_photo_share_for_patent_avoidance"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static makeFeatureForCanada()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1738
    const-string v0, "d2vl"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "d2ub"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "d2vw"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "comanchevl"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "t0ltevl"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "t0lteub"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "t0ltevw"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-I727R"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-I757M"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-I717R"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-I717D"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-I717M"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-T989D"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jfltevw"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jfltewx"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jfltevl"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jflteub"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "meliusltevl"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hltevl"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1743
    const-string v0, "d2vw"

    sget-object v4, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1744
    const-string v0, "jfltevw"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jfltewx"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1745
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v0, v2

    :goto_2
    if-nez v0, :cond_6

    .line 1768
    :goto_3
    return-void

    :cond_3
    move v0, v1

    .line 1738
    goto :goto_0

    :cond_4
    move v0, v1

    .line 1744
    goto :goto_1

    :cond_5
    move v0, v1

    .line 1745
    goto :goto_2

    .line 1749
    :cond_6
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "network_mode_list_lte"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "callforwarding_popup_in_can"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_7
    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "callforwarding_disable_in_flight_mode"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "networksearching_in_can"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "networkmode_in_can"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "end_call_two_button"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "video_call_disable"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "beep_vibration_for_ussd"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "feature_can"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "hac_enable"

    const-string v2, "hltevl"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_a
    move v0, v1

    .line 1749
    goto :goto_4

    :cond_b
    move v0, v1

    .line 1751
    goto :goto_5
.end method

.method public static makeFeatureForChina()V
    .locals 13

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1773
    const-string v0, "ironzn"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ironzm"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "duoszn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "duoszc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "duoszm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1776
    const-string v0, "CHN"

    sget-object v4, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CHU"

    sget-object v4, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CTC"

    sget-object v4, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CHM"

    sget-object v4, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CHC"

    sget-object v4, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1778
    const-string v0, "m0ctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "m0grandectc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "delos3gduosctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "h3gduosctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "melius3gduosctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "t03gctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "kyleplus3gctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "crater3gctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "aruba3gduosctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "kyleplusctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "infinite3gduosctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ja3gduosctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "baffin3gduosctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "lt023gctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "montblanc3gctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "hltefacchnctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->product_device:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "delos3gviactc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "montblanc3gfacchnctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->product_device:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ms013gctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cs02ve3gctc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1781
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    move v0, v2

    :goto_3
    if-nez v0, :cond_8

    .line 2010
    :goto_4
    return-void

    :cond_4
    move v0, v1

    .line 1773
    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 1776
    goto/16 :goto_1

    :cond_6
    move v0, v1

    .line 1778
    goto :goto_2

    :cond_7
    move v0, v1

    .line 1781
    goto :goto_3

    .line 1786
    :cond_8
    const-string v0, "CHN"

    sget-object v6, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "CHU"

    sget-object v6, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "CHM"

    sget-object v6, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "CHC"

    sget-object v6, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_9
    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1788
    const-string v0, "CHM"

    sget-object v7, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "CHC"

    sget-object v7, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "CMCC"

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_a
    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1791
    const-string v0, "CHU"

    sget-object v8, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "CU"

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_b
    move v0, v2

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1792
    const-string v0, "melius3gduosctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "montblanc3gctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "t03gctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "kyleplus3gctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "lt023gctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "aruba3gduosctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "infinite3gduosctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "delos3gduosctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "ms013gctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_c
    move v0, v2

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1795
    const-string v0, "m0grandectc"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "delos3gduosctc"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "t03gctc"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "kyleplus3gctc"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "montblanc3gfacchnctc"

    sget-object v10, Lcom/android/phone/PhoneFeature;->product_device:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "aruba3gduosctc"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "infinite3gduosctc"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "ja3gduosctc"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "baffin3gduosctc"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "hltefacchnctc"

    sget-object v10, Lcom/android/phone/PhoneFeature;->product_device:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "h3gduosctc"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "melius3gduosctc"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "crater3gctc"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "montblanc3gctc"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "delos3gviactc"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "ms013gctc"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_d
    move v0, v2

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 1805
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "feature_chn"

    invoke-virtual {v0, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "disable_format_number"

    invoke-virtual {v0, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "hide_caller_id"

    invoke-virtual {v0, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "geo_description_disable"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1815
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "video_call_disable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_30

    :cond_e
    move v0, v2

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "voice_call_recording"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "aruba3gduosctc"

    sget-object v12, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "kyleplusctc"

    sget-object v12, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "cs02ve3gctc"

    sget-object v12, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "infinite3gduosctc"

    sget-object v12, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "baffin3gduosctc"

    sget-object v12, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "delos3gduosctc"

    sget-object v12, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    move v0, v2

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_sip_call_setting"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1824
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ip_call"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1827
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ip_call_cmcc"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1830
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ip_call_gsm"

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "auto_redial_time_delay"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vt_adjust_camera_contrast_brightness"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vt_adjust_screen_brightness"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vt_audio_mixed_recording"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vt_multimedia_ringback_tone_timer"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vt_cmcc_operator_open_close_camera"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vt_cmcc_operator_fallback"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vt_display_start_call_time"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "preferred_networks"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "display_network_forbidden_information"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1867
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "call_block_ui"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "voice_privacy_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_32

    move v0, v2

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1873
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "phone_number_locator"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ctc_voicecall_additional_setting"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "cdma_call_forwarding_indicator"

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1882
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_ctc"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1885
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ctc_call_time_duration"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ctc_dual_mode"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_f
    const-string v0, "kyleplusctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lt023gctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "cs02ve3gctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    move v0, v2

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1891
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ctc_dual_mode_single_phone_byqc"

    const-string v0, "kyleplusctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "lt023gctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "cs02ve3gctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_10
    move v0, v2

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1894
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_chn_dual_mode"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_11
    move v0, v2

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1897
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_chn_dual_mode_cdma_gsm"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1900
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_chn_dual_mode_gsm_gsm"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_chn_duos"

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_12
    move v0, v2

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_chn_duos_cdma_gsm"

    invoke-virtual {v0, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_chn_duos_gsm_gsm"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1911
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_multisim"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "number_of_select_icon_is_9"

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_13
    move v0, v2

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_chn_dual_mode_with_one_ril"

    const-string v8, "t03gzm"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ctc_vip_mode"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "aruba3gduosctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "kyleplusctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "cs02ve3gctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "infinite3gduosctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "ms013gctc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    move v0, v2

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1923
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "fdn_nameinput_maxlength_limit"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_14
    move v0, v2

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1926
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ctc_roamingcall"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ctc_cdma_smc_fac_req"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "no_alert_tone_signal"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_network_mode"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "u0ltezc"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_15
    const-string v0, "t0ltezm"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "t0voltezm"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "cs03ltezm"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "hltezm"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    move v0, v2

    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "display_tdscdma_instead_of_wcdma"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "lawmo_lock"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_china_lunar"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "play_media_tone_via_bt"

    const-string v7, "aruba3gzm"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "extra_ringer"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->hasIlluminanceSensor()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "alert_in_call_use_ipc"

    const-string v0, "aruba3gduosctc"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "infinite3gduosctc"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "baffin3gduosctc"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "delos3gduosctc"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_16
    move v0, v2

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1958
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "end_call_two_button"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3c

    move v0, v2

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1960
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_button_sound_effects"

    const-string v0, "aruba3gzm"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "delos3gzm"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_17
    move v0, v2

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    const-string v0, "lt023gctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "kyleplusctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "cs02ve3gctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1963
    :cond_18
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_mode_disable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "allow_select_network_mode"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1966
    :cond_19
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_wake_lock_during_call_recording"

    const-string v0, "kylepluszc"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "aruba3gzc"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "aruba3gduosctc"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "nevis3gzc"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "delos3gzc"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_1a
    move v0, v2

    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "write_call_state"

    const-string v7, "aruba3gzm"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "no_proximity_sensor"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->hasProximitySensor()Z

    move-result v0

    if-nez v0, :cond_3f

    move v0, v2

    :goto_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1974
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "reject_call_with_message_icon_mode"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "mproject3g"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "melius"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "delos3gzm"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "hlte"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "h3g"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "cs02"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "cs03"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "cs05"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "wilcox"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "santos103gzc"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "montblanc3gctc"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "vikal"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_1b
    move v0, v2

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "voice_call_recording_second_call_ongoing"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "change_order_of_endcall_buttons"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "voice_call_recording_easy_mode"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_chn_duos_support_cgg"

    const-string v0, "melius3gduosctc"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "h3gduosctc"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "montblanc3gctc"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_1c
    move v0, v2

    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_mode_tdlte"

    const-string v0, "t0ltezm"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "t0voltezm"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "cs03ltezm"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "hltezm"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_1d
    move v0, v2

    :goto_1c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_sglte"

    const-string v0, "t0ltezm"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "t0voltezm"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "cs03ltezm"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "hltezm"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_1e
    move v0, v2

    :goto_1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vt_audio_mixed_recording_via_stack"

    const-string v0, "ms013gzm"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "melius3gzm"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "delos3gzm"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "cratertd3gzm"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "baffinvetd3gzm"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v7, "h3gzm"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_1f
    move v0, v2

    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ctc_country_code_locator"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "delay_switch_speaker_during_call"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "baffinvetd3g"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "play_emergency_dialer_key_tone"

    const-string v0, "montblanc3gctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "vikal"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_20
    move v0, v2

    :goto_1f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "emergency_dialer_sound_pool_tones_haptic"

    const-string v0, "montblanc3gctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "vikal"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    move v0, v2

    :goto_20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "ctc_esurfing_dial_up"

    const-string v0, "montblanc3gctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "h3gduosctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "ms013gctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "cs02ve3gctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_21
    move v0, v2

    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_wvga"

    const-string v0, "montblanc3gctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "vikal"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_22
    move v0, v2

    :goto_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_focused_button"

    const-string v0, "montblanc3gctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "vikal"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_23
    move v0, v2

    :goto_23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "answer_call_folder_opened"

    const-string v0, "montblanc3gctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "vikal"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_24
    move v0, v2

    :goto_24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2002
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "end_call_folder_closed"

    const-string v0, "montblanc3gctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "vikal"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_25
    move v0, v2

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "activate_proximity_sensor_folder_opened"

    const-string v0, "montblanc3gctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "vikal"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_26
    move v0, v2

    :goto_26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2004
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_folder_hardkey"

    const-string v0, "montblanc3gctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "vikal"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_27
    move v0, v2

    :goto_27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "hold_key_end_call"

    const-string v0, "montblanc3gctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "vikal"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_28
    move v0, v2

    :goto_28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2009
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "separate_call_forwarding_notification"

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_29

    const-string v5, "sec_product_feature_common_dsds_support"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_29

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2a

    :cond_29
    move v1, v2

    :cond_2a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_2b
    move v0, v1

    .line 1786
    goto/16 :goto_5

    :cond_2c
    move v0, v1

    .line 1788
    goto/16 :goto_6

    :cond_2d
    move v0, v1

    .line 1791
    goto/16 :goto_7

    :cond_2e
    move v0, v1

    .line 1792
    goto/16 :goto_8

    :cond_2f
    move v0, v1

    .line 1795
    goto/16 :goto_9

    :cond_30
    move v0, v1

    .line 1815
    goto/16 :goto_a

    :cond_31
    move v0, v1

    .line 1817
    goto/16 :goto_b

    :cond_32
    move v0, v1

    .line 1870
    goto/16 :goto_c

    :cond_33
    move v0, v1

    .line 1888
    goto/16 :goto_d

    :cond_34
    move v0, v1

    .line 1891
    goto/16 :goto_e

    :cond_35
    move v0, v1

    .line 1894
    goto/16 :goto_f

    :cond_36
    move v0, v1

    .line 1903
    goto/16 :goto_10

    :cond_37
    move v0, v1

    .line 1914
    goto/16 :goto_11

    :cond_38
    move v0, v1

    .line 1920
    goto/16 :goto_12

    :cond_39
    move v0, v1

    .line 1923
    goto/16 :goto_13

    :cond_3a
    move v0, v1

    .line 1935
    goto/16 :goto_14

    :cond_3b
    move v0, v1

    .line 1954
    goto/16 :goto_15

    :cond_3c
    move v0, v1

    .line 1958
    goto/16 :goto_16

    :cond_3d
    move v0, v1

    .line 1960
    goto/16 :goto_17

    :cond_3e
    move v0, v1

    .line 1966
    goto/16 :goto_18

    :cond_3f
    move v0, v1

    .line 1971
    goto/16 :goto_19

    :cond_40
    move v0, v1

    .line 1974
    goto/16 :goto_1a

    :cond_41
    move v0, v1

    .line 1983
    goto/16 :goto_1b

    :cond_42
    move v0, v1

    .line 1985
    goto/16 :goto_1c

    :cond_43
    move v0, v1

    .line 1987
    goto/16 :goto_1d

    :cond_44
    move v0, v1

    .line 1989
    goto/16 :goto_1e

    :cond_45
    move v0, v1

    .line 1996
    goto/16 :goto_1f

    :cond_46
    move v0, v1

    .line 1997
    goto/16 :goto_20

    :cond_47
    move v0, v1

    .line 1998
    goto/16 :goto_21

    :cond_48
    move v0, v1

    .line 1999
    goto/16 :goto_22

    :cond_49
    move v0, v1

    .line 2000
    goto/16 :goto_23

    :cond_4a
    move v0, v1

    .line 2001
    goto/16 :goto_24

    :cond_4b
    move v0, v1

    .line 2002
    goto/16 :goto_25

    :cond_4c
    move v0, v1

    .line 2003
    goto/16 :goto_26

    :cond_4d
    move v0, v1

    .line 2004
    goto/16 :goto_27

    :cond_4e
    move v0, v1

    .line 2005
    goto/16 :goto_28
.end method

.method public static makeFeatureForCommon()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1305
    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "lte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "m3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "t0lte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "p4notelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "baffinlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "expressltexx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "ks01lte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "meliusca"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "jftddxx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1307
    const-string v0, "GT-I9100M"

    sget-object v4, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1308
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "stop_signal_info_tone"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "air_motion_wave"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_format_number"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_data_usage"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v7, "ms013gxx"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "hide_pause_icon_help_call_screen"

    const-string v0, "hltevzw"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jfltespr"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_incomingcall_popup_service"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v7, "hlte"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_conference_call"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "display_busy_picture"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "call_icon_display_in_call_screen"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_call_transfer"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_merge_call"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "fdn_contact_search"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_SearchIncludingFdn"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "write_sleep_checking_file"

    sget-object v0, Lcom/android/phone/PhoneFeature;->platform:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneFeature;->platform:Ljava/lang/String;

    const-string v7, "exynos"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/phone/PhoneFeature;->platform:Ljava/lang/String;

    const-string v7, "msm8960"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v7, "hlte"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v7, "h3g"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "js01ltedcm"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v7, "flte"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_3
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "write_hard_key_reset_file"

    sget-object v0, Lcom/android/phone/PhoneFeature;->platform:Ljava/lang/String;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/phone/PhoneFeature;->platform:Ljava/lang/String;

    const-string v7, "exynos"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/phone/PhoneFeature;->platform:Ljava/lang/String;

    const-string v7, "msm"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_4
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "display_additional_caller_info"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "answering_ending_call_on"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v7, "cane3g"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "raft"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "ssc_antenna_solution"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_EnableSSC"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "ssc_antenna_solution_qualcomm_ril"

    const-string v6, "jfltexx"

    sget-object v7, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "keyboard_open_spk_on"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "koeno_takuhaibin_number"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_subaddress_settings"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_additional_settings"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "fdn_button_call"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_EnableCallButtonInFdnList"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "network_mode_not_support_gsm"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v7, "u0lte"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_network_mode_wcdma_only"

    const-string v6, "wcdmaonly"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_network_mode_gsm_only"

    const-string v6, "gsmonly"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_network_mode_lte"

    const-string v6, "lte"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "bootup_data_connection_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_EnableDataServicePopup"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "bootup_data_tariff_rate_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Settig_EnableDataTariffWizard"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "national_roaming_mode_menu"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_EnableDataRoamingMenuInDetail"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "national_roaming_mode_menu_play"

    const-string v0, "PRT"

    sget-object v7, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "XEO"

    sget-object v7, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_6
    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "data_roaming_option_national"

    const-string v6, "national"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_DataRoamingOption"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "data_roaming_option_all"

    const-string v6, "all"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_DataRoamingOption"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "data_roaming_noti_tray"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_EnableDataRoamingButtonInQuickPanel"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "network_mode_list_lte"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "action_bar_no_title_when_has_two_menu"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "cust_network_sel_menu4_orange"

    const-string v5, "ORANGE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "cust_network_sel_menu4_numeric"

    const-string v5, "NUMERIC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "cust_network_sel_menu4_vodafone"

    const-string v0, "VODAFONE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "RWC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_7
    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "cust_network_sel_menu4_atl_lte"

    const-string v5, "ATL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "cust_network_sel_menu4_yog"

    const-string v5, "YOG"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "cust_network_sel_menu4_o2"

    const-string v5, "O2"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "cust_network_sel_menu4_addauto"

    const-string v0, "OLB"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ADDAUTO"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "TGY"

    sget-object v6, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "BMC"

    sget-object v6, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "TLS"

    sget-object v6, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "RWC"

    sget-object v6, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_8
    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "cust_network_sel_menu4_lteonly"

    const-string v5, "LTEONLY"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "cust_network_sel_menu4_lteready"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_NotiLteAvailableStatus"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "network_selection_delay"

    const-string v0, "hltexx"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ha3gxx"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "hltevj"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ha3gub"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "h3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ha3gzs"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "hltezh"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ja3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "cs023g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "wilcoxdsxx"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "lt03"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "m0xx"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_9
    move v0, v2

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_state_manual_search"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_ManualSearchListWithDetailStatus"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_noise_reduction_in_wbamr"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "default_noise_reduction"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "noise_suppression_support_speaker"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "mysound_nbcall_only"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "mysound_music_only"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "showing_extra_volume"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "extra_volume_on_off_delay"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "nextwork_mute_on_ringbacktone"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "loganltexx"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "loganltevj"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "loganlteub"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_a
    move v0, v2

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "maxvolume_headset_vibration"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "kona3g"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "qualcomm_ril"

    sget-object v0, Lcom/android/phone/PhoneFeature;->platform:Ljava/lang/String;

    if-eqz v0, :cond_31

    sget-object v0, Lcom/android/phone/PhoneFeature;->platform:Ljava/lang/String;

    const-string v6, "msm"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    move v0, v2

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "audio_separate_ringback_gain"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "btn_on_off_delay"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "separate_call_reject"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableSeparateCallReject"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "keypad_type_to_phone_for_ussd"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_KeypadTypeToDigit4UssdInput"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disappear_ussd_cancel_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableUssdCancelPopup"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "beep_vibration_for_ussd"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableBeepVibration4UssdAlert"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "default_vm_in_callforwarding"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableVmsNumberAsDefaultInCallForwarding"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_ringtone_keytone"

    const-string v0, "kyleplusctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "cs02ve3gctc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_b
    move v0, v2

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_display_voicemail_keypad"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_RemoveKeypadDuringVmsCall"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "personal_vibration"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->hasVibratorFeature()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "prevent_duplicated_popup_msg"

    const-string v0, "INU"

    sget-object v6, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "INS"

    sget-object v6, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "lt033gzs"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "lt03ltezh"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_c
    move v0, v2

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "barge_in"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_ltn_auto_csp"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v6, "CscFeature_VoiceCall_EnablePrefix4LongDistanceCallAs"

    invoke-virtual {v0, v6}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_34

    move v0, v2

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_ltn_sdnname_display"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableDisplaySdnNameDuringCall"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_sip_call_setting"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_DisableMenuInternetCallSetting"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_rcs"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_rcs_ver2"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ringtone_escalating"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "extra_ringer"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->hasIlluminanceSensor()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "extra_ringer_default_on"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "not_update_bt_connecting"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_autoanswer_in_silent_and_earjackmode"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableAutoAnswerInSilentNEarjactMode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_display_vmtelnum_duringcall"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableDisplayVMTelNumDuringCall"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "order_neg_pos_buttons"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "allow_select_network_mode"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vi_animation"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "reject_call_with_message_send_button_enable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "data_enable_on_destroy"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ecbm_emergency_calls_only_enable"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "in_call_menu_memo_enable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "in_call_menu_message_enable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_edit_callerid"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableEditingCallerID"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_dormant_mode"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "service_memo_during_call"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "lt03"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "hlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "h3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ha3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "GT-I9220"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "p4note"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "t03g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "t0lte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "kona"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "GT-N7000"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "SHV-E160"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "SGH-I717"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "v1a3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "viennalte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_d
    move v0, v2

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_remind_me_later_support "

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enbale_voicerecording_popup_when_incoming"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_network_mode"

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "gd1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "u0ltexw"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_e
    move v0, v2

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "move_incomingcallwidget_touch_area"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "t03g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "t0lte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_f
    move v0, v2

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "force_display_endcall_screen"

    const-string v0, "t0lteuc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "d2lte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "d2uc"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "jfltevl"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "t03gxx"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "m0ub"

    sget-object v6, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_10
    move v0, v2

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_onehand_operation"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_onehand_any_screen"

    const-string v5, "support_onehand_operation"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_mobile_data_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "geo_description_disable"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableGeoDescription"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_mmi_complete_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableUssdCompleteNoti"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "change_ussd_popup_lte"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_UseUssdToastForNetworkNoResp"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "add_panel"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "emergency_contacts"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "hw_home_key"

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x1110048

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_39

    move v0, v2

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "powey_key_ends_call_during_screen_off"

    const-string v5, "hw_home_key"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "extra_volume"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "vt_theme_feature_support"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "GT-I9070"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    move v0, v2

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1496
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "vt_audio_processing_on_ap"

    const-string v6, "msm8960"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "montblanc"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_11
    move v0, v2

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "vt_dual_camera"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "picassoltexx"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "v1a3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "viennalte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ja3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "jflte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "hlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "h3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ha3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "jftdd"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ks01lte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "jfve"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_12
    move v0, v2

    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vt_camera_firmware_update_check_popup"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "vt_camera_init_noise_reduction"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "mproject"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "mprojectqlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_13
    move v0, v2

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "use_snote_string"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "t03g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "t0lte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneFeature;->hasSNote()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneFeature;->hasNewSNote()Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_14
    move v0, v2

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "use_action_memo_string"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "hlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ha3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "h3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "lt03lte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "lt033g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "viennalte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "v1a3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_15
    move v0, v2

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_vau"

    const-string v5, "VAU"

    sget-object v6, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_can_bmc"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "video_call_remove_record_button"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "video_call_msm8974_ringbacktone_enable"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "hlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "h3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ks01lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_16
    move v0, v2

    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "video_call_audio_focus_enable"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "hlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "h3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ha3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ks01lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_17
    move v0, v2

    :goto_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "proximity_sensor_control_by_keypad"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "proximity_sensor_enable_during_background_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "Enable_OrangePopup_DataOnlyModel"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_VoiceCall_EnableWizard1stCall4Tablet"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_marvell_dsds"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_preferred_sim_card_dsds"

    const-string v4, "feature_marvell_dsds"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "caller_animation_small_images"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "hlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ha3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "h3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "jactivelte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ks01lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "meliusca"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "js01ltedcm"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "flte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "v1a3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "viennalte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_18
    move v0, v2

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_easy_mode"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->isPreviousThanJProject()Z

    move-result v0

    if-nez v0, :cond_43

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "t0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "d2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    move v0, v2

    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "clear_cover"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Lcom/android/phone/PhoneFeature;->isHProject()Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ks01lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "meliusca"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "serrano"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "melius"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "js01ltedcm"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "flte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_19
    move v0, v2

    :goto_1c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "clear_cover_enhanced"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->isHProject()Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "flte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_1a
    move v0, v2

    :goto_1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "clear_cover_with_proximity"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "clear_cover_increase_threshold"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ks01lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_1b
    move v0, v2

    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "clear_cover_not_support_end_call"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "melius"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "serrano"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_1c
    move v0, v2

    :goto_1f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "safety_assurance"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->isPreviousThanJProject()Z

    move-result v0

    if-nez v0, :cond_48

    move v0, v2

    :goto_20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "sstream_voice_call_enable"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "hlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "h3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ha3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "js01ltedcm"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt03lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt033g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "flte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_1d
    move v0, v2

    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ssuport_hand_adapt_operation"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "hlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "h3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ha3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_1e
    move v0, v2

    :goto_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "minute_minder_noti"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "hlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "h3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ha3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_1f
    move v0, v2

    :goto_23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "enhanced_driving_mode"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ks01lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "meliusca"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "cane"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "hlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "h3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ha3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "js01ltedcm"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "flte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_20
    move v0, v2

    :goto_24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    const-string v0, "ro.product.model"

    const-string v3, "NONE"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1572
    const-string v3, "SGH-T999V"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1573
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_d2_vtr"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "video_call_disable"

    const-string v4, "GT-I9210"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    :cond_21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "end_call_two_button"

    const-string v4, "GT-I9210"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    :cond_22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_sec_lock_screen"

    const-string v4, "nevis3gzc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "acrodea_avatar"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1587
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "common_ims"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v3

    .line 1589
    if-eqz v3, :cond_4d

    const/4 v0, 0x4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v2

    .line 1591
    :goto_25
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "common_volte"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "common_volte_vt"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_volte_emergency_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "add_vt_hold_in_menu"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "INU"

    sget-object v5, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v2

    :goto_26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "accept_vt_by_button"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_volte_hold_tone"

    const-string v4, "common_volte"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ril_network_on"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "voip_interworking"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "waiting_call_option_hold"

    const-string v4, "hold"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_OptionConfigForCallWaiting"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "waiting_call_option_end"

    const-string v4, "end"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_OptionConfigForCallWaiting"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "waiting_call_option_invisible"

    const-string v0, "waiting_call_option_hold"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "waiting_call_option_end"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_23
    move v0, v2

    :goto_27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "send_missedcall_id_to_other_device"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "sec_bt_at_command"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "not_foreground_but_update_incallscreen"

    const-string v4, "goldenltebmc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "end_callscreen_for_dualsim"

    const-string v4, "wilcoxdsxx"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "samsung_screen_timeout_incall"

    const-string v0, "goldenltebmc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "serranoltebmc"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    :cond_24
    move v0, v2

    :goto_28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_dongle_function"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "not_support_vt_multiwindow"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->hasMultiWindwoFeature()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-static {}, Lcom/android/phone/PhoneFeature;->isHProject()Z

    move-result v0

    if-eqz v0, :cond_51

    move v0, v2

    :goto_29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_incomingcall_multi_window"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->hasMultiWindwoFeature()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {}, Lcom/android/phone/PhoneFeature;->isHProject()Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "js01ltedcm"

    sget-object v5, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_25
    move v0, v2

    :goto_2a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_incomingcall_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_EnableIncomingcallPopup"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "show_icc_ndp"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_integrator_haptic"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_usb30_on_e911"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->isHProject()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_incomingcall_penwindow"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_kk_vt_tablet_multiwindow"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_vtincomingcall_penwindow"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "fixing_lcd_brightness"

    sget-object v4, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt03"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_multisim"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_multisim_profile"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_multisim_enable_dynamic"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_multisim_ver2"

    const-string v4, "V2"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_multisim_ver3"

    const-string v4, "V3"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "separate_call_forwarding_notification"

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    const-string v4, "sec_product_feature_common_dsds_support"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_26
    move v1, v2

    :cond_27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    return-void

    :cond_28
    move v0, v1

    .line 1305
    goto/16 :goto_0

    :cond_29
    move v0, v1

    .line 1313
    goto/16 :goto_1

    :cond_2a
    move v0, v1

    .line 1326
    goto/16 :goto_2

    :cond_2b
    move v0, v1

    .line 1328
    goto/16 :goto_3

    :cond_2c
    move v0, v1

    .line 1353
    goto/16 :goto_4

    :cond_2d
    move v0, v1

    .line 1361
    goto/16 :goto_5

    :cond_2e
    move v0, v1

    .line 1365
    goto/16 :goto_6

    :cond_2f
    move v0, v1

    .line 1370
    goto/16 :goto_7

    :cond_30
    move v0, v1

    .line 1382
    goto/16 :goto_8

    :cond_31
    move v0, v1

    .line 1386
    goto/16 :goto_9

    :cond_32
    move v0, v1

    .line 1408
    goto/16 :goto_a

    :cond_33
    move v0, v1

    .line 1415
    goto/16 :goto_b

    :cond_34
    move v0, v1

    .line 1420
    goto/16 :goto_c

    :cond_35
    move v0, v1

    .line 1464
    goto/16 :goto_d

    :cond_36
    move v0, v1

    .line 1468
    goto/16 :goto_e

    :cond_37
    move v0, v1

    .line 1470
    goto/16 :goto_f

    :cond_38
    move v0, v1

    .line 1472
    goto/16 :goto_10

    :cond_39
    move v0, v1

    .line 1490
    goto/16 :goto_11

    :cond_3a
    move v0, v1

    .line 1493
    goto/16 :goto_12

    :cond_3b
    move v0, v1

    .line 1496
    goto/16 :goto_13

    :cond_3c
    move v0, v1

    .line 1498
    goto/16 :goto_14

    :cond_3d
    move v0, v1

    .line 1506
    goto/16 :goto_15

    :cond_3e
    move v0, v1

    .line 1508
    goto/16 :goto_16

    :cond_3f
    move v0, v1

    .line 1509
    goto/16 :goto_17

    :cond_40
    move v0, v1

    .line 1519
    goto/16 :goto_18

    :cond_41
    move v0, v1

    .line 1520
    goto/16 :goto_19

    :cond_42
    move v0, v1

    .line 1535
    goto/16 :goto_1a

    :cond_43
    move v0, v1

    .line 1540
    goto/16 :goto_1b

    :cond_44
    move v0, v1

    .line 1542
    goto/16 :goto_1c

    :cond_45
    move v0, v1

    .line 1546
    goto/16 :goto_1d

    :cond_46
    move v0, v1

    .line 1551
    goto/16 :goto_1e

    :cond_47
    move v0, v1

    .line 1554
    goto/16 :goto_1f

    :cond_48
    move v0, v1

    .line 1559
    goto/16 :goto_20

    :cond_49
    move v0, v1

    .line 1561
    goto/16 :goto_21

    :cond_4a
    move v0, v1

    .line 1563
    goto/16 :goto_22

    :cond_4b
    move v0, v1

    .line 1564
    goto/16 :goto_23

    :cond_4c
    move v0, v1

    .line 1566
    goto/16 :goto_24

    :cond_4d
    move v0, v1

    .line 1589
    goto/16 :goto_25

    :cond_4e
    move v0, v1

    .line 1595
    goto/16 :goto_26

    :cond_4f
    move v0, v1

    .line 1606
    goto/16 :goto_27

    :cond_50
    move v0, v1

    .line 1617
    goto/16 :goto_28

    :cond_51
    move v0, v1

    .line 1621
    goto/16 :goto_29

    :cond_52
    move v0, v1

    .line 1622
    goto/16 :goto_2a

    :cond_53
    move v0, v1

    move v3, v1

    goto/16 :goto_25
.end method

.method public static makeFeatureForHKTW()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1713
    const-string v0, "TGY"

    sget-object v3, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BRI"

    sget-object v3, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CWT"

    sget-object v3, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TWN"

    sget-object v3, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FET"

    sget-object v3, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ZZH"

    sget-object v3, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1714
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1733
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1713
    goto :goto_0

    .line 1718
    :cond_2
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_hktw"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    const-string v3, "TGY"

    sget-object v4, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1721
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_format_number"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    :goto_2
    sget-object v1, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "fdn_nameinput_maxlength_limit"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "remove_network_mode"

    const-string v2, "u0ltezt"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "extra_ringer"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->hasIlluminanceSensor()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1724
    :cond_3
    sget-object v1, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_format_number"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static makeFeatureForJapan()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2014
    const-string v0, "USA"

    const-string v3, "JPN"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2015
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2128
    :cond_0
    :goto_0
    return-void

    .line 2020
    :cond_1
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "nck_block_feature"

    const-string v4, "DCM"

    sget-object v5, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    const-string v0, "TMO"

    const-string v3, "DCM"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2025
    const-string v0, "TMO"

    const-string v4, "KDI"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2028
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_dcm_u1"

    const-string v6, "SC-02C"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_kdi"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_additional_call_setting_for_kor"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "cdma_apn_enable"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "hide_FDN"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "hide_call_barring"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "voice_call_recording"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2038
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_voicemail_category"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_call_forwarding"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "hide_caller_id"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "international_dial_assist"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "voicemail_roaming_number"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "voicemail_notification_setting"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "voice_call_recording_menu"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "voice_call_recording_second_call_ongoing"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2046
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "voice_call_recording_easy_mode"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_callsettings_menu"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_jcontacts_package_name"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_dsac_feature"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_callwait_tone_long_feature"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_prohibit_secondcall_in_emergency"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_start_search_delay"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_manual_select_delay"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_show_separated_network_list"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_forbidden_network_show"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_reject_call_msg_limit"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_not_support_extra_calllog_type"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_parse_network_service_ussd"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "display_mobiledata_off_alert"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "change_hangup_ipc_in_auto_reject"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2061
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "network_mode_list_lte"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2062
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_change_data_enable_func"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2063
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_display_voicemail_keypad"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_disable_block_reject_call"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2068
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_sip_call_setting"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_2
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "video_call_disable"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_3
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2071
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "end_call_two_button"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_4
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "automatic_answering_machine"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_5
    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2073
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_data_enable_on_destroy"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_6
    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2074
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "safety_assurance_call_popup"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_7
    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "airplain_mode_jpn"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_8
    move v0, v2

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2078
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "emergency_contacts"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "Emergency_dialer_expandable_dial"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "automatic_answering_machine_kdi"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2083
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_reject_message"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_fwim"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "cnap_text_for_smc_test"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "kdi_show_separated_network_list"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "toddler_mode_jpn"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2091
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_conference_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_call_transfer"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_merge_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_mode_list_dcm_lte"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2099
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_mode_list_dcm_lte_3g"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_mode_list_dcm"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2105
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "change_network_mode_ui"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2108
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "check_enable_block_apn_change"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_emergency_conflict"

    const-string v0, ""

    const-string v6, "HLTEDCM"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    const-string v6, "JS01LTEDCM"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_9
    move v0, v2

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2115
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "in_call_menu_memo_enable"

    const-string v5, ""

    const-string v6, "JS01LTEDCM"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    move v1, v2

    :cond_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2118
    :cond_b
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2120
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "updated_calling_name_presentation"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "update_user_data_diff_name"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2123
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "no_alert_tone_signal"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2125
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "network_mode_list_kdi"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2126
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "network_mode_async_modem_kdi"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    move v0, v1

    .line 2068
    goto/16 :goto_1

    :cond_d
    move v0, v1

    .line 2070
    goto/16 :goto_2

    :cond_e
    move v0, v1

    .line 2071
    goto/16 :goto_3

    :cond_f
    move v0, v1

    .line 2072
    goto/16 :goto_4

    :cond_10
    move v0, v1

    .line 2073
    goto/16 :goto_5

    :cond_11
    move v0, v1

    .line 2074
    goto/16 :goto_6

    :cond_12
    move v0, v1

    .line 2075
    goto/16 :goto_7

    :cond_13
    move v0, v1

    .line 2111
    goto :goto_8
.end method

.method public static makeFeatureForKor()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2132
    const-string v0, "SKT"

    sget-object v3, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2133
    const-string v0, "KTT"

    sget-object v4, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2134
    const-string v0, "LGT"

    sget-object v5, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2135
    const-string v0, "ANY"

    sget-object v6, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 2136
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 2137
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2373
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 2136
    goto :goto_0

    .line 2141
    :cond_2
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_skt"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2143
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_ktt"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2144
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_lgt"

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_kor_open"

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2148
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2149
    :cond_3
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_conference_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2151
    :cond_5
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_call_transfer"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2152
    :cond_6
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "display_busy_picture"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_merge_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "default_noise_reduction"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2155
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "stop_signal_info_tone"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2156
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "update_user_data_diff_name"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2159
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "geo_description_disable"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "play_local_dtmf_tones"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2161
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "dtmf_smaller_hit_target"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "restore_spk_unplugged_dock"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2163
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "check_ringtone_repeat"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2164
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "hide_FDN"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2165
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "hide_call_barring"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2166
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_voicemail_category"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2167
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "voice_call_recording"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2168
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "voice_call_recording_easy_mode"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2169
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_additional_call_setting_for_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2170
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_call_forwarding"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2171
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_sip_call_setting"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2172
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "set_world_phone_option_for_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2173
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "display_alerting_title"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2174
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_logs_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2175
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "notify_audio_reset"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2176
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "implicit_network_setting"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2177
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "custom_setting"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sec_korea_mm_audio"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2179
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sec_korea_bluetooth"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sec_korea_a2dp_suspend_bluetooth"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2181
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sec_korea_bluetooth_dim"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2182
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "sec_korea_bluetooth_check_mono_stereo"

    const-string v0, "SHV-E110S"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "SHV-E120"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "SHV-E160"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_7
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2184
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "restrict_international_call"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2185
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "international_call_service"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2186
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "display_reject_message_limit"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2187
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "rearrange_preset_image_setting"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2188
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "modify_reject_message"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2189
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "mics_kor_common"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "roaming_auto_dial"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2191
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "clear_dialpad_digits"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "force_display_endcall_screen"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2193
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "force_turn_on_screen_for_new_incoming"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2194
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "not_show_call_view_statusbar"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2195
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "not_listen_mwi_cfi"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2196
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "limited_service_state"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_korea_lunar"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2198
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "bt_menu_in_easy_mode"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2200
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "menu_message"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2201
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "optis_command_test"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2202
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sms_pattern_lock_message"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2203
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "separate_connect_tone"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2204
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "use_situation_gain_for_ringbacktones"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2205
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_vt_call_setting_for_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2206
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "add_common_vt_call_setting_for_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2207
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "not_store_ns_pref"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2208
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "not_reset_spk_during_ps_call"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2209
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ota_mode_disable_expand"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2211
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "period_mark_animation"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2212
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_button_bt_touch_sound"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_one_touch_report"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2214
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_emergency_report_helper_app"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_EnableOneTouchReport"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2215
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "audio_separate_dtmf_tone"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "change_order_of_endcall_buttons"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2217
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_redial_by_hardkey"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_8
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2218
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "answer_call_folder_opened"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_9
    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2219
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "end_call_folder_closed"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_a
    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2220
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "activate_proximity_sensor_folder_opened"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_b
    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "answering_call_in_external_screen"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_c
    move v0, v2

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "reject_call_folder_closed"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_d
    move v0, v2

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2223
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "play_emergency_dialer_key_tone"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_e
    move v0, v2

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2224
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_focused_button"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_f
    move v0, v2

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2225
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "turn_off_screen_folder_closed"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_10
    move v0, v2

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2226
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_button_sound_effects_noise_reduction"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2227
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_button_sound_effects_extra_volume"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2228
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "data_popup_using_data_hotkey"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_11
    move v0, v2

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2229
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "hold_key_end_call"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_12
    move v0, v2

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2230
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "enlarge_end_call_button_text"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_13
    move v0, v2

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2231
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "disable_call_in_external_screen"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_14
    move v0, v2

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2232
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_direct_photo_share"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2233
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "disable_camera_in_call"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "mprojectlte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    move v0, v2

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2234
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_incomingcall_multi_window"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_incomingcall_popup_service"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "hlte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "flte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_15
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_45

    move v0, v2

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "add_situation_gain_for_ringbacktones"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "flte"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2237
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "changed_sview_cover_color"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "flte"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2240
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "emergency_for_cyber_terror"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2241
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "cdnip_supplementary_service"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "custom_waiting_tone"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2243
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "auto_call_test"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "waiting_call_end_tone"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2245
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "auto_unhold"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_16
    move v0, v2

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2246
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "call_icon_display_in_call_screen"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2247
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "visual_expression"

    const-string v0, "m0skt"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "SHV-E120S"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "SHV-E160S"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_17
    move v0, v2

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2248
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "emergency_find_lost_phone"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "alerting_occurs_twice"

    const-string v9, "m0skt"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "cancel_timeout_pending_mmi_request"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2253
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_waiting_tone"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2254
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_kt_spider"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_KTSpider_UseSpiderFeature"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2257
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_lgt_multi_call"

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2258
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "apn_setting_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks01lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "meliusca"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    :cond_18
    move v0, v2

    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2259
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sec_korea_lgu_bluetooth"

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2262
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "network_mode_for_lte_kor_open"

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2265
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "kor_qc_cs_vt"

    const-string v0, "jaguark"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "SHV-E120K"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "SHV-E160K"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "d2ktt"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "ks023gskt"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "ks023gktt"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_19
    move v0, v2

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2266
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "kor_cs_vt"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_1a
    move v0, v2

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2267
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "kor_cs_vt_ui"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_1b
    move v0, v2

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2268
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "kor_cs_vt_network_operator"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_1c
    move v0, v2

    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2269
    sget-object v8, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "emergency_vtcall"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_1d
    move v0, v2

    :goto_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2270
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_vt_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2271
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_vt_call_mediashare"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2272
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_vt_camera_device"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "mprojectlte"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v2

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2273
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_vt_alternative_image_permission"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_1e
    const-string v0, "SHV-E110S"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "SHV-E120"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "SHV-E160"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_1f
    move v0, v2

    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2274
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_vt_captureimageviewer_white_theme"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "lt03lte"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    move v0, v2

    :goto_1c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2275
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_nocapturedimagescramble"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_20
    const-string v0, "SHV-E110S"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "SHV-E120"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "SHV-E160"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_21
    move v0, v2

    :goto_1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2278
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_vt_siop_levelset"

    const-string v0, "c1skt"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "c1lgt"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_22
    move v0, v2

    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2281
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "block_data_during_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2283
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "rearrange_search_contact_image"

    const-string v0, "jaguars"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "jaguark"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "jaguarl"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    :cond_23
    move v0, v2

    :goto_1f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2286
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "restricted_call_for_qc_issue"

    const-string v0, "SHV-E110S"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "SHV-E120"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "SHV-E160"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    :cond_24
    move v0, v2

    :goto_20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2289
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "delay_hangup_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2292
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "increase_dtmf_tone_headset_plugged"

    const-string v0, "baffinlteskt"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "baffinltektt"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "baffinltelgt"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "superiorlteskt"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_25
    move v0, v2

    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2293
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "increase_dtmf_tone_headset_plugged_step1"

    const-string v0, "baffinlteskt"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "superiorlteskt"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_26
    move v0, v2

    :goto_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2294
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "increase_dtmf_tone_headset_plugged_step2"

    const-string v8, "baffinltektt"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "increase_dtmf_tone_headset_plugged_step3"

    const-string v8, "baffinltelgt"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2297
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "use_situation_gain_for_emergency_dialer_tones"

    const-string v8, "superiorlteskt"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2301
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "kor_infineon_chip"

    const-string v0, "m0skt"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "p4noterfktt"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "p4noterfskt"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "SHW-M250S"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "SHW-M250K"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    :cond_27
    move v0, v2

    :goto_23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "kor_phone_via_chip"

    const-string v0, "c1lgt"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "baffinltelgt"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_28
    move v0, v2

    :goto_24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2304
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_cs_svc_prop"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2305
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_action_domestic_network"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "p4notelteskt"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    :cond_29
    move v0, v2

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "mms_non_oma"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5a

    :cond_2a
    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "SHW-M250"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "SHV-E110S"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "SHV-E120"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "SHV-E160"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    :cond_2b
    move v0, v2

    :goto_26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2310
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "audio_separate_deskdock_path"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "not_spk_auto_changed_in_dock"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "SHW-M250"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "SHV-E120"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "SHV-E160"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "SHV-E110S"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    :cond_2c
    move v0, v2

    :goto_27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2314
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_nsri_secure"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2316
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "align_right_voice_eq_btn"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2318
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_oem_message_for_kk"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2320
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_follow_on_req"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2323
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_volte"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2d

    :cond_2d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2325
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "sec_ap_vtonly"

    const-string v8, "SEC_AP_VTONLY"

    const-string v9, "IMS_HYBRID_QCT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2326
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_cpvolte_qc"

    const-string v8, "SEC_HYBRID_QCT"

    const-string v9, "IMS_HYBRID_QCT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_srvcc_kor"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2328
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_folder_device"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "ks02lte"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2330
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_vt_call_conference"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2331
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_conference_voice"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2332
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_conference_call"

    const-string v0, "ims_vt_call_conference"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "ims_conference_voice"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_2e
    move v0, v2

    :goto_28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2333
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_conference_mt_ui"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2334
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_cpvolte"

    const-string v0, "SEC_HYBRID"

    const-string v9, "IMS_HYBRID_QCT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "SEC_HYBRID_QCT"

    const-string v9, "IMS_HYBRID_QCT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    :cond_2f
    move v0, v2

    :goto_29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2338
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "call_vibration_max_magnitude"

    const-string v8, "SHV-E110S"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2341
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "common_volte"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v9, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    move v0, v2

    :goto_2a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2343
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "common_volte_kor"

    const-string v8, "common_volte"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2344
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "common_volte_vt"

    const-string v8, "common_volte"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2345
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "common_volte_vt_kor"

    const-string v8, "common_volte"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2346
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ps_barring"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5f

    move v0, v2

    :goto_2b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "single_lte"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2348
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_add_call_for_volte"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2349
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_auto_call_test"

    const-string v0, "eng"

    sget-object v9, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_60

    move v0, v2

    :goto_2c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2350
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "handle_ims_not_registered"

    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_30
    move v0, v2

    :goto_2d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "service_callmessage"

    const-string v7, "common_volte"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    :cond_31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2353
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "service_mirrorcall"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2355
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "try_to_regi_ims"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_62

    move v0, v2

    :goto_2e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2357
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "cnap_supplementary_service"

    const-string v0, "single_lte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "service_callmessage"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    :cond_32
    move v0, v2

    :goto_2f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2358
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "enable_volte_hold_tone"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_64

    :cond_33
    move v0, v2

    :goto_30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2360
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "remove_instant_lettering"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "t0lte"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "c1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_65

    :cond_34
    move v0, v2

    :goto_31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2361
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "instant_lettering"

    const-string v0, "ims_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    :cond_35
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "remove_instant_lettering"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    move v0, v2

    :goto_32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2362
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "hd_voice_network_prefer"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_EnableHDVoiceDuring3GConnection"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2363
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "interworking_hd_voice_by_intent"

    const-string v6, "hd_voice_network_prefer"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2364
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "one_line_greeting"

    const-string v6, "service_callmessage"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_67

    :goto_33
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2367
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "missing_phone_lock"

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2370
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "piezo_handset"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2372
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "video_call_msm8974_ringbacktone_enable"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_36
    move v0, v1

    .line 2182
    goto/16 :goto_2

    :cond_37
    move v0, v1

    .line 2217
    goto/16 :goto_3

    :cond_38
    move v0, v1

    .line 2218
    goto/16 :goto_4

    :cond_39
    move v0, v1

    .line 2219
    goto/16 :goto_5

    :cond_3a
    move v0, v1

    .line 2220
    goto/16 :goto_6

    :cond_3b
    move v0, v1

    .line 2221
    goto/16 :goto_7

    :cond_3c
    move v0, v1

    .line 2222
    goto/16 :goto_8

    :cond_3d
    move v0, v1

    .line 2223
    goto/16 :goto_9

    :cond_3e
    move v0, v1

    .line 2224
    goto/16 :goto_a

    :cond_3f
    move v0, v1

    .line 2225
    goto/16 :goto_b

    :cond_40
    move v0, v1

    .line 2228
    goto/16 :goto_c

    :cond_41
    move v0, v1

    .line 2229
    goto/16 :goto_d

    :cond_42
    move v0, v1

    .line 2230
    goto/16 :goto_e

    :cond_43
    move v0, v1

    .line 2231
    goto/16 :goto_f

    :cond_44
    move v0, v1

    .line 2233
    goto/16 :goto_10

    :cond_45
    move v0, v1

    .line 2235
    goto/16 :goto_11

    :cond_46
    move v0, v1

    .line 2245
    goto/16 :goto_12

    :cond_47
    move v0, v1

    .line 2247
    goto/16 :goto_13

    :cond_48
    move v0, v1

    .line 2258
    goto/16 :goto_14

    :cond_49
    move v0, v1

    .line 2265
    goto/16 :goto_15

    :cond_4a
    move v0, v1

    .line 2266
    goto/16 :goto_16

    :cond_4b
    move v0, v1

    .line 2267
    goto/16 :goto_17

    :cond_4c
    move v0, v1

    .line 2268
    goto/16 :goto_18

    :cond_4d
    move v0, v1

    .line 2269
    goto/16 :goto_19

    :cond_4e
    move v0, v1

    .line 2272
    goto/16 :goto_1a

    :cond_4f
    move v0, v1

    .line 2273
    goto/16 :goto_1b

    :cond_50
    move v0, v1

    .line 2274
    goto/16 :goto_1c

    :cond_51
    move v0, v1

    .line 2275
    goto/16 :goto_1d

    :cond_52
    move v0, v1

    .line 2278
    goto/16 :goto_1e

    :cond_53
    move v0, v1

    .line 2283
    goto/16 :goto_1f

    :cond_54
    move v0, v1

    .line 2286
    goto/16 :goto_20

    :cond_55
    move v0, v1

    .line 2292
    goto/16 :goto_21

    :cond_56
    move v0, v1

    .line 2293
    goto/16 :goto_22

    :cond_57
    move v0, v1

    .line 2301
    goto/16 :goto_23

    :cond_58
    move v0, v1

    .line 2302
    goto/16 :goto_24

    :cond_59
    move v0, v1

    .line 2305
    goto/16 :goto_25

    :cond_5a
    move v0, v1

    .line 2308
    goto/16 :goto_26

    :cond_5b
    move v0, v1

    .line 2312
    goto/16 :goto_27

    :cond_5c
    move v0, v1

    .line 2332
    goto/16 :goto_28

    :cond_5d
    move v0, v1

    .line 2334
    goto/16 :goto_29

    :cond_5e
    move v0, v1

    .line 2341
    goto/16 :goto_2a

    :cond_5f
    move v0, v1

    .line 2346
    goto/16 :goto_2b

    :cond_60
    move v0, v1

    .line 2349
    goto/16 :goto_2c

    :cond_61
    move v0, v1

    .line 2350
    goto/16 :goto_2d

    :cond_62
    move v0, v1

    .line 2355
    goto/16 :goto_2e

    :cond_63
    move v0, v1

    .line 2357
    goto/16 :goto_2f

    :cond_64
    move v0, v1

    .line 2358
    goto/16 :goto_30

    :cond_65
    move v0, v1

    .line 2360
    goto/16 :goto_31

    :cond_66
    move v0, v1

    .line 2361
    goto/16 :goto_32

    :cond_67
    move v2, v1

    .line 2364
    goto/16 :goto_33
.end method

.method public static makeFeatureForLatin()V
    .locals 4

    .prologue
    .line 2695
    const-string v0, "BR"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MX"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AR"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UY"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CO"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CL"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PE"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VE"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PY"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SV"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HN"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NI"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PA"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EC"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PR"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DO"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "JM"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CR"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TT"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BO"

    sget-object v1, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2701
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2707
    :goto_1
    return-void

    .line 2695
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2705
    :cond_2
    sget-object v1, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "feature_ltn_voicemail_number_setting"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2706
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "feature_ltn_notipopup_when_number_changed"

    const-string v2, "BR"

    sget-object v3, Lcom/android/phone/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static makeFeatureForTablet()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1646
    invoke-static {}, Lcom/android/phone/PhoneFeature;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1698
    :goto_0
    return-void

    .line 1650
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "safety_assurance"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_multi_window"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->hasMultiWindwoFeature()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneFeature;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "add_panel"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tablet_device"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_split_settings"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_easy_mode"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "powey_key_ends_call_during_screen_off"

    const-string v4, "hw_home_key"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vt_theme_feature_support"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vt_post_dial_feature_support"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vt_white_theme"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vt_camera_firmware_update_check_popup"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vt_camera_init_noise_reduction"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "vt_dual_camera"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "viennalte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "vienna3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt03lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt033g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "no_receiver_in_call"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "v2lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "p4note"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "espresso10rf"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "roma3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "santos103g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "romalte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "v1a3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "viennalte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "santos10lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "picassolte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "picasso3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt03lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt033g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "action_bar_no_title_when_has_two_menu"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "phone_kk_tablet_gui"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "mondrianltexx"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "v2ltexx"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "v1a3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "viennalte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "picassolte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "picasso3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_3
    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "volume_panel"

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "picassoltexx"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "santos73g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt013g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt01lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "santos10"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "espressorf"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "kona"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "viennalte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "v1a3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt02"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt03"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_4
    move v0, v1

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tablet_without_actionbar"

    sget-object v4, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt02"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_kk_vt_tablet_multiwindow"

    sget-object v4, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "mondrianltexx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "v2ltexx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "v1a3g"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "viennalte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "picassolte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v2, v1

    :cond_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 1652
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 1668
    goto/16 :goto_2

    :cond_9
    move v0, v2

    .line 1673
    goto/16 :goto_3

    :cond_a
    move v0, v2

    .line 1685
    goto/16 :goto_4

    :cond_b
    move v0, v2

    .line 1688
    goto :goto_5
.end method

.method public static makeFeatureForUsa()V
    .locals 27

    .prologue
    .line 2377
    const-string v2, "XAS"

    sget-object v3, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2378
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    sget-object v4, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2380
    const-string v2, "VZW"

    sget-object v5, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2382
    const-string v2, "VMU"

    sget-object v6, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 2383
    const-string v2, "BST"

    sget-object v7, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 2384
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_1
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 2385
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_2
    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 2386
    const-string v2, "d2spr"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "d2vmu"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "t0ltespr"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "jfltespr"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "jflterefreshspr"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "hltespr"

    sget-object v10, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_3
    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 2388
    const-string v2, "USC"

    sget-object v11, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 2389
    const-string v2, "MTR"

    sget-object v12, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 2390
    const-string v2, "XAR"

    sget-object v13, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 2391
    const-string v2, "CRI"

    sget-object v14, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 2392
    const-string v2, "TFN"

    sget-object v15, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 2393
    const-string v2, "CSP"

    sget-object v16, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 2394
    const-string v2, "LRA"

    sget-object v17, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 2395
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_4
    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 2396
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_5
    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2397
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_6
    const/4 v2, 0x1

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2400
    const-string v2, "ATT"

    sget-object v19, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "AIO"

    sget-object v19, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "d2uc"

    sget-object v19, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "c1uc"

    sget-object v19, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "comancheuc"

    sget-object v19, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "expressuc"

    sget-object v19, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "p10lteuc"

    sget-object v19, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "t0lteatt"

    sget-object v19, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "altiusqlteuc"

    sget-object v19, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "SGH-I717"

    sget-object v19, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_7
    const/4 v2, 0x1

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 2401
    const-string v2, "TMB"

    sget-object v20, Lcom/android/phone/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "d2tmo"

    sget-object v20, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "apexqtmo"

    sget-object v20, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "m3tmo"

    sget-object v20, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "t0ltetmo"

    sget-object v20, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_8
    const/4 v2, 0x1

    :goto_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 2403
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_9
    const/4 v2, 0x1

    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 2404
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_a
    const/4 v2, 0x1

    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 2406
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_b
    const/4 v2, 0x1

    :goto_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 2408
    const-string v2, "msm"

    sget-object v23, Lcom/android/phone/PhoneFeature;->baseband:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "mdm"

    sget-object v23, Lcom/android/phone/PhoneFeature;->baseband:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_c
    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2409
    sget-object v2, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v23, "t0lte"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v23, "jflte"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v23, "hlte"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "jactivelteuc"

    sget-object v23, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v23, "d2"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_d
    const/4 v2, 0x1

    :goto_d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 2411
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 2678
    :goto_e
    return-void

    .line 2378
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2384
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2385
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2386
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 2395
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 2396
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 2397
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 2400
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 2401
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 2403
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 2404
    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 2406
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 2408
    :cond_1a
    const/4 v2, 0x0

    goto :goto_c

    .line 2409
    :cond_1b
    const/4 v2, 0x0

    goto :goto_d

    .line 2414
    :cond_1c
    sget-object v24, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "vi_animation"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_45

    const/4 v2, 0x1

    :goto_f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "tty_enable"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2416
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "samsung_screen_timeout_incall"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2417
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "feature_call_type"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "call_icon_display_in_call_screen"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2419
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "video_call_disable"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    sget-object v24, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "end_call_two_button"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_46

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    const/4 v2, 0x1

    :goto_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2421
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "play_local_dtmf_tones"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2422
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "usa_duplicate_disable"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2423
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "emergency_dialer_tones"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2424
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "number_format_with_country_iso"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2425
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "disable_sip_call_setting"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2426
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "stop_signal_info_tone"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2429
    sget-object v24, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "usa_geo_description_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "t0ltevzw"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "t0lteatt"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "t0lteuc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "d2uc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "c1uc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "expressuc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "expressziglteuc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "p10lteuc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "jflteuc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "meliuslteuc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "jactivelteuc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "jflteaio"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "hlteuc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_1d
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47

    :cond_1e
    const/4 v2, 0x1

    :goto_11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2434
    sget-object v24, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "ecid_enable"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1f
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "jfltevzw"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "hltevzw"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "godivaltevzw"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "d2vzw"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "serranoltevzw"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "jaspervzw"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    :cond_20
    const/4 v2, 0x1

    :goto_12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2436
    sget-object v24, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "cityid_enable"

    const-string v2, "comancheuc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "expressuc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "zestlteuc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "serranolteuc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "meliuslteuc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "goldenlteuc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "SGH-I777"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "SGH-I727"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "SGH-I717"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "SGH-I577"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "jflteuc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    :cond_21
    const/4 v2, 0x1

    :goto_13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2439
    sget-object v24, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "incoming_call_widget_description_enable"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4a

    :cond_22
    const/4 v2, 0x1

    :goto_14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2440
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "incoming_call_widget_description_enlarge"

    const-string v25, "meliuslteuc"

    sget-object v26, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2441
    sget-object v24, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "change_message_icon_for_vzw"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4b

    const/4 v2, 0x1

    :goto_15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2442
    sget-object v24, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "change_message_icon_for_att"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4c

    const/4 v2, 0x1

    :goto_16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2443
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "hac_enable"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-nez v24, :cond_23

    :cond_23
    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2444
    sget-object v23, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "hac_enable_for_message"

    const-string v2, "hac_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4d

    const/4 v2, 0x1

    :goto_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2445
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "update_user_data_diff_name"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2446
    sget-object v23, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "support_easy_mode"

    const-string v2, "support_easy_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    sget-object v2, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v25, "d2"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4e

    const/4 v2, 0x1

    :goto_18
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2447
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "network_mode_global_lte_gsm"

    const-string v24, "viennaltevzw"

    sget-object v25, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2450
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "dtmf_type_enable"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2451
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "usa_cdma_emergency_concept"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2452
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "usa_cdma_concept"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2453
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "usa_cdma_smc_fac_req"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2454
    sget-object v23, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "cdma_subscription_enable"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4f

    const/4 v2, 0x1

    :goto_19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "cdma_call_alert_enable"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2456
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "manage_conference_call_menu_disable"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2457
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "not_ota_ui_display"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2458
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "headset_highest_priority_for_call"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2459
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "reboot_after_ota_success"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2460
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, " disable_notification_in_waiting_call_ringing"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2461
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "signal_info_tone_generator_stop"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2462
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "disable_dun_menu"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2463
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "cdma_additional_setting_enable"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2464
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "disable_additional_settings"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2465
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "reject_call_cnap_display"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2466
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "updated_calling_name_presentation"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2469
    const-string v2, "p4notelteusc"

    sget-object v18, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2470
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "not_ota_ui_display"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2474
    :cond_24
    sget-object v18, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "emergency_calllog_disable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_50

    :cond_25
    const/4 v2, 0x1

    :goto_1a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2475
    sget-object v18, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "international_dialing_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_51

    :cond_26
    const/4 v2, 0x1

    :goto_1b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2476
    sget-object v18, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "usa_otasp_calllog_disable_for_regional"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_52

    :cond_27
    const/4 v2, 0x1

    :goto_1c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2477
    sget-object v18, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "usa_otasp_calllog_disable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "usa_otasp_calllog_disable_for_regional"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    :cond_28
    const/4 v2, 0x1

    :goto_1d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2478
    sget-object v18, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "global_network_cdma_gsm_enable"

    const-string v2, "viennaltevzw"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "hltevzw"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "serranoltevzw"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "meliusltevzw"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "jfltevzw"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "d2vzw"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "aegis2vzw"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "espresso10vzw"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "m3vzw"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "t0ltevzw"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "godivaltevzw"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "p4noteltevzw"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "hltespr"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "jfltespr"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "jflterefreshspr"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "t0ltespr"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "meliusltespr"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "p4noteltespr"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    :cond_29
    const/4 v2, 0x1

    :goto_1e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2480
    sget-object v18, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "global_network_cdma_gsm_enable_for_spr"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_55

    const/4 v2, 0x1

    :goto_1f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2481
    sget-object v18, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "global_network_cdma_gsm_enable_for_spr_f"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_56

    const/4 v2, 0x1

    :goto_20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2482
    sget-object v18, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "global_network_cdma_gsm_enable_for_spr_m"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_57

    const/4 v2, 0x1

    :goto_21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    sget-object v18, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "global_network_cdma_gsm_enable_for_vzw"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_58

    const/4 v2, 0x1

    :goto_22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2484
    sget-object v18, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "call_vibration_max_magnitude"

    const-string v2, "prevail2spr"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "iconvmu"

    sget-object v24, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    :cond_2a
    const/4 v2, 0x1

    :goto_23
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2485
    sget-object v18, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "emergency_tone_alert_always"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5a

    :cond_2b
    const/4 v2, 0x1

    :goto_24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2486
    sget-object v16, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "emergency_tone_alert_master_vol"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5b

    :cond_2c
    const/4 v2, 0x1

    :goto_25
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2487
    sget-object v16, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "voice_privacy_enable"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5c

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5c

    const/4 v2, 0x1

    :goto_26
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2488
    sget-object v16, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "cdma_apn_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "jfltespr"

    sget-object v23, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "jflterefreshspr"

    sget-object v23, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    :cond_2d
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5d

    :cond_2e
    const/4 v2, 0x1

    :goto_27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2489
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "voicemail_empty_number_retry"

    const-string v18, "global_network_cdma_gsm_enable"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2494
    const-string v2, "comancheuc"

    sget-object v16, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "t0ltetmo"

    sget-object v16, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "jfltetmo"

    sget-object v16, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "jflteuc"

    sget-object v16, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "jactivelteuc"

    sget-object v16, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "jflteaio"

    sget-object v16, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2497
    :cond_2f
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "hac_enable"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2500
    :cond_30
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "network_mode_disable"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2501
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "onscreen_manage_conference"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2504
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "usa_gsm_update_2nd_number"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2505
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "beep_vibration_for_ussd"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2506
    sget-object v16, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "support_call_transfer"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5e

    const/4 v2, 0x1

    :goto_28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2507
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "usa_gsm_network_setting"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2508
    sget-object v16, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "usa_gsm_support_femto_cell_network"

    const-string v2, "mprojectlteuc"

    sget-object v23, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "serranolteuc"

    sget-object v23, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "hlteuc"

    sget-object v23, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    :cond_31
    const/4 v2, 0x1

    :goto_29
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2509
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "usa_gsm_local_dtmf"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2510
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "att_customer_proprietary_information"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2513
    sget-object v16, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "feature_enable_csp"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_60

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    :cond_32
    const/4 v2, 0x1

    :goto_2a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2514
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "tty_entries_reduction"

    const-string v18, "SGH-I777"

    sget-object v23, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2516
    sget-object v16, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "network_mode_list_lte"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_61

    const-string v2, "network_mode_list_lte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    const/4 v2, 0x1

    :goto_2b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2517
    sget-object v16, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "volte_settings_in_mobile_networks"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_62

    const/4 v2, 0x1

    :goto_2c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2518
    sget-object v16, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "add_vt_hold_in_menu"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_63

    const/4 v2, 0x1

    :goto_2d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2519
    sget-object v16, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "accept_vt_by_button"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_64

    :cond_33
    const/4 v2, 0x1

    :goto_2e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2520
    sget-object v16, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "enable_volte_hold_tone"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_65

    const/4 v2, 0x1

    :goto_2f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2522
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "remove_volte_call_setting"

    const-string v18, "hltetmo"

    sget-object v21, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2524
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "toggle_volte_setting"

    const-string v18, "gardaltetmo"

    sget-object v21, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2526
    sget-object v16, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "ss_via_ps"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_66

    const/4 v2, 0x1

    :goto_30
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2529
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "ecbm_emergency_calls_only_enable"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2530
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "usa_spr_roaming_feature"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2531
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "preferred_network_mode_reboot_enable"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2532
    sget-object v16, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "emergency_callback_mode_exit_timer_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_67

    const/4 v2, 0x1

    :goto_31
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2533
    sget-object v16, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "get_orig_dial_string_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_68

    :cond_34
    const/4 v2, 0x1

    :goto_32
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2534
    sget-object v16, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "remove_voicemail_category"

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->hasVisualVoicemail()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_69

    :cond_35
    const/4 v2, 0x1

    :goto_33
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2535
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "visual_voicemail_enable"

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->hasVisualVoicemail()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2536
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "reject_call_with_message_drawer_while_in_secure_lock_disable"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2537
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "reject_call_with_message_drawer_while_in_secure_lock_pending"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2538
    sget-object v16, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "system_select_home_only"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6a

    :cond_36
    const/4 v2, 0x1

    :goto_34
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2539
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "system_select_home_only_entry"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2542
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "csc_chameleon_enable"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v16

    const-string v18, "CscFeature_Common_UseChameleon"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2543
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "abbreviated_dialing_codes_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "csc_chameleon_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    :cond_37
    const/4 v2, 0x1

    :goto_35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2544
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "abbreviated_dialing_codes_table_sprint"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2545
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "abbreviated_dialing_codes_table_virgin"

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2546
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "abbreviated_dialing_codes_table_boost"

    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2547
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "powey_key_ends_call_during_screen_off"

    const-string v2, "goghspr"

    sget-object v16, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    const-string v2, "aegis2vzw"

    sget-object v16, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    const-string v2, "jaspervzw"

    sget-object v16, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    const-string v2, "iconvmu"

    sget-object v16, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    const-string v2, "prevail2spr"

    sget-object v16, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    const-string v2, "godivaltevzw"

    sget-object v16, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    const/4 v2, 0x1

    :goto_36
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2548
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "noise_reduction_icon_no_display_always"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    :goto_37
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2550
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "sprint_connections_optimizer"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6e

    const/4 v2, 0x0

    :goto_38
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2551
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "call_block_ui"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6f

    const/4 v2, 0x1

    :goto_39
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2552
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_mode_automatic_cdma_lte_gsm"

    const-string v6, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2553
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_mode_cdma_lte"

    const-string v6, "global_network_cdma_gsm_enable_for_spr_m"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2554
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "roaming_setting_guard_data_only"

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x111003c

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_70

    const/4 v2, 0x1

    :goto_3a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2555
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "north_american_dialing_plan_for_voicemail"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2556
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "reset_network_mode_to_chameleon"

    const-string v6, "jflterefreshspr"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2559
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "sprint_mvno_mobile_network_feature"

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2571
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ddtm_enable"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "goghvmu"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_38
    const-string v2, "SPH-D710"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_71

    :cond_39
    const/4 v2, 0x1

    :goto_3b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2574
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "thrway_active_disable"

    const-string v6, "iconvmu"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2575
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "audio_manager_pingring"

    const-string v2, "prevail2spr"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "iconvmu"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    :cond_3a
    const/4 v2, 0x1

    :goto_3c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2576
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "is_lo_res_disable"

    const-string v6, "prevail2spr"

    sget-object v9, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2577
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "reset_network_mode_to_default"

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2581
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_vzw"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2582
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "auto_retry_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_73

    :cond_3b
    const/4 v2, 0x1

    :goto_3d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2583
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "eri_info_label_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2584
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "system_selection_automatic_ab_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2585
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "emergency_dialer_home_recent_block"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2586
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "reject_call_with_message_send_button_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_74

    const/4 v2, 0x1

    :goto_3e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2587
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "assisted_dialing_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2588
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "global_data_roaming_access_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2589
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "wifi_diable_during_emergency_call"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2590
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_urgenct_voice_mail_notification"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2591
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "auto_reject_outgoingcall"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2592
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "us_cdma_call_fowarding"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2593
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "end_call_button_msg_change_vzw"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2594
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ota_not_spport"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2595
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "proximity_sensor_enable_during_background_call"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2596
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "btn_cdma_swap_delay"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2597
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "mute_menu_in_easy_mode"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2598
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_setting_soft_reset"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2599
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "auto_reject_notification"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2600
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "setting_search_vzw"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2601
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_cnap_in_call_card"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2602
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_low_battery_sound_during_call"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2604
    const-string v2, "jfltevzw"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2605
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "end_call_button_msg_change_vzw"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2607
    :cond_3c
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 2608
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_easy_mode"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2610
    :cond_3d
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vzw_volte_ui"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_75

    const/4 v2, 0x1

    :goto_3f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2611
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "volte_cdma_ringback_tone"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_76

    const/4 v2, 0x1

    :goto_40
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2614
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_manual_selection_when_bootup"

    const-string v6, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2615
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "recent_hw_key_disable_when_incoming"

    const-string v2, "jaspervzw"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "aegis2vzw"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "godivaltevzw"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    :cond_3e
    const/4 v2, 0x1

    :goto_41
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2616
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_duplicated_name_in_plmn_list"

    const-string v6, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2617
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "display_info_diable"

    const-string v2, "jaspervzw"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "godivaltevzw"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    :cond_3f
    const/4 v2, 0x1

    :goto_42
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2618
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "set_network_mode_when_no_sim_bootup"

    const-string v2, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    const-string v2, "gsm.default.channel"

    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_79

    const/4 v2, 0x1

    :goto_43
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2620
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "accept_or_reject_calls_dialog"

    const-string v6, "godivaltevzw"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2621
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_usb30_in_call"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->isHProject()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7a

    const/4 v2, 0x1

    :goto_44
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2626
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_network_mode_display"

    invoke-virtual {v2, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2627
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tracfone_network_mode_feature"

    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2628
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "extra_ringer_default_on"

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2629
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "voiceless_ota_provisioning_action"

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2630
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "omadm_lte_forced_nv"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "d2vmu"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "goghvmu"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "d2tfnspr"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    :cond_40
    const/4 v2, 0x1

    :goto_45
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2631
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "set_system_setting_for_auto_answer"

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2634
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_att"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2635
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "hide_call_barring"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2636
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "end_call_button_msg_change_att"

    const-string v6, "goldenlteuc"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2639
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "att_volte_ui"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7c

    const/4 v2, 0x1

    :goto_46
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2642
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_tmo"

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2643
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_ecn"

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2644
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "hardkeyboardhidden_no"

    const-string v2, "aegis2vzw"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "apexqtmo"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "zestlteuc"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    :cond_41
    const/4 v2, 0x1

    :goto_47
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2645
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "extra_ringer"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->hasIlluminanceSensor()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2648
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "show_icc_ndp"

    const-string v2, "biscottoltetmo"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7e

    const/4 v2, 0x1

    :goto_48
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2651
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "show_icc_ndp"

    const-string v2, "biscottoltetmo"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    const/4 v2, 0x1

    :goto_49
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2652
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "stop_bargein_on_answer"

    const-string v6, "hltetmo"

    sget-object v8, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2654
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2655
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "allow_select_network_mode"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2663
    :cond_42
    const-string v2, "SPH-D710"

    sget-object v3, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2664
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "in_call_menu_memo_enable"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2665
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, " emergency_call_back_mode_activity_relaunch"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2666
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "emergency_call_cont_beeps"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2667
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "clear_data_roaming_icon"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2668
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "show_p_number"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2669
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "no_additional_setting"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2671
    const-string v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2673
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "abbreviated_dialing_codes_table_sprint"

    const-string v8, "SPH-D710SPR"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2674
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "abbreviated_dialing_codes_table_virgin"

    const-string v8, "SPH-D710VMU"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2675
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "abbreviated_dialing_codes_table_boost"

    const-string v8, "SPH-D710BST"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2677
    :cond_43
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_cnam"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_80

    :cond_44
    const/4 v2, 0x1

    :goto_4a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 2414
    :cond_45
    const/4 v2, 0x0

    goto/16 :goto_f

    .line 2420
    :cond_46
    const/4 v2, 0x0

    goto/16 :goto_10

    .line 2429
    :cond_47
    const/4 v2, 0x0

    goto/16 :goto_11

    .line 2434
    :cond_48
    const/4 v2, 0x0

    goto/16 :goto_12

    .line 2436
    :cond_49
    const/4 v2, 0x0

    goto/16 :goto_13

    .line 2439
    :cond_4a
    const/4 v2, 0x0

    goto/16 :goto_14

    .line 2441
    :cond_4b
    const/4 v2, 0x0

    goto/16 :goto_15

    .line 2442
    :cond_4c
    const/4 v2, 0x0

    goto/16 :goto_16

    .line 2444
    :cond_4d
    const/4 v2, 0x0

    goto/16 :goto_17

    .line 2446
    :cond_4e
    const/4 v2, 0x0

    goto/16 :goto_18

    .line 2454
    :cond_4f
    const/4 v2, 0x0

    goto/16 :goto_19

    .line 2474
    :cond_50
    const/4 v2, 0x0

    goto/16 :goto_1a

    .line 2475
    :cond_51
    const/4 v2, 0x0

    goto/16 :goto_1b

    .line 2476
    :cond_52
    const/4 v2, 0x0

    goto/16 :goto_1c

    .line 2477
    :cond_53
    const/4 v2, 0x0

    goto/16 :goto_1d

    .line 2478
    :cond_54
    const/4 v2, 0x0

    goto/16 :goto_1e

    .line 2480
    :cond_55
    const/4 v2, 0x0

    goto/16 :goto_1f

    .line 2481
    :cond_56
    const/4 v2, 0x0

    goto/16 :goto_20

    .line 2482
    :cond_57
    const/4 v2, 0x0

    goto/16 :goto_21

    .line 2483
    :cond_58
    const/4 v2, 0x0

    goto/16 :goto_22

    .line 2484
    :cond_59
    const/4 v2, 0x0

    goto/16 :goto_23

    .line 2485
    :cond_5a
    const/4 v2, 0x0

    goto/16 :goto_24

    .line 2486
    :cond_5b
    const/4 v2, 0x0

    goto/16 :goto_25

    .line 2487
    :cond_5c
    const/4 v2, 0x0

    goto/16 :goto_26

    .line 2488
    :cond_5d
    const/4 v2, 0x0

    goto/16 :goto_27

    .line 2506
    :cond_5e
    const/4 v2, 0x0

    goto/16 :goto_28

    .line 2508
    :cond_5f
    const/4 v2, 0x0

    goto/16 :goto_29

    .line 2513
    :cond_60
    const/4 v2, 0x0

    goto/16 :goto_2a

    .line 2516
    :cond_61
    const/4 v2, 0x0

    goto/16 :goto_2b

    .line 2517
    :cond_62
    const/4 v2, 0x0

    goto/16 :goto_2c

    .line 2518
    :cond_63
    const/4 v2, 0x0

    goto/16 :goto_2d

    .line 2519
    :cond_64
    const/4 v2, 0x0

    goto/16 :goto_2e

    .line 2520
    :cond_65
    const/4 v2, 0x0

    goto/16 :goto_2f

    .line 2526
    :cond_66
    const/4 v2, 0x0

    goto/16 :goto_30

    .line 2532
    :cond_67
    const/4 v2, 0x0

    goto/16 :goto_31

    .line 2533
    :cond_68
    const/4 v2, 0x0

    goto/16 :goto_32

    .line 2534
    :cond_69
    const/4 v2, 0x0

    goto/16 :goto_33

    .line 2538
    :cond_6a
    const/4 v2, 0x0

    goto/16 :goto_34

    .line 2543
    :cond_6b
    const/4 v2, 0x0

    goto/16 :goto_35

    .line 2547
    :cond_6c
    const/4 v2, 0x0

    goto/16 :goto_36

    .line 2548
    :cond_6d
    const/4 v2, 0x0

    goto/16 :goto_37

    .line 2550
    :cond_6e
    const/4 v2, 0x1

    goto/16 :goto_38

    .line 2551
    :cond_6f
    const/4 v2, 0x0

    goto/16 :goto_39

    .line 2554
    :cond_70
    const/4 v2, 0x0

    goto/16 :goto_3a

    .line 2571
    :cond_71
    const/4 v2, 0x0

    goto/16 :goto_3b

    .line 2575
    :cond_72
    const/4 v2, 0x0

    goto/16 :goto_3c

    .line 2582
    :cond_73
    const/4 v2, 0x0

    goto/16 :goto_3d

    .line 2586
    :cond_74
    const/4 v2, 0x0

    goto/16 :goto_3e

    .line 2610
    :cond_75
    const/4 v2, 0x0

    goto/16 :goto_3f

    .line 2611
    :cond_76
    const/4 v2, 0x0

    goto/16 :goto_40

    .line 2615
    :cond_77
    const/4 v2, 0x0

    goto/16 :goto_41

    .line 2617
    :cond_78
    const/4 v2, 0x0

    goto/16 :goto_42

    .line 2618
    :cond_79
    const/4 v2, 0x0

    goto/16 :goto_43

    .line 2621
    :cond_7a
    const/4 v2, 0x0

    goto/16 :goto_44

    .line 2630
    :cond_7b
    const/4 v2, 0x0

    goto/16 :goto_45

    .line 2639
    :cond_7c
    const/4 v2, 0x0

    goto/16 :goto_46

    .line 2644
    :cond_7d
    const/4 v2, 0x0

    goto/16 :goto_47

    .line 2648
    :cond_7e
    const/4 v2, 0x0

    goto/16 :goto_48

    .line 2651
    :cond_7f
    const/4 v2, 0x0

    goto/16 :goto_49

    .line 2677
    :cond_80
    const/4 v2, 0x0

    goto/16 :goto_4a
.end method

.method public static makePreconditionForFeature()V
    .locals 2

    .prologue
    .line 1288
    const-string v0, "USA"

    const-string v1, "JPN"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1289
    const-string v0, ""

    const-string v1, "Fortius"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1290
    const-string v0, "jfltedcm"

    sput-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    .line 1300
    :cond_0
    :goto_0
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    .line 1301
    return-void

    .line 1291
    :cond_1
    const-string v0, ""

    const-string v1, "HLTEDCM"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1292
    const-string v0, "hltedcm"

    sput-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    .line 1293
    :cond_2
    const-string v0, ""

    const-string v1, "Madrid"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1294
    const-string v0, "hltekdi"

    sput-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    .line 1295
    :cond_3
    const-string v0, ""

    const-string v1, "JS01LTEDCM"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1296
    const-string v0, "js01ltedcm"

    sput-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    .line 1298
    :cond_4
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0
.end method

.method public static putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "featureName"
    .parameter "enable"

    .prologue
    .line 2916
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2917
    return-void
.end method
