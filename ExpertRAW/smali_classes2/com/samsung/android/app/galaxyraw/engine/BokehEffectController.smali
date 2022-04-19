.class Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;
.super Ljava/lang/Object;
.source "BokehEffectController.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BokehEffectController"


# instance fields
.field private mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field private final mSettingConsumerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Ljava/util/function/BiConsumer<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;",
            "Ljava/lang/Integer;",
            ">;>;"
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

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mSettingConsumerMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->setVideoBokehEffectLevel(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->updateVideoBokehEffect()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->setSingleBokehEffectLevel(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->setSingleBokehLightingLevel(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->updateSingleBokehEffect()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->setDualBokehEffectLevel(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->setDualBokehLightingLevel(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->updateDualBokehEffect()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->setBokehLensEffect(I)V

    return-void
.end method

.method static synthetic lambda$setBlurEffectLevel$2(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BOKEH_BLUR_STRENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BOKEH_BLUR_STRENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setDualBokehEffectLevel$3(IILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BOKEH_SPECIAL_EFFECT_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    const/4 v4, 0x1

    aput p1, v2, v4

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BOKEH_SPECIAL_EFFECT_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v1, v1, [I

    aput p0, v1, v3

    aput p1, v1, v4

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v4

    :cond_0
    return v3
.end method

.method static synthetic lambda$setDualBokehLightingLevel$4(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BOKEH_RELIGHT_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BOKEH_RELIGHT_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setVideoBokehEffectLevel$5(IILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BOKEH_SPECIAL_EFFECT_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    const/4 v4, 0x1

    aput p1, v2, v4

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BOKEH_SPECIAL_EFFECT_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v1, v1, [I

    aput p0, v1, v3

    aput p1, v1, v4

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v4

    :cond_0
    return v3
.end method

.method private registerCameraSettingChangedListener()V
    .locals 2

    const-string v0, "BokehEffectController"

    const-string v1, "registerCameraSettingChangedListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mSettingConsumerMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$4EIKoBBvkTgUMXxzSZ9UvpTE9Dc;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$4EIKoBBvkTgUMXxzSZ9UvpTE9Dc;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private setBlurEffectLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBlurEffectLevel : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BokehEffectController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isBokehSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "setBlurEffectLevel : Returned because it is not supported current device."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$joA6AQu7BbReaq9tcrfwenWTaos;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$joA6AQu7BbReaq9tcrfwenWTaos;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private setBokehLensEffect(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DUAL_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->setDualBokehEffectLevel(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->setBlurEffectLevel(I)V

    :goto_0
    return-void
.end method

.method private setDualBokehEffectLevel(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->getDualBokehEffectTypeMetadata(I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDualBokehEffectLevel - type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BokehEffectController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isBokehSpecialEffectSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "setDualBokehEffectLevel : Returned because it is not supported current device."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$XjqB8840ZN_lFgPt6c1Aoa3jDTA;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$XjqB8840ZN_lFgPt6c1Aoa3jDTA;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private setDualBokehLightingLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDualBokehLightingLevel - level : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BokehEffectController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isBokehLightingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "setDualBokehLightingLevel : Returned because it is not supported current device."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$AqZy0D5k0e9z4xIm0crxDvZrN30;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$AqZy0D5k0e9z4xIm0crxDvZrN30;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private setSingleBokehEffectLevel(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "level"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->getSingleBokehEffectTypeMetadata(I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSingleBokehEffectLevel - type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " level : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BokehEffectController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->SINGLE_BOKEH_SPECIAL_EFFECT_INFO:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method private setSingleBokehLightingLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSingleBokehLightingLevel - level : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BokehEffectController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->SINGLE_BOKEH_RELIGHT_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method private setVideoBokehEffectLevel(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->getVideoBokehEffectTypeMetadata(I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoBokehEffectLevel - type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BokehEffectController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isVideoBokehEffectSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "setVideoBokehEffectLevel : Returned because it is not supported current device."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$e82KOXUhLXJHp_1lvF60DZ4aSW8;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$e82KOXUhLXJHp_1lvF60DZ4aSW8;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private unregisterCameraSettingChangedListener()V
    .locals 2

    const-string v0, "BokehEffectController"

    const-string v1, "unregisterCameraSettingChangedListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mSettingConsumerMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$DesZ4897K-Ofgvx-PjnmovwDVko;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$DesZ4897K-Ofgvx-PjnmovwDVko;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private updateDualBokehEffect()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->getDualBokehEffectLevelSettingKey(II)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DUAL_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->setDualBokehEffectLevel(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->setBlurEffectLevel(I)V

    :goto_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PORTRAIT_LIGHTING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->getDualBokehLightingLevelSettingKey(II)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->setDualBokehLightingLevel(I)V

    :cond_1
    return-void
.end method

.method private updateSingleBokehEffect()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getSingleBokehEffectType()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->getSingleBokehEffectLevelSettingKey(I)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->setSingleBokehEffectLevel(II)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PORTRAIT_LIGHTING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->getSingleBokehLightingLevelSettingKey(I)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->setSingleBokehLightingLevel(I)V

    :cond_0
    return-void
.end method

.method private updateVideoBokehEffect()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->getVideoBokehEffectLevelSettingKey(II)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->setVideoBokehEffectLevel(II)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCameraSettingChanged$0$BokehEffectController(ILjava/util/function/BiConsumer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$registerCameraSettingChangedListener$1$BokehEffectController(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Ljava/util/function/BiConsumer;)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public synthetic lambda$unregisterCameraSettingChangedListener$6$BokehEffectController(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Ljava/util/function/BiConsumer;)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public onCameraSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V
    .locals 1
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

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onCameraSettingChanged : key="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", value="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BokehEffectController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mSettingConsumerMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/BiConsumer;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$ihiNMZkLJXZaJoYYObJ_Gs8XM5s;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$ihiNMZkLJXZaJoYYObJ_Gs8XM5s;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 0

    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 2

    const-string v0, "BokehEffectController"

    const-string v1, "onStartPreviewRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$ShootingModeFeature$SupportedBokehEffectType:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->updateVideoBokehEffect()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->updateSingleBokehEffect()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->updateDualBokehEffect()V

    :goto_0
    return-void
.end method

.method start()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->registerPreviewEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->registerCameraSettingChangedListener()V

    return-void
.end method

.method stop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->unregisterPreviewEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->unregisterCameraSettingChangedListener()V

    return-void
.end method
