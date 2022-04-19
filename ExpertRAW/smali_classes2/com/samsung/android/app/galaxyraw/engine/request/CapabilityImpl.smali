.class Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;
.super Ljava/lang/Object;
.source "CapabilityImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Capability;


# instance fields
.field private mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

.field private mIsAeRegionsSupported:Z

.field private mIsAfRegionsSupported:Z

.field private mIsAfSupported:Z

.field private mIsCafSupported:Z

.field private mIsFaceDetectionFullModeSupported:Z

.field private mIsFaceDetectionSimpleModeSupported:Z

.field private mIsFixedFocusLens:Z

.field private mIsHandGestureInVideoSupported:Z

.field private mIsLensDistortionCorrectionSupported:Z

.field private mIsMacroSupported:Z

.field private mIsNightScreenFlashSupported:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camCapability"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsFixedFocusLens:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsAfSupported:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsCafSupported:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsMacroSupported:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsAeRegionsSupported:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsAfRegionsSupported:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsFaceDetectionFullModeSupported:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsFaceDetectionSimpleModeSupported:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsLensDistortionCorrectionSupported:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsHandGestureInVideoSupported:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsNightScreenFlashSupported:Z

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->checkFixedFocusLens()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->checkAfMode()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->checkAfRegionsSupported()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->checkAeRegionsSupported()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->checkLensDistortionCorrectionMode()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->checkFaceDetectionMode()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->checkHandGestureTypes()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->checkNightScreenFlashSupported()V

    return-void
.end method

.method private checkAeRegionsSupported()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getControlMaxRegionsAe()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsAeRegionsSupported:Z

    :cond_0
    return-void
.end method

.method private checkAfMode()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getControlAfAvailableModes()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, v0, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const/4 v5, 0x4

    if-eq v3, v5, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsCafSupported:Z

    goto :goto_1

    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsMacroSupported:Z

    goto :goto_1

    :cond_2
    iput-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsAfSupported:Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private checkAfRegionsSupported()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getControlMaxRegionsAf()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsAfRegionsSupported:Z

    :cond_0
    return-void
.end method

.method private checkFaceDetectionMode()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getStatisticsInfoAvailableFaceDetectModes()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsFaceDetectionFullModeSupported:Z

    goto :goto_1

    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsFaceDetectionSimpleModeSupported:Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private checkFixedFocusLens()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensInfoMinimumFocusDistance()Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getControlMaxRegionsAf()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsFixedFocusLens:Z

    :cond_2
    return-void
.end method

.method private checkHandGestureTypes()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->isHandGestureSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlHandGestureAvailableTypes()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iput-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsHandGestureInVideoSupported:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private checkLensDistortionCorrectionMode()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlLensDistortionCorrectionAvailableModes()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsLensDistortionCorrectionSupported:Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkNightScreenFlashSupported()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getControlAeAvailableModes()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    const/16 v4, 0x68

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsNightScreenFlashSupported:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private getZoomListIndex(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomType"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not supported zoom type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 p0, 0x7

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x3

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    :pswitch_7
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dumpCapability()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->dumpCameraCharacteristics()V

    return-void
.end method

.method public getAeCompensationStep()Landroid/util/Rational;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getControlAeCompensationStep()Landroid/util/Rational;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableDualBokehFpsRange()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlSpecialFunctionsAvailableFpsRanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges;->getMode()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges;->getFps()Landroid/util/Range;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableEffectPreviewFpsRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlEffectAeAvailableTargetFpsRanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableEffectRecordingFpsRange(Landroid/util/Range;)Landroid/util/Range;
    .locals 4
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
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlEffectAeAvailableTargetFpsRanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p1, v2, :cond_3

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3
    :goto_1
    new-instance p0, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableJpegPictureSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableJpegPictureSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableJpegPictureSizes(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSensorCropEnabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSensorCropAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableJpegPictureSizes(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableJpegPictureSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableLensApertures()[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensInfoAvailableApertures()[F

    move-result-object p0

    return-object p0
.end method

.method public getAvailablePreviewSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailablePreviewSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAvailablePreviewSizes(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSensorCropEnabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSensorCropAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailablePreviewSizes(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailablePreviewSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableThumbnailSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableThumbnailSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHighSpeedRecordingTimeLimit(Landroid/util/Size;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolutionSize",
            "fps"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableHighSpeedVideoConfigurations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$HighSpeedVideoStreamConfig;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$HighSpeedVideoStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$HighSpeedVideoStreamConfig;->getFps()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$HighSpeedVideoStreamConfig;->getTimeLimit()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getHorizontalViewAngle(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewRatio"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungLensInfoHorizontalViewAngle(F)F

    move-result p0

    return p0
.end method

.method public getLensFacing()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensFacing()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLensInfoAvailableFocalLengths()[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensInfoAvailableFocalLengths()[F

    move-result-object p0

    return-object p0
.end method

.method public getLensInfoMinimumFocalDistance()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensInfoMinimumFocusDistance()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getMaxLensPosition()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensInfoFocusLensInfo()Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$FocusLensInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$FocusLensInfo;->getMaxLensPos()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMinLensPosition()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensInfoFocusLensInfo()Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$FocusLensInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$FocusLensInfo;->getMinLensPos()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getRecordingTimeLimit(Landroid/util/Size;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolutionSize",
            "fps"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableVideoConfigurations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->getFps()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->getTimeLimit()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getScalerAvailableMaxDigitalZoom(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomType"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->getZoomListIndex(I)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableMaxDigitalZoomList()[F

    move-result-object p0

    array-length v0, p0

    if-gt v0, p1, :cond_0

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    :cond_0
    aget p0, p0, p1

    return p0
.end method

.method public getScalerAvailableMinDigitalZoom(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomType"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->getZoomListIndex(I)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableMinDigitalZoomList()[F

    move-result-object p0

    array-length v0, p0

    if-gt v0, p1, :cond_0

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    :cond_0
    aget p0, p0, p1

    return p0
.end method

.method public getSensorInfoActiveArraySize()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoActiveArraySize(Z)Landroid/graphics/Rect;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSensorCropEnabled"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSensorCropAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicFovAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorInfoActiveArraySize(Ljava/lang/Integer;)Landroid/graphics/Rect;

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungSensorInfoExposureTimeRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoSensitivityRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungSensorInfoSensitivityRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoSensorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungSensorInfoSensorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getSensorOrientation()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorOrientation()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSuperSlowMotionImageCount(Landroid/util/Size;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolutionSize"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlSsmRecordableImageCount()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->getImageCount()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getVdisCropRatio(Landroid/util/Size;I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolutionSize",
            "fps"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableVideoConfigurations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->getFps()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->getVdisRatio()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getVerticalViewAngle(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewRatio"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungLensInfoVerticalViewAngle(F)F

    move-result p0

    return p0
.end method

.method public getWbLevelRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlWbLevelRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getZoomMapRatio()F
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerZoomMapRatio()Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public isAeAfLockSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsFixedFocusLens:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsAfSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsAfRegionsSupported:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsAeRegionsSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAfSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsAfSupported:Z

    return p0
.end method

.method public isBeautyFaceSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureBeautyFaceAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isBokehLightingSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureBokehRelightAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isBokehNightSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureBokehNightAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isBokehSpecialEffectSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureBokehSpecialEffectAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isBokehSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureBokehAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isCafSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsCafSupported:Z

    return p0
.end method

.method public isDepthSupported()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungDepthAvailableDepthSizes(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDynamicFovSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicFovAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isDynamicShotInfoSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicShotInfoAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEventFinderSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureEventFinderAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isFaceDetectionFullModeSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsFaceDetectionFullModeSupported:Z

    return p0
.end method

.method public isFaceDetectionSimpleModeSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsFaceDetectionSimpleModeSupported:Z

    return p0
.end method

.method public isFaceDetectionSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsFaceDetectionFullModeSupported:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsFaceDetectionSimpleModeSupported:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFilterRecordingUsingVideoMakerSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureVideoPreviewCb()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isFrontPhotoNightModeSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSupportLiteNightInSelfieMode()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isHandGestureInVideoSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsHandGestureInVideoSupported:Z

    return p0
.end method

.method public isHandGestureSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureHandGestureAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isHdr10RecordingAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureHDR10RecordingAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isLensDistortionCorrectionSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsLensDistortionCorrectionSupported:Z

    return p0
.end method

.method public isLiveHdrSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlLiveHdrAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isMacroSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsMacroSupported:Z

    return p0
.end method

.method public isMultiAfSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlMultiAfAvailableModes()[I

    move-result-object p0

    array-length p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNightScreenFlashSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsNightScreenFlashSupported:Z

    return p0
.end method

.method public isPhaseAfSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlPafAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isPreviewStabilizationSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeaturePhotoPreviewVdis()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isRequestPartialResultSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getRequestPartialResultAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSceneOptimizerSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSceneDetectInHal()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSecondPictureConfigSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSecondPictureConfigAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSelfieToneModeSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeaturePersonalPreset()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSensorCropSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSensorCropAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSingleTakeSecondPictureConfigSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSingleTakeSupportPartialCapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSmoothZoomSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSmoothZoomAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSubPreviewCallbackSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSubPreviewCbAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSuperSlowMotionFrcSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureFrcSsmAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSuperSlowMotionGmcSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSuperSlowMotionGmcAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSuperSlowMotionSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSuperSlowMotionAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSyncCancelSuperSlowMotionAutoDetectSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSuperSlowMotionNeedSyncCancelInAutoMode()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isTouchAeSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsAeRegionsSupported:Z

    return p0
.end method

.method public isTouchAfSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsFixedFocusLens:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsAfSupported:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mIsAfRegionsSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVariableLensApertureSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensInfoVariableLensApertureAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isVideoBeautyFaceSupported(Landroid/util/Size;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "fps"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureVideoBeautyFaceAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableVideoBeautyConfigurations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->getFps()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_2

    return v2

    :cond_3
    return v1
.end method

.method public isVideoBeautySnapshotSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureVideoBeautySnapNotSupport()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isVideoBokehEffectSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureVideoBokehAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isVideoResolutionSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableVideoConfigurations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->getFps()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMaxFps()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->getFps()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMinFps()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isZoomInOutPhotoSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZoomLockSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureZoomLockAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
