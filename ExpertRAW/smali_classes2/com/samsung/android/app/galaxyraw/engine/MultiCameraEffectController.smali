.class public Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;
.super Ljava/lang/Object;
.source "MultiCameraEffectController.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiCameraEffectController"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private mEffectMode:I

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field private mLatestPipRect:Landroid/graphics/RectF;

.field private mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

.field private final mSurfaceTextureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/SurfaceTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSurfaceTextureMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEffectMode:I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-void
.end method


# virtual methods
.method createProcessor(ILandroid/os/Handler;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectMode",
            "handler"
        }
    .end annotation

    const-string v0, "MultiCameraEffectController"

    const-string v1, "createProcessor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    if-eqz v1, :cond_0

    const-string p0, "createProcessor : returned because mSecMultiCameraProcessor is not null."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_USE_MULTIRECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DUAL_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEffectMode:I

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEffectMode:I

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getDisplayRotation()I

    move-result p1

    rem-int/2addr p1, v0

    if-ne p1, v1, :cond_3

    new-instance p1, Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, v0, v2, v1, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;-><init>(Landroid/content/Context;IILandroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, v0, v2, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;-><init>(Landroid/content/Context;ILandroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getIdList(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSurfaceTextureMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEffectMode:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->changeViewMode(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mLatestPipRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mLatestPipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mLatestPipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mLatestPipRect:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p0

    div-float/2addr v1, v0

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setPipRect(FF)V

    :cond_5
    return-void
.end method

.method destroyProcessor()V
    .locals 2

    const-string v0, "MultiCameraEffectController"

    const-string v1, "destroyProcessor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_USE_MULTIRECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DUAL_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setEffectProcessorListener(Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->stopProcessing()Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->release()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSurfaceTextureMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSurfaceTextureMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method isProcessorActivated()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCameraSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "prevValue",
            "nextValue"
        }
    .end annotation

    sget-object p2, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_3

    if-eq p3, v1, :cond_2

    goto :goto_0

    :cond_2
    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEffectMode:I

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEffectMode:I

    :goto_0
    iget p2, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEffectMode:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->changeViewMode(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mLatestPipRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_b

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mLatestPipRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, p3

    div-float/2addr p1, v0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mLatestPipRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mLatestPipRect:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p3, p0

    div-float/2addr p3, v0

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setPipRect(FF)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    if-eqz p1, :cond_6

    if-nez p3, :cond_5

    goto :goto_1

    :cond_5
    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEffectMode:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->changeViewMode(I)V

    goto :goto_3

    :cond_6
    :goto_1
    return-void

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    if-nez p1, :cond_8

    return-void

    :cond_8
    if-eqz p3, :cond_a

    if-eq p3, v1, :cond_9

    goto :goto_2

    :cond_9
    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEffectMode:I

    goto :goto_2

    :cond_a
    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEffectMode:I

    :goto_2
    iget p2, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEffectMode:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->changeViewMode(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mLatestPipRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_b

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mLatestPipRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, p3

    div-float/2addr p1, v0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mLatestPipRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mLatestPipRect:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p3, p0

    div-float/2addr p3, v0

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setPipRect(FF)V

    :cond_b
    :goto_3
    return-void
.end method

.method setPipRectPosition(Landroid/graphics/RectF;F)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rect",
            "scaleFactor"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->isProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    div-float/2addr v2, v0

    iget v3, p1, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v4, v0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p1, v0

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p1, v1, Landroid/graphics/RectF;->right:F

    iget v0, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v0

    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    iget v2, v1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, p2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v3, p2

    iget v4, v1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, p2

    sub-float/2addr v3, v4

    sub-float/2addr v2, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v2, p2

    sub-float v4, v3, v0

    div-float/2addr v4, p2

    new-instance v5, Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v2

    iget v7, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v4

    iget v8, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v2

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v4

    invoke-direct {v5, v6, v7, v8, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mLatestPipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    div-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v3, v0, v0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setPipInfo(FFFF)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget p1, v5, Landroid/graphics/RectF;->left:F

    iget v0, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, v0

    div-float/2addr p1, p2

    iget v0, v5, Landroid/graphics/RectF;->top:F

    iget v1, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setPipRect(FF)V

    :cond_0
    return-void
.end method

.method setRecordingSurface(Landroid/view/Surface;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordingSurface"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->isProcessorActivated()Z

    move-result v0

    const-string v1, "MultiCameraEffectController"

    if-nez v0, :cond_0

    const-string p0, "setRecordingSurface : Returned because multi camera processor is not activated."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "setRecordingSurface"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setRecordingSurface(Landroid/view/Surface;)V

    return-void
.end method

.method startProcessor(Landroid/view/Surface;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputSurface"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->isProcessorActivated()Z

    move-result v0

    const-string v1, "MultiCameraEffectController"

    if-nez v0, :cond_0

    const-string p0, "startProcessor : Returned, because multi camera effect processor is not activated."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "startProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->initialize()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setCameraMode(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getIdList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v5, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing(I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSurfaceTextureMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/SurfaceTexture;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v4, v5, v1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setInputSurfaceWithId(Landroid/graphics/SurfaceTexture;II)V

    move v1, v7

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setOutputSurface(Landroid/view/Surface;I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    invoke-virtual {p1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->startProcessing()Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mEffectMode:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->changeViewMode(I)V

    return-void
.end method

.method switchFacing()V
    .locals 2

    const-string v0, "MultiCameraEffectController"

    const-string v1, "switchFacing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    invoke-virtual {p0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->frontRearSwitch()V

    return-void
.end method
