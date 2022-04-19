.class Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;
.super Ljava/lang/Object;
.source "LedBackManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/ledback/sdk/LedBackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/ledback/sdk/LedBackManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    invoke-static {}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    invoke-static {p2}, Lcom/sec/android/cover/ledback/ILedBackSdkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/cover/ledback/ILedBackSdkService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->access$102(Lcom/sec/android/cover/ledback/sdk/LedBackManager;Lcom/sec/android/cover/ledback/ILedBackSdkService;)Lcom/sec/android/cover/ledback/ILedBackSdkService;

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mServiceConnected:Z

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    invoke-static {p1}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->access$200(Lcom/sec/android/cover/ledback/sdk/LedBackManager;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    invoke-static {p1}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->access$200(Lcom/sec/android/cover/ledback/sdk/LedBackManager;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->getFuntion()I

    move-result v0

    if-eq v0, p2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    invoke-virtual {p1}, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->isEnable()Z

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->getIconId()I

    move-result v5

    invoke-virtual {p1}, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->getIconData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->getLingtingTimeOut()I

    move-result v7

    invoke-virtual {p1}, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->getEffectType()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->notifyDataIcon(IZILjava/lang/String;II)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    invoke-virtual {p1}, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->isEnable()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->notifyDataBoolean(IZ)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget-boolean p1, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isCameraOrientationSaved:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget v0, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mCameraOrientation:I

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->setCameraOrientation(I)Z

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iput-boolean p2, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isCameraOrientationSaved:Z

    :cond_4
    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget-boolean p1, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isCameraPreviewSaved:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget-boolean v0, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mCameraPreview:Z

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->setRearPreview(Z)Z

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iput-boolean p2, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isCameraPreviewSaved:Z

    :cond_5
    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget-boolean p1, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isCameraCancelSaved:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    invoke-virtual {p1}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->cancelCameraEvent()Z

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iput-boolean p2, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isCameraCancelSaved:Z

    :cond_6
    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget-boolean p1, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isPreviewSaved:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget v0, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mPreview:I

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->setPreview(I)Z

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iput-boolean p2, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isPreviewSaved:Z

    :cond_7
    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget-boolean p1, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isPreviewSettingsSaved:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget v0, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mPreviewSettings:I

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget v1, v1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mNFCStatus:I

    iget-object v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget-boolean v2, v2, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mRecoverNFC:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->setPreviewSettings(IIZ)Z

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iput-boolean p2, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isPreviewSettingsSaved:Z

    :cond_8
    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget-boolean p1, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isRecordingModeSaved:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget-boolean v0, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mRecordingMode:Z

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->setCameraRecordingMode(Z)Z

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iput-boolean p2, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isRecordingModeSaved:Z

    :cond_9
    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget-boolean p1, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isDataCoverAppSaved:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget v0, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mMoodLight:I

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget v1, v1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mPictureCue:I

    iget-object v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget v2, v2, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mCameraTimer:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->notifyCoverAppDataChanged(III)Z

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iput-boolean p2, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isDataCoverAppSaved:Z

    :cond_a
    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget-boolean p1, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isDavinciDataCoverAppSaved:Z

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget v1, v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDavinciLightingStyle:I

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget-boolean v2, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDavinciTurnOver:Z

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget v3, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDavinciDLightingTimeOut:I

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget v4, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDavinciCameraEmoticon:I

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget-boolean v5, p1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDavinciCameraTimer:Z

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->davinciNotifyCoverAppDataChanged(IZIIZ)Z

    iget-object p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iput-boolean p2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isDavinciDataCoverAppSaved:Z

    :cond_b
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->access$102(Lcom/sec/android/cover/ledback/sdk/LedBackManager;Lcom/sec/android/cover/ledback/ILedBackSdkService;)Lcom/sec/android/cover/ledback/ILedBackSdkService;

    iget-object p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;->this$0:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mServiceConnected:Z

    return-void
.end method
