.class public Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;
.super Ljava/lang/Object;
.source "FeatureCapability.java"


# instance fields
.field private final mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mSamsungControlAvailableFeatures:[I

.field private mSamsungFeature3aExtraInfoAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureAePriorityModeAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureAutoFramingAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureBeautyFaceAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureBodyBeautyAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureBokehAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureBokehNightAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureBokehRelightAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureBokehSpecialEffectAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureDualZoomAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureDynamicFovAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureDynamicShotDeviceInfoAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureDynamicShotInfoAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureDynamicViewingAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureEventFinderAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureFoldable:Ljava/lang/Boolean;

.field private mSamsungFeatureFrcSsmAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureHDR10RecordingAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureHandGestureAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureLensSuggestionAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureMaxRawSizeOnly:Ljava/lang/Boolean;

.field private mSamsungFeatureNeedRecordPreAlloc:Ljava/lang/Boolean;

.field private mSamsungFeatureNoFirstSetParam:Ljava/lang/Boolean;

.field private mSamsungFeatureNoPreviewVideoSnap:Ljava/lang/Boolean;

.field private mSamsungFeaturePersonalPreset:Ljava/lang/Boolean;

.field private mSamsungFeaturePhotoPreviewVdis:Ljava/lang/Boolean;

.field private mSamsungFeatureRawSuperResolutionAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureSceneDetectInHal:Ljava/lang/Boolean;

.field private mSamsungFeatureSecondPictureConfigAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureSensorCropAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureShutterNotiTimestampAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureShutterNotificationAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureSingleCamSupportMultiRawStream:Ljava/lang/Boolean;

.field private mSamsungFeatureSmoothZoomAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureStillCaptureAnalysisAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureStpSupportYuvCaptureOnly:Ljava/lang/Boolean;

.field private mSamsungFeatureSubPreviewCbAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureSubPreviewCbUseRequestSampling:Ljava/lang/Boolean;

.field private mSamsungFeatureSuperNightPPPAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureSuperNightShotAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureSuperSlowMotionAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureSuperSlowMotionGmcAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureSuperSlowMotionNeedSyncCancelInAutoMode:Ljava/lang/Boolean;

.field private mSamsungFeatureSupportLiteNightInAutoMode:Ljava/lang/Boolean;

.field private mSamsungFeatureSupportLiteNightInSelfieMode:Ljava/lang/Boolean;

.field private mSamsungFeatureSwSuperVideoStabilization:Ljava/lang/Boolean;

.field private mSamsungFeatureSystemTransientZoomingAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureThirdPictureConfigAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureUdcAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureValidImageRegionPriority:Ljava/lang/Boolean;

.field private mSamsungFeatureVideoBeautyFaceAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureVideoBokehAvailable:Ljava/lang/Boolean;

.field private mSamsungFeatureVideoFunctionNeedYuvSnap:Ljava/lang/Boolean;

.field private mSamsungFeatureVideoPreviewCb:Ljava/lang/Boolean;

.field private mSamsungFeatureZoomLockAvailable:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraCharacteristics"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungControlAvailableFeatures:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureAePriorityModeAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureAutoFramingAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBeautyFaceAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBodyBeautyAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehRelightAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehSpecialEffectAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehNightAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDualZoomAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDynamicFovAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDynamicShotDeviceInfoAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDynamicShotInfoAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDynamicViewingAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureEventFinderAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureFoldable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureFrcSsmAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureHandGestureAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureHDR10RecordingAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureLensSuggestionAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureNoFirstSetParam:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureMaxRawSizeOnly:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureNeedRecordPreAlloc:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureNoPreviewVideoSnap:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeaturePersonalPreset:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeaturePhotoPreviewVdis:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureRawSuperResolutionAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSceneDetectInHal:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSecondPictureConfigAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSensorCropAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureShutterNotificationAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureShutterNotiTimestampAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSingleCamSupportMultiRawStream:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSmoothZoomAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureStillCaptureAnalysisAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureStpSupportYuvCaptureOnly:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSubPreviewCbAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSubPreviewCbUseRequestSampling:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperNightPPPAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperNightShotAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperSlowMotionAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperSlowMotionGmcAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperSlowMotionNeedSyncCancelInAutoMode:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSupportLiteNightInAutoMode:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSupportLiteNightInSelfieMode:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSwSuperVideoStabilization:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSystemTransientZoomingAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureThirdPictureConfigAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureUdcAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureValidImageRegionPriority:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoBeautyFaceAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoBokehAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoFunctionNeedYuvSnap:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoPreviewCb:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureZoomLockAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeature3aExtraInfoAvailable:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-void
.end method


# virtual methods
.method public getSamsungControlAvailableFeatures()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungControlAvailableFeatures:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_AVAILABLE_FEATURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungControlAvailableFeatures:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungControlAvailableFeatures:[I

    return-object p0
.end method

.method public getSamsungFeature3aExtraInfoAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeature3aExtraInfoAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeature3aExtraInfoAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeature3aExtraInfoAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeature3aExtraInfoAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureAePriorityModeAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureAePriorityModeAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x29

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureAePriorityModeAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureAePriorityModeAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureAePriorityModeAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureAutoFramingAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureAutoFramingAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureAutoFramingAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureAutoFramingAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureAutoFramingAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureBeautyFaceAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBeautyFaceAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBeautyFaceAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBeautyFaceAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBeautyFaceAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureBodyBeautyAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBodyBeautyAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBodyBeautyAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBodyBeautyAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBodyBeautyAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureBokehAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureBokehNightAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehNightAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x33

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehNightAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehNightAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehNightAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureBokehRelightAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehRelightAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehRelightAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehRelightAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehRelightAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureBokehSpecialEffectAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehSpecialEffectAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehSpecialEffectAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehSpecialEffectAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureBokehSpecialEffectAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureDualZoomAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDualZoomAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDualZoomAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDualZoomAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDualZoomAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureDynamicFovAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDynamicFovAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDynamicFovAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDynamicFovAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDynamicFovAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureDynamicShotDeviceInfoAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDynamicShotDeviceInfoAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDynamicShotDeviceInfoAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDynamicShotDeviceInfoAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDynamicShotDeviceInfoAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureDynamicShotInfoAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDynamicShotInfoAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDynamicShotInfoAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDynamicShotInfoAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureDynamicShotInfoAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureEventFinderAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureEventFinderAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x2f

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureEventFinderAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureEventFinderAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureEventFinderAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureFoldable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureFoldable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureFoldable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureFoldable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureFoldable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureFrcSsmAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureFrcSsmAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureFrcSsmAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureFrcSsmAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureFrcSsmAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureHDR10RecordingAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureHDR10RecordingAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureHDR10RecordingAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureHDR10RecordingAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureHDR10RecordingAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureHandGestureAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureHandGestureAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureHandGestureAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureHandGestureAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureHandGestureAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureLensSuggestionAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureLensSuggestionAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x27

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureLensSuggestionAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureLensSuggestionAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureLensSuggestionAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureMaxRawSizeOnly()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureMaxRawSizeOnly:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureMaxRawSizeOnly:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureMaxRawSizeOnly:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureMaxRawSizeOnly:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureNeedRecordPreAlloc()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureNeedRecordPreAlloc:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x2a

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureNeedRecordPreAlloc:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureNeedRecordPreAlloc:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureNeedRecordPreAlloc:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureNoFirstSetParam()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureNoFirstSetParam:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x36

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureNoFirstSetParam:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureNoFirstSetParam:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureNoFirstSetParam:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureNoPreviewVideoSnap()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureNoPreviewVideoSnap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureNoPreviewVideoSnap:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureNoPreviewVideoSnap:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureNoPreviewVideoSnap:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeaturePersonalPreset()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeaturePersonalPreset:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeaturePersonalPreset:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeaturePersonalPreset:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeaturePersonalPreset:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeaturePhotoPreviewVdis()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeaturePhotoPreviewVdis:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x22

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeaturePhotoPreviewVdis:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeaturePhotoPreviewVdis:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeaturePhotoPreviewVdis:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureRawSuperResolutionAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureRawSuperResolutionAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureRawSuperResolutionAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureRawSuperResolutionAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureRawSuperResolutionAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureSceneDetectInHal()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSceneDetectInHal:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSceneDetectInHal:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSceneDetectInHal:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSceneDetectInHal:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureSecondPictureConfigAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSecondPictureConfigAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSecondPictureConfigAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSecondPictureConfigAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSecondPictureConfigAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureSensorCropAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSensorCropAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSensorCropAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSensorCropAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSensorCropAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureShutterNotiTimestampAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureShutterNotiTimestampAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureShutterNotiTimestampAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureShutterNotiTimestampAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureShutterNotiTimestampAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureShutterNotificationAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureShutterNotificationAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureShutterNotificationAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureShutterNotificationAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureShutterNotificationAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureSingleCamSupportMultiRawStream()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSingleCamSupportMultiRawStream:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSingleCamSupportMultiRawStream:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSingleCamSupportMultiRawStream:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSingleCamSupportMultiRawStream:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureSmoothZoomAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSmoothZoomAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSmoothZoomAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSmoothZoomAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSmoothZoomAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureStillCaptureAnalysisAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureStillCaptureAnalysisAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureStillCaptureAnalysisAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureStillCaptureAnalysisAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureStillCaptureAnalysisAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureStpSupportYuvCaptureOnly()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureStpSupportYuvCaptureOnly:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureStpSupportYuvCaptureOnly:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureStpSupportYuvCaptureOnly:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureStpSupportYuvCaptureOnly:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureSubPreviewCbAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSubPreviewCbAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSubPreviewCbAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSubPreviewCbAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSubPreviewCbAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureSubPreviewCbUseRequestSampling()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSubPreviewCbUseRequestSampling:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSubPreviewCbUseRequestSampling:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSubPreviewCbUseRequestSampling:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSubPreviewCbUseRequestSampling:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureSuperNightPPPAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperNightPPPAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperNightPPPAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperNightPPPAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperNightPPPAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureSuperNightShotAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperNightShotAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperNightShotAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperNightShotAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperNightShotAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureSuperSlowMotionAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperSlowMotionAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperSlowMotionAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperSlowMotionAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperSlowMotionAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureSuperSlowMotionGmcAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperSlowMotionGmcAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperSlowMotionGmcAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperSlowMotionGmcAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperSlowMotionGmcAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureSuperSlowMotionNeedSyncCancelInAutoMode()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperSlowMotionNeedSyncCancelInAutoMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x25

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperSlowMotionNeedSyncCancelInAutoMode:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperSlowMotionNeedSyncCancelInAutoMode:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSuperSlowMotionNeedSyncCancelInAutoMode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureSupportLiteNightInAutoMode()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSupportLiteNightInAutoMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSupportLiteNightInAutoMode:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSupportLiteNightInAutoMode:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSupportLiteNightInAutoMode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureSupportLiteNightInSelfieMode()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSupportLiteNightInSelfieMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x34

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSupportLiteNightInSelfieMode:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSupportLiteNightInSelfieMode:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSupportLiteNightInSelfieMode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureSwSuperVideoStabilizationAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSwSuperVideoStabilization:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSwSuperVideoStabilization:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSwSuperVideoStabilization:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSwSuperVideoStabilization:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureSystemTransientZoomingAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSystemTransientZoomingAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x3a

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSystemTransientZoomingAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSystemTransientZoomingAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureSystemTransientZoomingAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureThirdPictureConfigAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureThirdPictureConfigAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureThirdPictureConfigAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureThirdPictureConfigAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureThirdPictureConfigAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureUdcAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureUdcAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x38

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureUdcAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureUdcAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureUdcAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureValidImageRegionPriority()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureValidImageRegionPriority:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureValidImageRegionPriority:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureValidImageRegionPriority:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureValidImageRegionPriority:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureVideoBeautyFaceAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoBeautyFaceAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoBeautyFaceAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoBeautyFaceAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoBeautyFaceAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureVideoBeautySnapNotSupport()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoFunctionNeedYuvSnap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoFunctionNeedYuvSnap:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoFunctionNeedYuvSnap:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoFunctionNeedYuvSnap:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureVideoBokehAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoBokehAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoBokehAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoBokehAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoBokehAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureVideoPreviewCb()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoPreviewCb:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoPreviewCb:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoPreviewCb:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureVideoPreviewCb:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungFeatureZoomLockAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureZoomLockAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungControlAvailableFeatures()[I

    move-result-object v0

    const/16 v1, 0x2b

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureZoomLockAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureZoomLockAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->mSamsungFeatureZoomLockAvailable:Ljava/lang/Boolean;

    return-object p0
.end method
