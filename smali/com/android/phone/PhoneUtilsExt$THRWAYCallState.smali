.class public final enum Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;
.super Ljava/lang/Enum;
.source "PhoneUtilsExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtilsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "THRWAYCallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

.field public static final enum PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

.field public static final enum TRANSFER_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    new-instance v0, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    const-string v1, "PARTY_CALL"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    new-instance v0, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    const-string v1, "TRANSFER_CALL"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->TRANSFER_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    .line 167
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->TRANSFER_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->$VALUES:[Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;
    .locals 1
    .parameter

    .prologue
    .line 167
    const-class v0, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->$VALUES:[Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    return-object v0
.end method
