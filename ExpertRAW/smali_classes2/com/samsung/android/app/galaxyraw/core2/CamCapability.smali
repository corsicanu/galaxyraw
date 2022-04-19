.class public Lcom/samsung/android/app/galaxyraw/core2/CamCapability;
.super Ljava/lang/Object;
.source "CamCapability.java"


# instance fields
.field private final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private final mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mCameraId:Ljava/lang/String;

.field private mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

.field private mCapabilityLogicalMultiCamera:Ljava/lang/Boolean;

.field private mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

.field private mDepthCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/DepthCapability;

.field private mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

.field private mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

.field private mPhysicalCameraCharacteristicsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhysicalCameraIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestAvailableCapabilities:[I

.field private mSamsung23LogicalMultiCameraDualCalibration:[B

.field private mSamsungSensorInfoSensorName:[Ljava/lang/String;

.field private mSamsungSensorInfoSensorNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

.field private mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraManager",
            "cameraId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mPhysicalCameraCharacteristicsMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSamsung23LogicalMultiCameraDualCalibration:[B

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapabilityLogicalMultiCamera:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSamsungSensorInfoSensorName:[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSamsungSensorInfoSensorNameMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mRequestAvailableCapabilities:[I

    const-string v0, "CreateCamCapability"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CAMFWKPI] CamCapability E - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const-string v1, "cameraManager"

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "cameraId"

    invoke-static {p2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCameraId:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v2, "CamCapability - getCameraCharacteristics is done"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mPhysicalCameraIds:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getCapabilityLogicalMultiCamera()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mPhysicalCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mPhysicalCameraCharacteristicsMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mPhysicalCameraCharacteristicsMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mPhysicalCameraCharacteristicsMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mPhysicalCameraCharacteristicsMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/capability/DepthCapability;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mPhysicalCameraCharacteristicsMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/capability/DepthCapability;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mDepthCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/DepthCapability;

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getCapabilityLogicalMultiCamera()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDualZoomAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureBokehAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "23"

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->LOGICAL_MULTI_CAMERA_DUAL_CALIBRATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSamsung23LogicalMultiCameraDualCalibration:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSamsung23LogicalMultiCameraDualCalibration:[B

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCameraId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "23LogicalMultiCal %s %d"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[CAMFWKPI] CamCapability X - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw p1
.end method

.method private static dumpCameraCharacteristics(ILandroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraID",
            "cameraCharacteristics"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/capability/DumpUtils;->dumpCameraCharacteristics(ILandroid/hardware/camera2/CameraCharacteristics;)V

    return-void
.end method

.method private getSamsungScalerAvailableCropJpegPictureSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableCropJpegPictureSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getSamsungScalerAvailableCropPreviewSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableCropPreviewSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getSamsungScalerAvailableFullJpegPictureSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableFullJpegPictureSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getSamsungScalerAvailableFullPreviewSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableFullPreviewSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getSamsungSensorInfoCropActiveArraySize()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSamsungSensorInfoCropActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getSamsungSensorInfoFullActiveArraySize()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSamsungSensorInfoFullActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getSamsungSensorInfoSensorName()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSamsungSensorInfoSensorName:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->SENSOR_INFO_SENSOR_NAME:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSamsungSensorInfoSensorName:[Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSamsungSensorInfoSensorName:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public dumpCameraCharacteristics()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->dumpCameraCharacteristics(ILandroid/hardware/camera2/CameraCharacteristics;)V

    return-void
.end method

.method public getAvailableSamsungSessionKeyNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getAvailableSamsungSessionKeyNames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getCapabilityLogicalMultiCamera()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapabilityLogicalMultiCamera:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getRequestAvailableCapabilities()[I

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapabilityLogicalMultiCamera:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapabilityLogicalMultiCamera:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getControlAeAvailableAntibandingModes()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAeAvailableAntibandingModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getControlAeAvailableModes()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAeAvailableModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getControlAeAvailableTargetFpsRanges()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAeAvailableTargetFpsRanges()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getControlAeCompensationRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAeCompensationRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getControlAeCompensationStep()Landroid/util/Rational;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAeCompensationStep()Landroid/util/Rational;

    move-result-object p0

    return-object p0
.end method

.method public getControlAeCompensationStep(Ljava/lang/String;)Landroid/util/Rational;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicalCameraId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAeCompensationStep(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object p0

    return-object p0
.end method

.method public getControlAeCompensationStepReciprocal()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAeCompensationStepReciprocal()I

    move-result p0

    return p0
.end method

.method public getControlAeLockAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAeLockAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getControlAfAvailableModes()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAfAvailableModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getControlAvailableEffects()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAvailableEffects()[I

    move-result-object p0

    return-object p0
.end method

.method public getControlAvailableModes()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAvailableModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getControlAvailableSceneModes()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAvailableSceneModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getControlAvailableVideoStabilizationModes()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAvailableVideoStabilizationModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getControlAwbAvailableModes()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAwbAvailableModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getControlAwbLockAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAwbLockAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getControlMaxRegionsAe()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlMaxRegionsAe()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getControlMaxRegionsAf()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlMaxRegionsAf()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getControlMaxRegionsAwb()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlMaxRegionsAwb()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getDepthDepthIsExclusive()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mDepthCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/DepthCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/DepthCapability;->getDepthDepthIsExclusive()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getFlashInfoAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getFlashInfoAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getInfoSupportedHardwareLevel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getInfoSupportedHardwareLevel()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getJpegAvailableThumbnailSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getJpegAvailableThumbnailSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLensFacing()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;->getLensFacing()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getLensInfoAvailableApertures()[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;->getLensInfoAvailableApertures()[F

    move-result-object p0

    return-object p0
.end method

.method public getLensInfoAvailableApertures(Ljava/lang/String;)[F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicalCameraId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;->getLensInfoAvailableApertures(Ljava/lang/String;)[F

    move-result-object p0

    return-object p0
.end method

.method public getLensInfoAvailableFocalLengths()[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;->getLensInfoAvailableFocalLengths()[F

    move-result-object p0

    return-object p0
.end method

.method public getLensInfoAvailableOpticalStabilization()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;->getLensInfoAvailableOpticalStabilization()[I

    move-result-object p0

    return-object p0
.end method

.method public getLensInfoFocusLensInfo()Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$FocusLensInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;->getLensInfoFocusLensInfo()Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$FocusLensInfo;

    move-result-object p0

    return-object p0
.end method

.method public getLensInfoMinimumFocusDistance()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;->getLensInfoMinimumFocusDistance()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getLensInfoVariableLensApertureAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;->getLensInfoVariableLensApertureAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getLensPoseRotation()[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;->getLensPoseRotation()[F

    move-result-object p0

    return-object p0
.end method

.method public getLensPoseTranslation()[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;->getLensPoseTranslation()[F

    move-result-object p0

    return-object p0
.end method

.method public getNoiseReductionAvailableNoiseReductionModes()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getNoiseReductionAvailableNoiseReductionModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getPhysicalCameraIds()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhysicalCameraIds : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mPhysicalCameraIds:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mPhysicalCameraIds:Ljava/util/Set;

    return-object p0
.end method

.method public getRawPictureSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getRawPictureSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRawSensorInfo()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getRawSensorInfo()[I

    move-result-object p0

    return-object p0
.end method

.method public getReprocessMaxCaptureStall()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getReprocessMaxCaptureStall()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getRequestAvailableCapabilities()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mRequestAvailableCapabilities:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mRequestAvailableCapabilities:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mRequestAvailableCapabilities:[I

    return-object p0
.end method

.method public getRequestMaxNumInputStreams()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getRequestMaxNumInputStreams()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getRequestMaxNumOutputProc()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getRequestMaxNumOutputProc()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getRequestMaxNumOutputProcStalling()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getRequestMaxNumOutputProcStalling()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getRequestMaxNumOutputRaw()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getRequestMaxNumOutputRaw()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getRequestPartialResultAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getRequestPartialResultAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getRequestPartialResultCount()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getRequestPartialResultCount()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getRequestPipelineMaxDepth()Ljava/lang/Byte;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getRequestPipelineMaxDepth()Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public getSamsung23LogicalMultiCameraDualCalibration()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSamsung23LogicalMultiCameraDualCalibration:[B

    return-object p0
.end method

.method public getSamsungControlAvailableBurstShotFps()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlAvailableBurstShotFps()[I

    move-result-object p0

    return-object p0
.end method

.method public getSamsungControlAvailableCallbackStreamFps()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlAvailableCallbackStreamFps()[I

    move-result-object p0

    return-object p0
.end method

.method public getSamsungControlAvailablePhotoNightZoomRatioRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAvailablePhotoNightZoomRatioRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungControlAvailableSMPreviewCallbackStreamFps()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlAvailableSMPreviewCallbackStreamFps()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungControlColorTemperatureRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlColorTemperatureRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungControlEffectAeAvailableTargetFpsRanges()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlEffectAeAvailableTargetFpsRanges()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungControlHandGestureAvailableTypes()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlHandGestureAvailableTypes()[I

    move-result-object p0

    return-object p0
.end method

.method public getSamsungControlLensDistortionCorrectionAvailableModes()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlLensDistortionCorrectionAvailableModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getSamsungControlLiveHdrAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlLiveHdrAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungControlLiveHdrAvailableModes()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlLiveHdrAvailableModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getSamsungControlLlHdrEvCompensationList()[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlLlHdrEvCompensationList()[F

    move-result-object p0

    return-object p0
.end method

.method public getSamsungControlMaxBurstShotFps()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlMaxBurstShotFps()I

    move-result p0

    return p0
.end method

.method public getSamsungControlMeteringAvailableModes()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlMeteringAvailableModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getSamsungControlMfHdrEvCompensationList()[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlMfHdrEvCompensationList()[F

    move-result-object p0

    return-object p0
.end method

.method public getSamsungControlMultiAfAvailableModes()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlMultiAfAvailableModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getSamsungControlPafAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlPafAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungControlSpecialFunctionsAvailableFpsRanges()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlSpecialFunctionsAvailableFpsRanges()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungControlSsmRecordableImageCount()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlSsmRecordableImageCount()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungControlWbLevelRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mControlCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlWbLevelRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungDepthAvailableDepthSizes(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mDepthCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/DepthCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/capability/DepthCapability;->getSamsungDepthAvailableDepthSizes(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungDepthAvailableDepthSizes(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "physicalCameraId",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mDepthCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/DepthCapability;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/capability/DepthCapability;->getSamsungDepthAvailableDepthSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungDepthCalibration()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mDepthCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/DepthCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/DepthCapability;->getSamsungDepthCalibration()[B

    move-result-object p0

    return-object p0
.end method

.method public getSamsungDepthCalibration(Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicalCameraId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mDepthCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/DepthCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/capability/DepthCapability;->getSamsungDepthCalibration(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeature3aExtraInfoAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeature3aExtraInfoAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureAePriorityModeAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureAePriorityModeAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureAutoFramingAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureAutoFramingAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureBeautyFaceAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureBeautyFaceAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureBodyBeautyAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureBodyBeautyAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureBokehAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureBokehAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureBokehNightAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureBokehNightAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureBokehRelightAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureBokehRelightAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureBokehSpecialEffectAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureBokehSpecialEffectAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureDualZoomAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureDualZoomAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureDynamicFovAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureDynamicFovAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureDynamicShotDeviceInfoAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureDynamicShotDeviceInfoAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureDynamicShotInfoAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureDynamicShotInfoAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureEventFinderAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureEventFinderAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureFoldable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureFoldable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureFrcSsmAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureFrcSsmAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureHDR10RecordingAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureHDR10RecordingAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureHandGestureAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureHandGestureAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureLensSuggestionAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureLensSuggestionAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureMaxRawSizeOnly()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureMaxRawSizeOnly()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureNeedRecordPreAlloc()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureNeedRecordPreAlloc()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureNoFirstSetParam()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureNoFirstSetParam()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureNoPreviewVideoSnap()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureNoPreviewVideoSnap()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeaturePersonalPreset()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeaturePersonalPreset()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeaturePhotoPreviewVdis()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeaturePhotoPreviewVdis()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureRawSuperResolutionAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureRawSuperResolutionAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureSceneDetectInHal()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureSceneDetectInHal()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureSecondPictureConfigAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureSecondPictureConfigAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureSensorCropAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureSensorCropAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureShutterNotiTimestampAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureShutterNotiTimestampAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureShutterNotificationAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureShutterNotificationAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureSingleCamSupportMultiRawStream()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureSingleCamSupportMultiRawStream()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureSmoothZoomAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureSmoothZoomAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureStillCaptureAnalysisAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureStillCaptureAnalysisAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureStpSupportYuvCaptureOnly()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureStpSupportYuvCaptureOnly()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureSubPreviewCbAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureSubPreviewCbAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureSubPreviewCbUseRequestSampling()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureSubPreviewCbUseRequestSampling()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureSuperNightPPPAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureSuperNightPPPAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureSuperNightShotAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureSuperNightShotAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureSuperSlowMotionAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureSuperSlowMotionAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureSuperSlowMotionGmcAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureSuperSlowMotionGmcAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureSuperSlowMotionNeedSyncCancelInAutoMode()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureSuperSlowMotionNeedSyncCancelInAutoMode()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureSupportLiteNightInAutoMode()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureSupportLiteNightInAutoMode()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureSupportLiteNightInSelfieMode()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureSupportLiteNightInSelfieMode()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureSwSuperVideoStabilizationAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureSwSuperVideoStabilizationAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureSystemTransientZoomingAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureSystemTransientZoomingAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureThirdPictureConfigAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureThirdPictureConfigAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureUdcAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureUdcAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureValidImageRegionPriority()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureValidImageRegionPriority()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureVideoBeautyFaceAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureVideoBeautyFaceAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureVideoBeautySnapNotSupport()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureVideoBeautySnapNotSupport()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureVideoBokehAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureVideoBokehAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureVideoPreviewCb()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureVideoPreviewCb()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungFeatureZoomLockAvailable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mFeatureCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/FeatureCapability;->getSamsungFeatureZoomLockAvailable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungLensInfoAvailableOpticalStabilizationOperationModes()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;->getSamsungLensInfoAvailableOpticalStabilizationOperationModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getSamsungLensInfoFoV()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;->getSamsungLensInfoFoV()F

    move-result p0

    return p0
.end method

.method public getSamsungLensInfoFoV(Ljava/lang/String;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicalCameraId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;->getSamsungLensInfoFoV(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getSamsungLensInfoHorizontalViewAngle(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageRatio"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;->getSamsungLensInfoHorizontalViewAngle(F)F

    move-result p0

    return p0
.end method

.method public getSamsungLensInfoVerticalViewAngle(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageRatio"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;->getSamsungLensInfoVerticalViewAngle(F)F

    move-result p0

    return p0
.end method

.method public getSamsungLogicalMultiCameraDualCalibration()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getSamsungLogicalMultiCameraDualCalibration()[B

    move-result-object p0

    return-object p0
.end method

.method public getSamsungLogicalMultiCameraMainPhysicalId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/Capability;->getSamsungLogicalMultiCameraMainPhysicalId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungScalerAvailableHighSpeedVideoConfigurations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$HighSpeedVideoStreamConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableHighSpeedVideoConfigurations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungScalerAvailableHighresRawStreamConfigs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableHighresRawStreamConfigs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungScalerAvailableJpegPictureSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableJpegPictureSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungScalerAvailableJpegPictureSizes(Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSensorCropAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicFovAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableFullJpegPictureSizes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableCropJpegPictureSizes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableJpegPictureSizes()Ljava/util/List;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public getSamsungScalerAvailableMaxDigitalZoomList()[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableMaxDigitalZoomList()[F

    move-result-object p0

    return-object p0
.end method

.method public getSamsungScalerAvailableMinDigitalZoom()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableMinDigitalZoom()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungScalerAvailableMinDigitalZoomList()[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableMinDigitalZoomList()[F

    move-result-object p0

    return-object p0
.end method

.method public getSamsungScalerAvailablePreviewSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailablePreviewSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungScalerAvailablePreviewSizes(Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSensorCropAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicFovAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableFullPreviewSizes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableCropPreviewSizes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailablePreviewSizes()Ljava/util/List;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public getSamsungScalerAvailableSubJpegPictureSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableSubJpegPictureSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungScalerAvailableSuperNightRawStreamConfigs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableSuperNightRawStreamConfigs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungScalerAvailableSuperResolutionRawStreamConfigs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableSuperResolutionRawStreamConfigs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungScalerAvailableTetraFirstJpegPictureSizes(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "physicalCameraId",
            "streamType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableTetraFirstJpegPictureSizes(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungScalerAvailableThumbnailSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableThumbnailSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungScalerAvailableUdcRawStreamConfigs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableUdcRawStreamConfigs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungScalerAvailableVideoBeautyConfigurations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableVideoBeautyConfigurations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungScalerAvailableVideoConfigurations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerAvailableVideoConfigurations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungScalerFlipAvailableModes()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerFlipAvailableModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getSamsungScalerZoomMapRatio()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getSamsungScalerZoomMapRatio()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungSensorBlackLevelPattern()Landroid/hardware/camera2/params/BlackLevelPattern;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSamsungSensorBlackLevelPattern()Landroid/hardware/camera2/params/BlackLevelPattern;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungSensorInfoExposureTimeRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSamsungSensorInfoExposureTimeRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungSensorInfoPhysicalType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSamsungSensorInfoPhysicalType()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungSensorInfoSensitivityRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSamsungSensorInfoSensitivityRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungSensorInfoSensorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSamsungSensorInfoSensorNameMap:Ljava/util/Map;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getCapabilityLogicalMultiCamera()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mPhysicalCameraIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mPhysicalCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->SENSOR_INFO_SENSOR_NAME:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    aget-object v4, v4, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungSensorInfoSensorName()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mCameraId:Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSamsungSensorInfoSensorNameMap:Ljava/util/Map;

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSamsungSensorInfoSensorNameMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSamsungSensorInfoWhiteLevel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSamsungSensorInfoWhiteLevel()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getScalerAvailableHighResolutionOutputSizes(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getScalerAvailableHighResolutionOutputSizes(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScalerAvailableHighSpeedVideoFpsRanges()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getScalerAvailableHighSpeedVideoFpsRanges()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScalerAvailableHighSpeedVideoFpsRangesFor(Landroid/util/Size;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getScalerAvailableHighSpeedVideoFpsRangesFor(Landroid/util/Size;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScalerAvailableHighSpeedVideoSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getScalerAvailableHighSpeedVideoSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScalerAvailableHighSpeedVideoSizesFor(Landroid/util/Range;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fpsRange"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getScalerAvailableHighSpeedVideoSizesFor(Landroid/util/Range;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScalerAvailableInputFormats()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getScalerAvailableInputFormats()[I

    move-result-object p0

    return-object p0
.end method

.method public getScalerAvailableInputSizes(I)[Landroid/util/Size;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getScalerAvailableInputSizes(I)[Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getScalerAvailableMaxDigitalZoom()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getScalerAvailableMaxDigitalZoom()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getScalerAvailableOutputFormats()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getScalerAvailableOutputFormats()[I

    move-result-object p0

    return-object p0
.end method

.method public getScalerAvailableOutputSizes(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getScalerAvailableOutputSizes(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScalerAvailableOutputSizes(Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "klass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getScalerAvailableOutputSizes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScalerCroppingType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mScalerCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ScalerCapability;->getScalerCroppingType()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getSensorBlackLevelPattern()Landroid/hardware/camera2/params/BlackLevelPattern;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorBlackLevelPattern()Landroid/hardware/camera2/params/BlackLevelPattern;

    move-result-object p0

    return-object p0
.end method

.method public getSensorCalibrationTransform1()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorCalibrationTransform1()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object p0

    return-object p0
.end method

.method public getSensorCalibrationTransform2()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorCalibrationTransform2()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object p0

    return-object p0
.end method

.method public getSensorColorTransform1()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorColorTransform1()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object p0

    return-object p0
.end method

.method public getSensorColorTransform2()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorColorTransform2()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object p0

    return-object p0
.end method

.method public getSensorForwardMatrix1()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorForwardMatrix1()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object p0

    return-object p0
.end method

.method public getSensorForwardMatrix2()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorForwardMatrix2()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoActiveArraySize()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoActiveArraySize(Ljava/lang/Integer;)Landroid/graphics/Rect;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSensorCropAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicFovAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungSensorInfoFullActiveArraySize()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungSensorInfoCropActiveArraySize()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public getSensorInfoColorFilterArrangement()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorInfoColorFilterArrangement()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoColorFilterArrangement(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicalCameraId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorInfoColorFilterArrangement(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoExposureTimeRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorInfoExposureTimeRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoMaxFrameDuration()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorInfoMaxFrameDuration()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoPhysicalSize()Landroid/util/SizeF;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mLensCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/LensCapability;->getSensorInfoPhysicalSize()Landroid/util/SizeF;

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoPixelArraySize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorInfoPixelArraySize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoWhiteLevel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorInfoWhiteLevel()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getSensorOrientation()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorOrientation()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getSensorReferenceIlluminant1()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorReferenceIlluminant1()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getSensorReferenceIlluminant2()Ljava/lang/Byte;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorReferenceIlluminant2()Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public getStatisticsInfoAvailableFaceDetectModes()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getStatisticsInfoAvailableFaceDetectModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getStatisticsInfoMaxFaceCount()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->mSensorCapability:Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getStatisticsInfoMaxFaceCount()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
