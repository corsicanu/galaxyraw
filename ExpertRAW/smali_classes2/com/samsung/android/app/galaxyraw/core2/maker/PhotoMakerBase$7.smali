.class Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;
.super Ljava/lang/Object;
.source "PhotoMakerBase.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPreviewRequestApplied$0(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;->onPreviewRequestApplied(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method static synthetic lambda$onPreviewRequestError$1(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;->onPreviewRequestError(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method static synthetic lambda$onPreviewRequestRemoved$2(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;->onPreviewRequestRemoved(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method


# virtual methods
.method public onPreviewCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "camCapability"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mLatestRepeatingCaptureResult:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingReference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->onPreviewResult(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSecondPictureConfigAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureThirdPictureConfigAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicShotInfoAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RUNNING_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRunningPhysicalId:Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iput-object v0, v3, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRunningPhysicalId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    const-string v0, "onPreviewCaptureResult runningPhysicalId %s "

    invoke-static {v3, v0, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicFovAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_STREAM_TYPE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mDFovStreamType:Ljava/lang/Integer;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iput-object v0, v3, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mDFovStreamType:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "onPreviewCaptureResult dFovStreamType %s "

    invoke-static {v3, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureLensSuggestionAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendLensSuggestionCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->usePartialCaptureResult()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendAeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendAfInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendTouchAeStateCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlPafAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendDofMultiInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSuperNightShotAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendStillCaptureProgressCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendAdaptiveLensInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendDepthInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendObjectTrackingInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendExposureTimeCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendSensorSensitivityCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendLensInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendLensDirtyDetectCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendBrightnessValueCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendEvCompensationValueCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendFaceDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlLiveHdrAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendLiveHdrStateCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    :cond_6
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicShotInfoAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getDsExtraInfo(Landroid/hardware/camera2/CaptureResult;)I

    move-result v3

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendDynamicShotInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;I)V

    :cond_7
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSuperNightPPPAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureBokehNightAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendDynamicShotCaptureDurationCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendLightConditionCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendBurstShotFpsCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-static {v1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendBokehInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendColorTemperatureCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendSceneDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureZoomLockAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendZoomLockStateCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    :cond_b
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureHandGestureAvailable()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {p2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendHandGestureDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    :cond_c
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {p2, p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendCameraRunningDebugInfo(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onPreviewPartialCaptureResult(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partialResult",
            "camCapability"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->usePartialCaptureResult()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendAeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendAfInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSuperNightShotAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendStillCaptureProgressCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendTouchAeStateCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlPafAvailable()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {p2, p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->sendDofMultiInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    :cond_1
    return-void
.end method

.method public onPreviewRequestApplied(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewRequestApplied - sequenceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->getPreviewStateCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$7$hF08lauBHO28vaWTRJW1C767S2Y;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$7$hF08lauBHO28vaWTRJW1C767S2Y;-><init>(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public onPreviewRequestError(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->isIntentionalRequestError()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewRequestError - sequenceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->getPreviewStateCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$7$kw3LtwsbNlhrfmXeZSqMOiBFoaY;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$7$kw3LtwsbNlhrfmXeZSqMOiBFoaY;-><init>(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public onPreviewRequestRemoved(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewRequestRemoved - sequenceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->getPreviewStateCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$7$-hdapwQZ9jiPMLY1oMU73kwJfEc;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$7$-hdapwQZ9jiPMLY1oMU73kwJfEc;-><init>(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
