.class public Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;
.super Ljava/lang/Object;
.source "ShootingModeFeatureProviderImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SMFeatureProvider"


# instance fields
.field private mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

.field private mCurrentShootingModeId:I

.field private mShootingModeFeatureList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final mShootingModeFeatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl$1;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureMap:Ljava/util/Map;

    return-void
.end method

.method private clearInactiveShootingModeFeature()V
    .locals 5

    const-string v0, "SMFeatureProvider"

    const-string v1, "clearInactiveShootingModeFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCameraId(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "lensType"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getCameraId(II)I

    move-result p0

    return p0
.end method

.method public getFixedOrientationForCapture()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getFixedOrientationForCapture()I

    move-result p0

    return p0
.end method

.method public getMediaRecorderProfile(I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getMediaRecorderProfile(I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getPreviewResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewTopGuideLine()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getPreviewTopGuideLine()F

    move-result p0

    return p0
.end method

.method public getSupportedBokehEffectType()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedFaceDetectionMode(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFaceDetectionMode(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedNightType()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedNightType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedNightType()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedNightType;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedTouchEvType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedTouchEvType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedTouchEvType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedTouchEvType;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedZoomType()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedZoomType()I

    move-result p0

    return p0
.end method

.method public isAeAfLockSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAeAfLockSupported(I)Z

    move-result p0

    return p0
.end method

.method public isAeAwbLockRequired(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAeAwbLockRequired(I)Z

    move-result p0

    return p0
.end method

.method public isAeLockRequired(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAeLockRequired(I)Z

    move-result p0

    return p0
.end method

.method public isAgifBurstCaptureSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAgifBurstCaptureSupported(I)Z

    move-result p0

    return p0
.end method

.method public isAngleChangeSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAngleChangeSupported(I)Z

    move-result p0

    return p0
.end method

.method public isAudioInputControlSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAudioInputControlSupported()Z

    move-result p0

    return p0
.end method

.method public isBeautyFaceSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isBeautyFaceSupported(I)Z

    move-result p0

    return p0
.end method

.method public isBurstCaptureSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isBurstCaptureSupported(I)Z

    move-result p0

    return p0
.end method

.method public isDivideAeAfSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isDivideAeAfSupported(I)Z

    move-result p0

    return p0
.end method

.method public isEffectSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isEffectSupported(I)Z

    move-result p0

    return p0
.end method

.method public isFloatingCameraButtonSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isFloatingCameraButtonSupported()Z

    move-result p0

    return p0
.end method

.method public isFocusGuideSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isFocusGuideSupported()Z

    move-result p0

    return p0
.end method

.method public isHistogramSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isHistogramSupported(I)Z

    move-result p0

    return p0
.end method

.method public isInclinometerSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isInclinometerSupported()Z

    move-result p0

    return p0
.end method

.method public isLevelMeterSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isLevelMeterSupported()Z

    move-result p0

    return p0
.end method

.method public isLiveHdrSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isLiveHdrSupported(I)Z

    move-result p0

    return p0
.end method

.method public isLowLightDetectionSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isLowLightDetectionSupported(I)Z

    move-result p0

    return p0
.end method

.method public isMotionPhotoSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isMotionPhotoSupported()Z

    move-result p0

    return p0
.end method

.method public isPalmDetectionSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isPalmDetectionSupported(I)Z

    move-result p0

    return p0
.end method

.method public isQuickTakeSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isQuickTakeSupported()Z

    move-result p0

    return p0
.end method

.method public isRecordingMode()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    return p0
.end method

.method public isRecordingSnapshotSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingSnapshotSupported()Z

    move-result p0

    return p0
.end method

.method public isRecordingSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingSupported()Z

    move-result p0

    return p0
.end method

.method public isReviewSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isReviewSupported()Z

    move-result p0

    return p0
.end method

.method public isSingleAfRequired(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isSingleAfRequired(I)Z

    move-result p0

    return p0
.end method

.method public isSingleTakePictureSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isSingleTakePictureSupported()Z

    move-result p0

    return p0
.end method

.method public isSuperResolutionSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isSuperResolutionSupported(I)Z

    move-result p0

    return p0
.end method

.method public isSwitchFacingWhileRecordingSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isSwitchFacingWhileRecordingSupported()Z

    move-result p0

    return p0
.end method

.method public isTakingPictureSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isTakingPictureSupported()Z

    move-result p0

    return p0
.end method

.method public isTakingPostProcessingPictureSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isTakingPostProcessingPictureSupported()Z

    move-result p0

    return p0
.end method

.method public isTouchAeSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isTouchAeSupported(I)Z

    move-result p0

    return p0
.end method

.method public isTrackingAfSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isTrackingAfSupported(I)Z

    move-result p0

    return p0
.end method

.method public isWatchModeSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isWatchModeSupported()Z

    move-result p0

    return p0
.end method

.method public isZoomBarSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isZoomBarSupported(I)Z

    move-result p0

    return p0
.end method

.method public isZoomInMicSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isZoomInMicSupported(I)Z

    move-result p0

    return p0
.end method

.method public isZoomSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isZoomSupported(I)Z

    move-result p0

    return p0
.end method

.method public onLowMemory(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->clearInactiveShootingModeFeature()V

    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->clearInactiveShootingModeFeature()V

    return-void
.end method

.method public setShootingMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootingModeId"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShootingMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMFeatureProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;->build()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I

    :cond_1
    return-void
.end method
