.class Lcom/samsung/android/app/galaxyraw/engine/BeautyController;
.super Ljava/lang/Object;
.source "BeautyController.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BeautyController"


# instance fields
.field private mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-void
.end method

.method private enableBeautyBypass(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableBeautyBypass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->ENABLE_BEAUTY_BYPASS:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method private enableSmartBeauty(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSmartBeauty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->ENABLE_SMART_BEAUTY:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method private initializePhotoBeauty()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;->DUAL_BOKEH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_LIVE_FOCUS_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setLiveFocusSkinToneLevel(I)V

    goto/16 :goto_4

    :cond_2
    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;->SINGLE_BOKEH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    if-ne v3, v4, :cond_5

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SELFIE_TONE_V2_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_V2_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getSelfieToneBeautyMode(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getSelfieToneBeautyMode(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_FOCUS_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setSkinToneLevel(I)V

    goto/16 :goto_4

    :cond_5
    sget-object v3, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_BEAUTY_WITH_RESHAPE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_RESHAPE_AUTO_SUPPORT:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    :cond_6
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->ENABLE_BEAUTY_STR:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SELFIE_TONE_V2_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_V2_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getSelfieToneBeautyMode(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getSelfieToneBeautyMode(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_8

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->enableSmartBeauty(Z)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_SMART_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_SMART_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;I)V

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setBeautyEffectIgnore(Z)V

    :cond_9
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getManualBeautyLevelSettingKeyList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$Fo0AGzfOjAnn2KitQ3YccZIlzsg;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$Fo0AGzfOjAnn2KitQ3YccZIlzsg;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BeautyController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->ENABLE_BEAUTY_STR:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v4, v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v4

    if-eqz v4, :cond_b

    move v1, v2

    :cond_b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getManualBeautyLevelSettingKeyList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setPhotoBodyBeautyLevel(Ljava/util/ArrayList;)V

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_d

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->enableSmartBeauty(Z)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_SMART_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_SMART_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;I)V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setBeautyEffectIgnore(Z)V

    :cond_e
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getManualBeautyLevelSettingKeyList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$fO5twcizVDjwSvx5RTVp1yunXVM;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$fO5twcizVDjwSvx5RTVp1yunXVM;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BeautyController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :goto_4
    return-void
.end method

.method private initializeVideoBeauty()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;->NOT_SUPPORTED:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    if-eq v1, v2, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_LIVE_FOCUS_VIDEO_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_VIDEO_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setLiveFocusVideoSkinToneLevel(I)V

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getManualBeautyLevelSettingKeyList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setVideoBodyBeautyLevel(Ljava/util/ArrayList;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoBeautyLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setVideoSkinToneLevel(I)V

    :goto_2
    return-void
.end method

.method private isBeautyFaceAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isBeautyFaceSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isPhotoBodyBeautyLevelEnabled()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getBackPhotoBodyBeautyType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_WHOLE_BODY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_HEAD_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_SHOULDERS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_WAIST_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_HIPS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_LEGS_THICKNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_LEGS_LENGTH_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-lez p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method static synthetic lambda$setLiveFocusSkinToneLevel$2(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BEAUTY_FACE_RETOUCH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BEAUTY_FACE_RETOUCH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setLiveFocusVideoSkinToneLevel$3(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BEAUTY_FACE_RETOUCH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BEAUTY_FACE_RETOUCH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setVideoBodyBeautyLevel$5([ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BODY_BEAUTY_PARAMETERS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BODY_BEAUTY_PARAMETERS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setVideoSkinToneLevel$6(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BEAUTY_FACE_RETOUCH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BEAUTY_FACE_RETOUCH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private registerCameraSettingChangedListener()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getAllBeautySettingKeyList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BEAUTY_FILTER_EFFECT_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private setBeautyEffectIgnore(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBeautyEffectIgnore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_EFFECT_IGNORE:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method private setBeautyLevel(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "level"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBeautyLevel : key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method private setLiveFocusSkinToneLevel(I)V
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

    const-string v1, "setLiveFocusSkinToneLevel : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isBeautyFaceSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "setLiveFocusSkinToneLevel : Returned because it is not supported current device."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$D5nq_d7-dc_rXnBjhwuqC1NcSr8;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$D5nq_d7-dc_rXnBjhwuqC1NcSr8;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private setLiveFocusVideoSkinToneLevel(I)V
    .locals 3
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

    const-string v1, "setLiveFocusVideoSkinToneLevel : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->isVideoBeautyFaceSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "setLiveFocusVideoSkinToneLevel : Returned because it is not supported current device."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$eorfJPEfwh3o5A88TIimPejjxbk;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$eorfJPEfwh3o5A88TIimPejjxbk;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private setPhotoBodyBeautyLevel(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bodyBeautySettingKeyList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getBackPhotoBodyBeautyType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPhotoBodyBeautyLevel "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BeautyController"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$DfrVK-To--C2xFLIZx7HUjgOnEs;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$DfrVK-To--C2xFLIZx7HUjgOnEs;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BeautyController;[I)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private setVideoBodyBeautyLevel(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bodyBeautySettingKeyList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getBackVideoBodyBeautyType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setVideoBodyBeautyLevel "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BeautyController"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$sK05bhy6_0kwNIAJxu5gSzbFzxE;

    invoke-direct {p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$sK05bhy6_0kwNIAJxu5gSzbFzxE;-><init>([I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private setVideoSkinToneLevel(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skinToneLevel"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoSkinToneLevel : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "setVideoSkinToneLevel return - not recording mode."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isVideoBeautySnapshotSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingSnapshotSupported()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isTakingPictureSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_FACE_RETOUCH_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$XcC4NvwQd8iCCED2W8VXwhEOYGg;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$XcC4NvwQd8iCCED2W8VXwhEOYGg;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private unregisterCameraSettingChangedListener()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getAllBeautySettingKeyList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BEAUTY_FILTER_EFFECT_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initializePhotoBeauty$0$BeautyController(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;I)V

    return-void
.end method

.method public synthetic lambda$initializePhotoBeauty$1$BeautyController(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;I)V

    return-void
.end method

.method public synthetic lambda$setPhotoBodyBeautyLevel$4$BeautyController([ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->isPhotoBodyBeautyLevelEnabled()Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, p0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, p0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BODY_BEAUTY_PARAMETERS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BODY_BEAUTY_PARAMETERS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v1

    :cond_1
    return v0
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

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

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

    const-string v0, "BeautyController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->isValidFacing(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCameraSettingChanged : Returned because of invalid facing - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->isPhotoBeautySettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;I)V

    goto/16 :goto_3

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->isPhotoBodyBeautySettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getManualBeautyLevelSettingKeyList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setPhotoBodyBeautyLevel(Ljava/util/ArrayList;)V

    goto/16 :goto_3

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->isVideoBodyBeautySettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getManualBeautyLevelSettingKeyList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setVideoBodyBeautyLevel(Ljava/util/ArrayList;)V

    goto/16 :goto_3

    :cond_4
    sget-object p2, Lcom/samsung/android/app/galaxyraw/engine/BeautyController$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getManualBeautyLevelSettingKeyList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setVideoBodyBeautyLevel(Ljava/util/ArrayList;)V

    goto/16 :goto_3

    :pswitch_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getManualBeautyLevelSettingKeyList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setPhotoBodyBeautyLevel(Ljava/util/ArrayList;)V

    goto/16 :goto_3

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;->VIDEO_BOKEH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    if-ne p1, p2, :cond_b

    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setLiveFocusVideoSkinToneLevel(I)V

    goto :goto_3

    :pswitch_3
    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setLiveFocusSkinToneLevel(I)V

    goto :goto_3

    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;->NOT_SUPPORTED:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    if-ne p1, p2, :cond_b

    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setVideoSkinToneLevel(I)V

    goto :goto_3

    :pswitch_5
    if-nez p3, :cond_5

    move p2, v0

    :cond_5
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->enableBeautyBypass(Z)V

    goto :goto_3

    :pswitch_6
    if-nez p3, :cond_6

    move p1, v0

    goto :goto_0

    :cond_6
    move p1, p2

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setBeautyEffectIgnore(Z)V

    if-ne p3, v0, :cond_7

    move p2, v0

    :cond_7
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->enableSmartBeauty(Z)V

    goto :goto_3

    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->ENABLE_BEAUTY_STR:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    if-eqz p3, :cond_8

    move v2, v0

    goto :goto_1

    :cond_8
    move v2, p2

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    if-nez p3, :cond_9

    move p1, v0

    goto :goto_2

    :cond_9
    move p1, p2

    :goto_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setBeautyEffectIgnore(Z)V

    if-ne p3, v0, :cond_a

    move p2, v0

    :cond_a
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->enableSmartBeauty(Z)V

    :cond_b
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStartPreviewCompleted()V
    .locals 0

    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 2

    const-string v0, "BeautyController"

    const-string v1, "onStartPreviewRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->isBeautyFaceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->initializeVideoBeauty()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->initializePhotoBeauty()V

    :goto_0
    return-void
.end method

.method setSkinColorLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skinColorLevel"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSkinColorLevel : skinColorLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_FACE_COLOR_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method setSkinSmoothnessLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skinSmoothnessLevel"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSkinSmoothnessLevel : smoothnessLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_SMOOTHNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method setSkinToneLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skinToneLevel"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSkinToneLevel : skinToneLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_FACE_RETOUCH_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method start()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->registerCameraSettingChangedListener()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->registerPreviewEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;)V

    return-void
.end method

.method stop()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->unregisterCameraSettingChangedListener()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->unregisterPreviewEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;)V

    return-void
.end method
