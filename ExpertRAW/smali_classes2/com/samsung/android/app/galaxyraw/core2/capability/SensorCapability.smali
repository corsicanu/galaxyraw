.class public Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;
.super Ljava/lang/Object;
.source "SensorCapability.java"


# instance fields
.field private final mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

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

.field private mSamsungSensorBlackLevelPattern:Landroid/hardware/camera2/params/BlackLevelPattern;

.field private mSamsungSensorInfoCropActiveArraySize:Landroid/graphics/Rect;

.field private mSamsungSensorInfoFullActiveArraySize:Landroid/graphics/Rect;

.field private mSamsungSensorInfoWhiteLevel:Ljava/lang/Integer;

.field private mSensorBlackLevelPattern:Landroid/hardware/camera2/params/BlackLevelPattern;

.field private mSensorCalibrationTransform1:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private mSensorCalibrationTransform2:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private mSensorColorTransform1:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private mSensorColorTransform2:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private mSensorForwardMatrix1:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private mSensorForwardMatrix2:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private mSensorInfoActiveArraySize:Landroid/graphics/Rect;

.field private mSensorInfoColorFilterArrangement:Ljava/lang/Integer;

.field private mSensorInfoExposureTimeRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorInfoMaxFrameDuration:Ljava/lang/Long;

.field private mSensorInfoPixelArraySize:Landroid/util/Size;

.field private mSensorInfoWhiteLevel:Ljava/lang/Integer;

.field private mSensorOrientation:Ljava/lang/Integer;

.field private mSensorReferenceIlluminant1:Ljava/lang/Integer;

.field private mSensorReferenceIlluminant2:Ljava/lang/Byte;

.field private mStatisticsInfoAvailableFaceDetectModes:[I

.field private mStatisticsInfoMaxFaceCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraCharacteristics",
            "physicalCameraCharacteristicsMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSamsungSensorInfoCropActiveArraySize:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSamsungSensorInfoFullActiveArraySize:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorBlackLevelPattern:Landroid/hardware/camera2/params/BlackLevelPattern;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSamsungSensorBlackLevelPattern:Landroid/hardware/camera2/params/BlackLevelPattern;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorCalibrationTransform1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorCalibrationTransform2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorColorTransform1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorColorTransform2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorForwardMatrix1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorForwardMatrix2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoActiveArraySize:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoColorFilterArrangement:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoExposureTimeRange:Landroid/util/Range;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoMaxFrameDuration:Ljava/lang/Long;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoPixelArraySize:Landroid/util/Size;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoWhiteLevel:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSamsungSensorInfoWhiteLevel:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorOrientation:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorReferenceIlluminant1:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorReferenceIlluminant2:Ljava/lang/Byte;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mStatisticsInfoAvailableFaceDetectModes:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mStatisticsInfoMaxFaceCount:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mPhysicalCameraCharacteristicsMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getSamsungSensorBlackLevelPattern()Landroid/hardware/camera2/params/BlackLevelPattern;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSamsungSensorBlackLevelPattern:Landroid/hardware/camera2/params/BlackLevelPattern;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->SENSOR_BLACK_LEVEL_PATTERN:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/BlackLevelPattern;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSamsungSensorBlackLevelPattern:Landroid/hardware/camera2/params/BlackLevelPattern;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSamsungSensorBlackLevelPattern:Landroid/hardware/camera2/params/BlackLevelPattern;

    return-object p0
.end method

.method public getSamsungSensorInfoCropActiveArraySize()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSamsungSensorInfoCropActiveArraySize:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->SENSOR_INFO_CROP_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSamsungSensorInfoCropActiveArraySize:Landroid/graphics/Rect;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSamsungSensorInfoCropActiveArraySize:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSamsungSensorInfoExposureTimeRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    const-class v0, Ljava/lang/Long;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->convertArrayToRange(Ljava/lang/Object;Ljava/lang/Class;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungSensorInfoFullActiveArraySize()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSamsungSensorInfoFullActiveArraySize:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->SENSOR_INFO_FULL_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSamsungSensorInfoFullActiveArraySize:Landroid/graphics/Rect;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSamsungSensorInfoFullActiveArraySize:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSamsungSensorInfoPhysicalType()Ljava/lang/Integer;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->SENSOR_INFO_PHYSICAL_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getSamsungSensorInfoSensitivityRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    const-class v0, Ljava/lang/Integer;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->convertArrayToRange(Ljava/lang/Object;Ljava/lang/Class;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungSensorInfoWhiteLevel()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSamsungSensorInfoWhiteLevel:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->SENSOR_INFO_WHITE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSamsungSensorInfoWhiteLevel:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSamsungSensorInfoWhiteLevel:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSensorBlackLevelPattern()Landroid/hardware/camera2/params/BlackLevelPattern;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorBlackLevelPattern:Landroid/hardware/camera2/params/BlackLevelPattern;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_BLACK_LEVEL_PATTERN:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/BlackLevelPattern;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorBlackLevelPattern:Landroid/hardware/camera2/params/BlackLevelPattern;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorBlackLevelPattern:Landroid/hardware/camera2/params/BlackLevelPattern;

    return-object p0
.end method

.method public getSensorCalibrationTransform1()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorCalibrationTransform1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorCalibrationTransform1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorCalibrationTransform1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public getSensorCalibrationTransform2()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorCalibrationTransform2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorCalibrationTransform2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorCalibrationTransform2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public getSensorColorTransform1()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorColorTransform1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorColorTransform1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorColorTransform1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public getSensorColorTransform2()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorColorTransform2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorColorTransform2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorColorTransform2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public getSensorForwardMatrix1()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorForwardMatrix1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_FORWARD_MATRIX1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorForwardMatrix1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorForwardMatrix1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public getSensorForwardMatrix2()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorForwardMatrix2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_FORWARD_MATRIX2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorForwardMatrix2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorForwardMatrix2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public getSensorInfoActiveArraySize()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoActiveArraySize:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoActiveArraySize:Landroid/graphics/Rect;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoActiveArraySize:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSensorInfoColorFilterArrangement()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoColorFilterArrangement:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoColorFilterArrangement:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoColorFilterArrangement:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSensorInfoColorFilterArrangement(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicalCameraId"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mPhysicalCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->getSensorInfoColorFilterArrangement()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoExposureTimeRange()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoExposureTimeRange:Landroid/util/Range;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoExposureTimeRange:Landroid/util/Range;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoExposureTimeRange:Landroid/util/Range;

    return-object p0
.end method

.method public getSensorInfoMaxFrameDuration()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoMaxFrameDuration:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_MAX_FRAME_DURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoMaxFrameDuration:Ljava/lang/Long;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoMaxFrameDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public getSensorInfoPixelArraySize()Landroid/util/Size;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoPixelArraySize:Landroid/util/Size;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoPixelArraySize:Landroid/util/Size;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoPixelArraySize:Landroid/util/Size;

    return-object p0
.end method

.method public getSensorInfoWhiteLevel()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoWhiteLevel:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_WHITE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoWhiteLevel:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorInfoWhiteLevel:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSensorOrientation()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorOrientation:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorOrientation:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorOrientation:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSensorReferenceIlluminant1()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorReferenceIlluminant1:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorReferenceIlluminant1:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorReferenceIlluminant1:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSensorReferenceIlluminant2()Ljava/lang/Byte;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorReferenceIlluminant2:Ljava/lang/Byte;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorReferenceIlluminant2:Ljava/lang/Byte;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mSensorReferenceIlluminant2:Ljava/lang/Byte;

    return-object p0
.end method

.method public getStatisticsInfoAvailableFaceDetectModes()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mStatisticsInfoAvailableFaceDetectModes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mStatisticsInfoAvailableFaceDetectModes:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mStatisticsInfoAvailableFaceDetectModes:[I

    return-object p0
.end method

.method public getStatisticsInfoMaxFaceCount()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mStatisticsInfoMaxFaceCount:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mStatisticsInfoMaxFaceCount:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/SensorCapability;->mStatisticsInfoMaxFaceCount:Ljava/lang/Integer;

    return-object p0
.end method
