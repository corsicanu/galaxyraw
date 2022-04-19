.class Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;
.super Ljava/lang/Object;
.source "PreviewLayoutManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewManager"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private mLastDexCameraOrientation:I

.field private final mPreviewLayoutChangedListenerLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager$PreviewLayoutChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewLayoutChangedRunnable:Ljava/lang/Runnable;

.field private final mPreviewView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "engine",
            "previewView"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewLayoutChangedListenerLists:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$PreviewLayoutManagerImpl$KC7kk-xIXS2b6b2MQEBKksMDGsw;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$PreviewLayoutManagerImpl$KC7kk-xIXS2b6b2MQEBKksMDGsw;-><init>(Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewLayoutChangedRunnable:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mLastDexCameraOrientation:I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewView:Landroid/view/View;

    return-object p0
.end method

.method private calculatePreviewLayoutRect(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Landroid/graphics/Rect;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PREVIEW_FIT_TO_FULL_SCREEN:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isWideResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIEW_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->FULL_SCREEN_PREVIEW_HEIGHT:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result p1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->FULL_SCREEN_PREVIEW_WIDTH:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getHeight()I

    move-result p1

    invoke-static {v2, p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->getRepresentativePreviewAspectRatio(II)D

    move-result-wide v2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->getResizablePreviewLayoutRect(IID)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_3
    if-le v1, v0, :cond_4

    move v11, v1

    move v1, v0

    move v0, v11

    :cond_4
    int-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-int p1, v4

    if-le p1, v0, :cond_5

    int-to-double v4, v0

    div-double/2addr v4, v2

    double-to-int p1, v4

    move v2, v0

    goto :goto_2

    :cond_5
    move v2, p1

    move p1, v1

    :goto_2
    invoke-static {p1, v2}, Lcom/samsung/android/app/galaxyraw/util/Util;->getAspectRatio(II)D

    move-result-wide v3

    sub-int v5, v1, p1

    div-int/lit8 v5, v5, 0x2

    if-ne v0, v2, :cond_6

    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    int-to-float v6, v0

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getPreviewTopGuideLine()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calculatePreviewLayoutRect"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", x="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", y="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", w="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", window w="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", windowRatio="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->getAspectRatio(II)D

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getDisplayRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getDisplayRotation()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PreviewManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/graphics/Rect;

    add-int/2addr p1, v5

    add-int/2addr v2, v6

    invoke-direct {p0, v5, v6, p1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private calculatePreviewSurfaceSize(Landroid/graphics/Rect;)Landroid/util/Size;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewLayoutRect"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->getAspectRatio(II)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->getAspectRatioType(D)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getRepresentativePreviewSize(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isSensorCropEnabled()Z

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getAvailablePreviewSizes(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported preview size!("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PreviewManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v4, v0

    invoke-static {p0, p1, v4, v5}, Lcom/samsung/android/app/galaxyraw/util/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/util/Size;

    move-result-object v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Changed to optimal preview size!("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private changePreviewLayoutSize(Landroid/graphics/Rect;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previewRect",
            "resizableMode"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->setPreviewLayout(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->getBlackAreaRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->startAreaAnimation(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewLayoutChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewLayoutChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "PreviewManager"

    const-string p1, "changePreviewLayoutSize : ignore this case because preview rect is same"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private changePreviewSurfaceSize(Landroid/graphics/Rect;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewLayoutRect"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->setPreviewLayout(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->getBlackAreaRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->changeExtraPreviewSurfaceSize()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->startAreaAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewLayoutChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewLayoutChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getBlackAreaRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mLastDexCameraOrientation:I

    new-instance v1, Landroid/util/Size;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result p0

    invoke-direct {v1, v2, p0}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->getRotatedPreviewRect(ILandroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getPreviewLayoutRect(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Landroid/graphics/Rect;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getPreviewResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->calculatePreviewLayoutRect(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->calculatePreviewLayoutRect(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getPreviewSurfaceSize(Landroid/graphics/Rect;)Landroid/util/Size;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewLayoutRect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getPreviewResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->calculatePreviewSurfaceSize(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method private getResizablePreviewLayoutRect(IID)Landroid/graphics/Rect;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenWidth",
            "screenHeight",
            "previewAspectRatio"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->isLandScape()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-le p1, p2, :cond_1

    int-to-double v0, p2

    mul-double/2addr v0, p3

    double-to-int v0, v0

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p3, p2

    goto :goto_2

    :cond_1
    :goto_0
    int-to-double v0, p1

    div-double/2addr v0, p3

    double-to-int p3, v0

    move v0, p1

    goto :goto_2

    :cond_2
    int-to-double v0, p1

    div-double/2addr v0, p3

    double-to-int v0, v0

    if-le v0, p2, :cond_4

    int-to-double v0, p2

    mul-double/2addr v0, p3

    goto :goto_1

    :cond_3
    int-to-double v0, p1

    mul-double/2addr v0, p3

    double-to-int v0, v0

    if-le v0, p2, :cond_4

    int-to-double v0, p2

    div-double/2addr v0, p3

    :goto_1
    double-to-int p3, v0

    move v0, p2

    goto :goto_2

    :cond_4
    move p3, p1

    :goto_2
    sub-int p4, p1, p3

    div-int/lit8 p4, p4, 0x2

    sub-int v1, p2, v0

    div-int/lit8 v1, v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResizablePreviewRect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", window w="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", windowRatio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->getAspectRatio(II)D

    move-result-wide p1

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", isLandScape="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->isLandScape()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreviewManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/graphics/Rect;

    add-int/2addr p3, p4

    add-int/2addr v0, v1

    invoke-direct {p0, p4, v1, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private isChangeFixedSurfaceSizeRequired(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentPreviewLayoutRect",
            "requestPreviewLayoutRect",
            "fixedPreviewSize"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p2

    return p0
.end method

.method private isLandScape()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mLastDexCameraOrientation:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getDisplayRotation()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getDisplayRotation()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public static synthetic lambda$KC7kk-xIXS2b6b2MQEBKksMDGsw(Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->notifyPreviewLayoutChangedEvent()V

    return-void
.end method

.method private notifyPreviewLayoutChangedEvent()V
    .locals 2

    const-string v0, "PreviewManager"

    const-string v1, "notifyPreviewLayoutChangedEvent : start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewLayoutChangedListenerLists:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$JT_sUZ58BQW_ymVZzUhrJ49rNr8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/-$$Lambda$JT_sUZ58BQW_ymVZzUhrJ49rNr8;

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const-string p0, "notifyPreviewLayoutChangedEvent : end"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setPreviewLayout(Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl$1;-><init>(Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public changePreviewSurfaceSize(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->getPreviewLayoutRect(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->getPreviewSurfaceSize(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->isChangeFixedSurfaceSizeRequired(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;)Z

    move-result v2

    const-string v3, "PreviewManager"

    if-nez v2, :cond_1

    const-string p1, "onChangeSurfaceSizeRequested : ignore this case because preview rect and size are the same with previous one."

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->setFixedSurfaceSize(II)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->notifyChangePreviewSurfaceSize()V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChangeSurfaceSizeRequested : fixed preview size - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->setFixedSurfaceSize(II)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->changePreviewSurfaceSize(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->isLandScape()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/util/Size;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/16 v2, 0x5a

    invoke-static {v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->getRotatedPreviewRect(ILandroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->notifyChangePreviewSurfaceSize()V

    return-void
.end method

.method public changeSurfaceVisibility(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getPreviewLayoutRect()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mLastDexCameraOrientation:I

    new-instance v2, Landroid/util/Size;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result p0

    invoke-direct {v2, v3, p0}, Landroid/util/Size;-><init>(II)V

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->getRotatedPreviewRect(ILandroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResizablePreviewOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mLastDexCameraOrientation:I

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getDisplayRotation()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->convertDisplayRotationToCameraOrientation(I)I

    move-result p0

    return p0
.end method

.method public registerPreviewLayoutChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager$PreviewLayoutChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewLayoutChangedListenerLists:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public unregisterPreviewLayoutChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager$PreviewLayoutChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewLayoutChangedListenerLists:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateDexCameraOrientation(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mLastDexCameraOrientation:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->updatePreviewLayoutSize(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mPreviewView:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public updatePreviewLayoutSize(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->calculatePreviewLayoutRect(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->changePreviewLayoutSize(Landroid/graphics/Rect;Z)V

    return-void
.end method
