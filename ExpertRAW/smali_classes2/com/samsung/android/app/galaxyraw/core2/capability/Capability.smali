.class public Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;
.super Ljava/lang/Object;
.source "Capability.java"


# static fields
.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field private mAvailableSamsungSessionKeyNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableSamsungSessionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mFlashInfoAvailable:Ljava/lang/Boolean;

.field private mInfoSupportedHardwareLevel:Ljava/lang/Integer;

.field private mJpegAvailableThumbnailSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mNoiseReductionAvailableNoiseReductionModes:[I

.field private mRawPictureSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mRawSensorInfo:[I

.field private mReprocessMaxCaptureStall:Ljava/lang/Integer;

.field private mRequestMaxNumInputStreams:Ljava/lang/Integer;

.field private mRequestMaxNumOutputProc:Ljava/lang/Integer;

.field private mRequestMaxNumOutputProcStalling:Ljava/lang/Integer;

.field private mRequestMaxNumOutputRaw:Ljava/lang/Integer;

.field private mRequestPartialResultAvailable:Ljava/lang/Boolean;

.field private mRequestPartialResultCount:Ljava/lang/Integer;

.field private mRequestPipelineMaxDepth:Ljava/lang/Byte;

.field private mSamsungLogicalMultiCameraDualCalibration:[B

.field private mSamsungLogicalMultiCameraMainPhysicalId:Ljava/lang/String;

.field private final mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mFlashInfoAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mInfoSupportedHardwareLevel:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRawPictureSizes:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRawSensorInfo:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mNoiseReductionAvailableNoiseReductionModes:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mReprocessMaxCaptureStall:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestMaxNumInputStreams:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestMaxNumOutputProc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestMaxNumOutputProcStalling:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestMaxNumOutputRaw:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestPartialResultAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestPartialResultCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestPipelineMaxDepth:Ljava/lang/Byte;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mSamsungLogicalMultiCameraDualCalibration:[B

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mSamsungLogicalMultiCameraMainPhysicalId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mJpegAvailableThumbnailSizes:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-void
.end method

.method private getAvailableSamsungSessionKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mAvailableSamsungSessionKeys:Ljava/util/List;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->getAvailableSessionKeys(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mAvailableSamsungSessionKeys:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailableSamsungSessionKeys err"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mAvailableSamsungSessionKeys:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mAvailableSamsungSessionKeys:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mAvailableSamsungSessionKeys:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getAvailableSamsungSessionKeyNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mAvailableSamsungSessionKeyNames:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getAvailableSamsungSessionKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mAvailableSamsungSessionKeyNames:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mAvailableSamsungSessionKeyNames:Ljava/util/List;

    return-object p0
.end method

.method public getFlashInfoAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mFlashInfoAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mFlashInfoAvailable:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mFlashInfoAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getInfoSupportedHardwareLevel()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mInfoSupportedHardwareLevel:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mInfoSupportedHardwareLevel:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mInfoSupportedHardwareLevel:Ljava/lang/Integer;

    return-object p0
.end method

.method public getJpegAvailableThumbnailSizes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mJpegAvailableThumbnailSizes:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mJpegAvailableThumbnailSizes:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->sortSizeArray([Landroid/util/Size;I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mJpegAvailableThumbnailSizes:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->sortSizeArray([Landroid/util/Size;I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mJpegAvailableThumbnailSizes:Ljava/util/List;

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mJpegAvailableThumbnailSizes:Ljava/util/List;

    return-object p0
.end method

.method public getNoiseReductionAvailableNoiseReductionModes()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mNoiseReductionAvailableNoiseReductionModes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mNoiseReductionAvailableNoiseReductionModes:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mNoiseReductionAvailableNoiseReductionModes:[I

    return-object p0
.end method

.method public getRawPictureSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRawPictureSizes:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->sortSizeArray([Landroid/util/Size;I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRawPictureSizes:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRawPictureSizes:Ljava/util/List;

    return-object p0
.end method

.method public getRawSensorInfo()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRawSensorInfo:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->SCALER_RAW_SENSOR_INFO:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRawSensorInfo:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRawSensorInfo:[I

    return-object p0
.end method

.method public getReprocessMaxCaptureStall()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mReprocessMaxCaptureStall:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REPROCESS_MAX_CAPTURE_STALL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mReprocessMaxCaptureStall:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mReprocessMaxCaptureStall:Ljava/lang/Integer;

    return-object p0
.end method

.method public getRequestMaxNumInputStreams()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestMaxNumInputStreams:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_INPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestMaxNumInputStreams:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestMaxNumInputStreams:Ljava/lang/Integer;

    return-object p0
.end method

.method public getRequestMaxNumOutputProc()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestMaxNumOutputProc:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestMaxNumOutputProc:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestMaxNumOutputProc:Ljava/lang/Integer;

    return-object p0
.end method

.method public getRequestMaxNumOutputProcStalling()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestMaxNumOutputProcStalling:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestMaxNumOutputProcStalling:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestMaxNumOutputProcStalling:Ljava/lang/Integer;

    return-object p0
.end method

.method public getRequestMaxNumOutputRaw()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestMaxNumOutputRaw:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestMaxNumOutputRaw:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestMaxNumOutputRaw:Ljava/lang/Integer;

    return-object p0
.end method

.method public getRequestPartialResultAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestPartialResultAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getRequestPartialResultCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestPartialResultAvailable:Ljava/lang/Boolean;

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestPartialResultAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getRequestPartialResultCount()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestPartialResultCount:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestPartialResultCount:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestPartialResultCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public getRequestPipelineMaxDepth()Ljava/lang/Byte;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestPipelineMaxDepth:Ljava/lang/Byte;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestPipelineMaxDepth:Ljava/lang/Byte;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mRequestPipelineMaxDepth:Ljava/lang/Byte;

    return-object p0
.end method

.method public getSamsungLogicalMultiCameraDualCalibration()[B
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mSamsungLogicalMultiCameraDualCalibration:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->LOGICAL_MULTI_CAMERA_DUAL_CALIBRATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mSamsungLogicalMultiCameraDualCalibration:[B

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mSamsungLogicalMultiCameraDualCalibration:[B

    return-object p0
.end method

.method public getSamsungLogicalMultiCameraMainPhysicalId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mSamsungLogicalMultiCameraMainPhysicalId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->LOGICAL_MULTI_CAMERA_MAIN_PHYSICAL_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mSamsungLogicalMultiCameraMainPhysicalId:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->mSamsungLogicalMultiCameraMainPhysicalId:Ljava/lang/String;

    return-object p0
.end method
