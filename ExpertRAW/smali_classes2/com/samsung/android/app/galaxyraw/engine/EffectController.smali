.class Lcom/samsung/android/app/galaxyraw/engine/EffectController;
.super Ljava/lang/Object;
.source "EffectController.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field private static final EFFECT_PROCESSOR_MSG_SNAP_IMAGE:I = 0x3

.field private static final EFFECT_PROCESSOR_MSG_STILL_IMAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EffectController"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field private mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

.field private final mSecEffectProcessorListener:Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;

.field private mSecEffectProcessorMode:I

.field private final mSettingChangedListenerKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessorMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;-><init>(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessorListener:Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->initializeSettingChangedListenerKey()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-object p0
.end method

.method private enableFilterBypass(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setFilterIntensityLevel(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessorMode:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoMyFilterIntensityLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setMyFilterEffect(II)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoMyFilter()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoMyFilterIntensityLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setMyFilterEffect(II)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoFilter()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoFilterIntensityLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setFilterEffect(II)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoFilter()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoFilterIntensityLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setFilterEffect(II)V

    :goto_0
    return-void
.end method

.method private initializeSettingChangedListenerKey()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BEAUTY_FILTER_EFFECT_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isValidFacing(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    if-nez p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :pswitch_1
    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isValidMode(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessorMode:I

    const/4 p1, 0x7

    if-ne p0, p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :pswitch_1
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessorMode:I

    const/4 p1, 0x6

    if-ne p0, p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :pswitch_2
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessorMode:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    move v0, v1

    :cond_2
    return v0

    :pswitch_3
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessorMode:I

    if-ne p0, v1, :cond_3

    move v0, v1

    :cond_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidTab()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPlugInFilterManager()Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPlugInFilterManager()Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;->getCurrentFilterTab()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessorMode:I

    const/4 v3, 0x7

    if-eq p0, v3, :cond_0

    const/4 v3, 0x6

    if-eq p0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessorMode:I

    const/4 v3, 0x2

    if-eq p0, v3, :cond_0

    if-eq p0, v1, :cond_0

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidTab is false : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EffectController"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method private setEffectProcessorParameter(ILjava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "object",
            "arg1",
            "arg2"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffectParameter(ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "EffectController"

    const-string p1, "mSecEffectProcessor is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setEffectProcessorParameter(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "data"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffectParameter(I[B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "EffectController"

    const-string p1, "mSecEffectProcessor is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setEffectProcessorParameter(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffectParameter(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "EffectController"

    const-string p1, "mSecEffectProcessor is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setFilter(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterId"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFilter : filterId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "setFilter : Returned, because EffectProcessor is not activated."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0x64

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setFilterForProcessingPicture(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    const/16 p1, 0x190

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffect(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPlugInFilterManager()Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;->isFilterLoaded(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->getFilterNameByFilterId(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, v1}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->getFilterPackageNameByFilterId(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setFilterForProcessingPicture(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->getFilterForSet(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffect(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setFilterEffect(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filterId",
            "intensity"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setFilter(I)V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setFilterIntensityLevel(I)V

    return-void
.end method

.method private setFilterForProcessingPicture(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "filterMode",
            "filterName",
            "filterPackageName"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->FILTER_MODE:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->FILTER_ID:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method private setFilterIntensityLevel(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->FILTER_INTENSITY:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int/lit8 p1, p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setEffectProcessorParameter(Ljava/lang/String;)V

    return-void
.end method

.method private setFpsParam()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->is60FpsCamcorderResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    const-string v0, "processor,fps=60"

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setProcessorParameter(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setMyFilter(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "myFilterId"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMyFilter : myFilterId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    const-string p0, "setMyFilter : Returned because create my filter is not my filter set id."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "setMyFilter : Returned because EffectProcessor is not activated."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v0, 0x66

    const/4 v1, 0x0

    if-nez p1, :cond_2

    invoke-direct {p0, v0, v1, v1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setFilterForProcessingPicture(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    const/16 p1, 0x190

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffect(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x2712

    if-ne p1, v2, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    const-string p1, "[TEMP]my_filter_preview.sel"

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffect(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPlugInFilterManager()Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;->MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;->isFilterLoaded(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, v2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage;->getFilterNameByFilterId(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, v1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setFilterForProcessingPicture(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage;->getMyFilterForSet(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffect(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setMyFilterEffect(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filterId",
            "intensity"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->FILTER_INTENSITY:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setMyFilter(I)V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setFilterIntensityLevel(I)V

    return-void
.end method

.method private setSaveAsFlipped(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setSaveAsFlipped(I)V

    return-void
.end method


# virtual methods
.method createEffectProcessor(IILandroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "effectProcessorMode",
            "displayRotation",
            "handler"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createEffectProcessor - mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Rotation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    if-eqz v0, :cond_0

    const-string p0, "createEffectProcessor : returned because mSecEffectProcessor is not null."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessorMode:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    rem-int/lit8 p2, p2, 0x2

    if-ne p2, v0, :cond_1

    new-instance p1, Lcom/samsung/android/camera/effect/SecEffectProcessor;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p2, v1, v0, p3}, Lcom/samsung/android/camera/effect/SecEffectProcessor;-><init>(Landroid/content/Context;IILandroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/camera/effect/SecEffectProcessor;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p2, v1, p3}, Lcom/samsung/android/camera/effect/SecEffectProcessor;-><init>(Landroid/content/Context;ILandroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessorListener:Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffectProcessorListener(Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;)V

    new-instance p1, Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    return-void
.end method

.method destroyEffectProcessor()V
    .locals 2

    const-string v0, "EffectController"

    const-string v1, "destroyEffectProcessor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffectProcessorListener(Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->stopProcessing()Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->release()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessorMode:I

    return-void
.end method

.method getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method isEffectProcessorActivated()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isEffectProcessorRequired()Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessorMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isEffectProcessorTakePictureRequired()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POST_PICTURE_PROCESSING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessorMode:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessorMode:I

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public synthetic lambda$start$0$EffectController(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public synthetic lambda$stop$1$EffectController(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isEffectProcessorActivated()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCameraSettingChanged : key="

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

    const-string v0, "EffectController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isValidMode(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isValidFacing(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isValidTab()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    sget-object p2, Lcom/samsung/android/app/galaxyraw/engine/EffectController$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-nez p3, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->enableFilterBypass(Z)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setSaveAsFlipped(I)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setFilterIntensityLevel(I)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoMyFilterIntensityLevel()I

    move-result p1

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setMyFilterEffect(II)V

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoMyFilterIntensityLevel()I

    move-result p1

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setMyFilterEffect(II)V

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoFilterIntensityLevel()I

    move-result p1

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setFilterEffect(II)V

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoFilterIntensityLevel()I

    move-result p1

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setFilterEffect(II)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCameraSettingChanged : Return because it is invalid condition, key="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setEffectParameter(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setEffectProcessorParameter(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    const-string v1, "EffectController"

    if-nez v0, :cond_0

    const-string p0, "setRecordingSurface : Returned, because EffectProcessor is not activated."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "setRecordingSurface"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setRecordingSurface(Landroid/view/Surface;)V

    return-void
.end method

.method start()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$EffectController$EZl0R2L2D92ZH6lqHN4URHp9F70;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$EffectController$EZl0R2L2D92ZH6lqHN4URHp9F70;-><init>(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method startEffectProcessor(Landroid/view/Surface;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputSurface"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    const-string v1, "EffectController"

    if-nez v0, :cond_0

    const-string p0, "startEffectProcessor : Returned, because EffectProcessor is not activated."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "startEffectProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->initialize()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setInputSurface(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setOutputSurface(Landroid/view/Surface;I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setCameraMode(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setSaveAsFlipped(I)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->startProcessing()Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setFpsParam()V

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessorMode:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoMyFilterIntensityLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setMyFilterEffect(II)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoMyFilter()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoMyFilterIntensityLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setMyFilterEffect(II)V

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    const/16 p1, 0x1c2

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffect(I)V

    goto :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    const/16 p1, 0x1a9

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffect(I)V

    goto :goto_1

    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    const/16 p1, 0x1bf

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffect(I)V

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoFilter()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoFilterIntensityLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setFilterEffect(II)V

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoFilter()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoFilterIntensityLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setFilterEffect(II)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method stop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$EffectController$PDHcYxtJaFWeuI4Yx_UkLc_sTQQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$EffectController$PDHcYxtJaFWeuI4Yx_UkLc_sTQQ;-><init>(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method takePicture(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pictureData"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    const-string v1, "EffectController"

    if-nez v0, :cond_0

    const-string p0, "takePicture : Returned, because EffectProcessor is not activated."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "takePicture"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->takepicture(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method takePreviewSnapshot()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    const-string v1, "EffectController"

    if-nez v0, :cond_0

    const-string p0, "takePreviewSnapshot : Returned, because EffectProcessor is not activated."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "takePreviewSnapshot"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {p0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->snapshot()V

    return-void
.end method
