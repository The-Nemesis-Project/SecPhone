.class Lcom/android/phone/WfcEmergencyCallController$2;
.super Ljava/lang/Thread;
.source "WfcEmergencyCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/WfcEmergencyCallController;->reportCallFailedWithLocalCauseToRilInNewThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/WfcEmergencyCallController;


# direct methods
.method constructor <init>(Lcom/android/phone/WfcEmergencyCallController;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/phone/WfcEmergencyCallController$2;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController$2;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    #calls: Lcom/android/phone/WfcEmergencyCallController;->reportCallFailedWithLocalCauseToRil()V
    invoke-static {v0}, Lcom/android/phone/WfcEmergencyCallController;->access$500(Lcom/android/phone/WfcEmergencyCallController;)V

    .line 385
    return-void
.end method
