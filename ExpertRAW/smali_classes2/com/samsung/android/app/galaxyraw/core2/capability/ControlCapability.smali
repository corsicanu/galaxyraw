.class public Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;
.super Ljava/lang/Object;
.source "ControlCapability.java"


# instance fields
.field private final mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mControlAeAvailableAntibandingModes:[I

.field private mControlAeAvailableModes:[I

.field private mControlAeAvailableTargetFpsRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mControlAeCompensationRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mControlAeCompensationStep:Landroid/util/Rational;

.field private mControlAeCompensationStepReciprocal:I

.field private mControlAeLockAvailable:Ljava/lang/Boolean;

.field private mControlAfAvailableModes:[I

.field private mControlAvailableEffects:[I

.field private mControlAvailableModes:[I

.field private mControlAvailableSceneModes:[I

.field private mControlAvailableVideoStabilizationModes:[I

.field private mControlAwbAvailableModes:[I

.field private mControlAwbLockAvailable:Ljava/lang/Boolean;

.field private mControlMaxRegionsAe:Ljava/lang/Integer;

.field private mControlMaxRegionsAf:Ljava/lang/Integer;

.field private mControlMaxRegionsAwb:Ljava/lang/Integer;

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

.field private mSamsungControlAvailableBurstShotFps:[I

.field private mSamsungControlAvailableCallbackStreamFps:[I

.field private mSamsungControlAvailablePhotoNightZoomRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSamsungControlColorTemperatureRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSamsungControlEffectAeAvailableTargetFpsRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSamsungControlHandGestureAvailableTypes:[I

.field private mSamsungControlLensDistortionCorrectionAvailableModes:[I

.field private mSamsungControlLiveHdrAvailable:Ljava/lang/Boolean;

.field private mSamsungControlLiveHdrAvailableModes:[I

.field private mSamsungControlLlHdrEvCompensationList:[F

.field private mSamsungControlMaxBurstShotFps:Ljava/lang/Integer;

.field private mSamsungControlMeteringAvailableModes:[I

.field private mSamsungControlMfHdrEvCompensationList:[F

.field private mSamsungControlMultiAfAvailableModes:[I

.field private mSamsungControlPafAvailable:Ljava/lang/Boolean;

.field private mSamsungControlSpecialFunctionsAvailableFpsRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges;",
            ">;"
        }
    .end annotation
.end field

.field private mSamsungControlSsmRecordableImageCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;",
            ">;"
        }
    .end annotation
.end field

.field private mSamsungControlWbLevelRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/Map;)V
    .locals 2
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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlAvailableBurstShotFps:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlAvailableCallbackStreamFps:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlAvailablePhotoNightZoomRatioRange:Landroid/util/Range;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlColorTemperatureRange:Landroid/util/Range;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlEffectAeAvailableTargetFpsRanges:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlHandGestureAvailableTypes:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlLensDistortionCorrectionAvailableModes:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlLiveHdrAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlLiveHdrAvailableModes:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlLlHdrEvCompensationList:[F

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlMaxBurstShotFps:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlMeteringAvailableModes:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlMfHdrEvCompensationList:[F

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlMultiAfAvailableModes:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlPafAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlSpecialFunctionsAvailableFpsRanges:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlSsmRecordableImageCount:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlWbLevelRange:Landroid/util/Range;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeAvailableAntibandingModes:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeAvailableTargetFpsRanges:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeCompensationRange:Landroid/util/Range;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeCompensationStep:Landroid/util/Rational;

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeCompensationStepReciprocal:I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeLockAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAvailableModes:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAvailableSceneModes:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAvailableVideoStabilizationModes:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAwbLockAvailable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlMaxRegionsAe:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlMaxRegionsAf:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlMaxRegionsAwb:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeAvailableModes:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAfAvailableModes:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAvailableEffects:[I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAwbAvailableModes:[I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mPhysicalCameraCharacteristicsMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getControlAeAvailableAntibandingModes()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeAvailableAntibandingModes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeAvailableAntibandingModes:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeAvailableAntibandingModes:[I

    return-object p0
.end method

.method public getControlAeAvailableModes()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeAvailableModes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeAvailableModes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeAvailableModes:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeAvailableModes:[I

    return-object p0
.end method

.method public getControlAeAvailableTargetFpsRanges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeAvailableTargetFpsRanges:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->sortIntegerRangeArray([Landroid/util/Range;I)[Landroid/util/Range;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeAvailableTargetFpsRanges:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeAvailableTargetFpsRanges:Ljava/util/List;

    return-object p0
.end method

.method public getControlAeCompensationRange()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeCompensationRange:Landroid/util/Range;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeCompensationRange:Landroid/util/Range;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeCompensationRange:Landroid/util/Range;

    return-object p0
.end method

.method public getControlAeCompensationStep()Landroid/util/Rational;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeCompensationStep:Landroid/util/Rational;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeCompensationStep:Landroid/util/Rational;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeCompensationStep:Landroid/util/Rational;

    return-object p0
.end method

.method public getControlAeCompensationStep(Ljava/lang/String;)Landroid/util/Rational;
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mPhysicalCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Rational;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAeCompensationStep()Landroid/util/Rational;

    move-result-object p0

    return-object p0
.end method

.method public getControlAeCompensationStepReciprocal()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeCompensationStepReciprocal:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getControlAeCompensationStep()Landroid/util/Rational;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/Rational;->getDenominator()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    div-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeCompensationStepReciprocal:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeCompensationStepReciprocal:I

    :cond_1
    :goto_0
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeCompensationStepReciprocal:I

    return p0
.end method

.method public getControlAeLockAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeLockAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeLockAvailable:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAeLockAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getControlAfAvailableModes()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAfAvailableModes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAfAvailableModes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAfAvailableModes:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAfAvailableModes:[I

    return-object p0
.end method

.method public getControlAvailableEffects()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAvailableEffects:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAvailableEffects:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAvailableEffects:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAvailableEffects:[I

    return-object p0
.end method

.method public getControlAvailableModes()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAvailableModes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAvailableModes:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAvailableModes:[I

    return-object p0
.end method

.method public getControlAvailablePhotoNightZoomRatioRange()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlAvailablePhotoNightZoomRatioRange:Landroid/util/Range;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_AVAILABLE_PHOTO_NIGHT_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->convertArrayToRange(Ljava/lang/Object;Ljava/lang/Class;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlAvailablePhotoNightZoomRatioRange:Landroid/util/Range;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlAvailablePhotoNightZoomRatioRange:Landroid/util/Range;

    return-object p0
.end method

.method public getControlAvailableSceneModes()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAvailableSceneModes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAvailableSceneModes:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAvailableSceneModes:[I

    return-object p0
.end method

.method public getControlAvailableVideoStabilizationModes()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAvailableVideoStabilizationModes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAvailableVideoStabilizationModes:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAvailableVideoStabilizationModes:[I

    return-object p0
.end method

.method public getControlAwbAvailableModes()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAwbAvailableModes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAwbAvailableModes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAwbAvailableModes:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAwbAvailableModes:[I

    return-object p0
.end method

.method public getControlAwbLockAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAwbLockAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAwbLockAvailable:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlAwbLockAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getControlMaxRegionsAe()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlMaxRegionsAe:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlMaxRegionsAe:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlMaxRegionsAe:Ljava/lang/Integer;

    return-object p0
.end method

.method public getControlMaxRegionsAf()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlMaxRegionsAf:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlMaxRegionsAf:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlMaxRegionsAf:Ljava/lang/Integer;

    return-object p0
.end method

.method public getControlMaxRegionsAwb()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlMaxRegionsAwb:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlMaxRegionsAwb:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mControlMaxRegionsAwb:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSamsungControlAvailableBurstShotFps()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlAvailableBurstShotFps:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_AVAILABLE_BURST_SHOT_FPS:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlAvailableBurstShotFps:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlAvailableBurstShotFps:[I

    return-object p0
.end method

.method public getSamsungControlAvailableCallbackStreamFps()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlAvailableCallbackStreamFps:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_AVAILABLE_CALLBACK_STREAM_FPS:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlAvailableCallbackStreamFps:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlAvailableCallbackStreamFps:[I

    return-object p0
.end method

.method public getSamsungControlAvailableSMPreviewCallbackStreamFps()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlAvailableCallbackStreamFps()[I

    move-result-object p0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSamsungControlColorTemperatureRange()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlColorTemperatureRange:Landroid/util/Range;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_COLOR_TEMPERATURE_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->convertArrayToRange(Ljava/lang/Object;Ljava/lang/Class;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlColorTemperatureRange:Landroid/util/Range;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlColorTemperatureRange:Landroid/util/Range;

    return-object p0
.end method

.method public getSamsungControlEffectAeAvailableTargetFpsRanges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlEffectAeAvailableTargetFpsRanges:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_EFFECT_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->convertArrayToRangeList(Ljava/lang/Object;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlEffectAeAvailableTargetFpsRanges:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlEffectAeAvailableTargetFpsRanges:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlEffectAeAvailableTargetFpsRanges:Ljava/util/List;

    return-object p0
.end method

.method public getSamsungControlHandGestureAvailableTypes()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlHandGestureAvailableTypes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_HAND_GESTURE_AVAILABLE_TYPES:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlHandGestureAvailableTypes:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlHandGestureAvailableTypes:[I

    return-object p0
.end method

.method public getSamsungControlLensDistortionCorrectionAvailableModes()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlLensDistortionCorrectionAvailableModes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_LENS_DISTORTION_CORRECTION_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlLensDistortionCorrectionAvailableModes:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlLensDistortionCorrectionAvailableModes:[I

    return-object p0
.end method

.method public getSamsungControlLiveHdrAvailable()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlLiveHdrAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlLiveHdrAvailableModes()[I

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlLiveHdrAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlLiveHdrAvailable:Ljava/lang/Boolean;

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlLiveHdrAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungControlLiveHdrAvailableModes()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlLiveHdrAvailableModes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_LIVE_HDR_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlLiveHdrAvailableModes:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlLiveHdrAvailableModes:[I

    return-object p0
.end method

.method public getSamsungControlLlHdrEvCompensationList()[F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlLlHdrEvCompensationList:[F

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_LL_HDR_EV_COMPENSATION_LIST:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlLlHdrEvCompensationList:[F

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlLlHdrEvCompensationList:[F

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        -0x3fc00000    # -3.0f
    .end array-data
.end method

.method public getSamsungControlMaxBurstShotFps()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlMaxBurstShotFps:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->getSamsungControlAvailableBurstShotFps()[I

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlMaxBurstShotFps:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlMaxBurstShotFps:Ljava/lang/Integer;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlMaxBurstShotFps:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSamsungControlMeteringAvailableModes()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlMeteringAvailableModes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_METERING_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlMeteringAvailableModes:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlMeteringAvailableModes:[I

    return-object p0
.end method

.method public getSamsungControlMfHdrEvCompensationList()[F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlMfHdrEvCompensationList:[F

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_MF_HDR_EV_COMPENSATION_LIST:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlMfHdrEvCompensationList:[F

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlMfHdrEvCompensationList:[F

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        -0x40000000    # -2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getSamsungControlMultiAfAvailableModes()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlMultiAfAvailableModes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_MULTI_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlMultiAfAvailableModes:[I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlMultiAfAvailableModes:[I

    return-object p0
.end method

.method public getSamsungControlPafAvailable()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlPafAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_PAF_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlPafAvailable:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlPafAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSamsungControlSpecialFunctionsAvailableFpsRanges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlSpecialFunctionsAvailableFpsRanges:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_SPECIAL_FUNCTIONS_AVAILABLE_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges;->unMarshal([I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlSpecialFunctionsAvailableFpsRanges:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlSpecialFunctionsAvailableFpsRanges:Ljava/util/List;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlSpecialFunctionsAvailableFpsRanges:Ljava/util/List;

    return-object p0
.end method

.method public getSamsungControlSsmRecordableImageCount()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlSsmRecordableImageCount:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_SSM_RECORDABLE_IMAGE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->unMarshal([I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlSsmRecordableImageCount:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlSsmRecordableImageCount:Ljava/util/List;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlSsmRecordableImageCount:Ljava/util/List;

    return-object p0
.end method

.method public getSamsungControlWbLevelRange()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlWbLevelRange:Landroid/util/Range;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->CONTROL_WB_LEVEL_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->convertArrayToRange(Ljava/lang/Object;Ljava/lang/Class;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlWbLevelRange:Landroid/util/Range;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/capability/ControlCapability;->mSamsungControlWbLevelRange:Landroid/util/Range;

    return-object p0
.end method
