.class Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;
.super Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;
.source "SimpleCameraSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleCameraSettings"


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "observer"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->overrideValueGetterMap()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->overrideValueSetterMap()V

    const-string p0, "SimpleCameraSettings"

    const-string p1, "SimpleCameraSettings created"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getBackCamcorderResolution()I
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getBackCameraResolution()I
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getFrontCamcorderResolution()I
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getFrontCameraResolution()I
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$65HAXjmbgSidkwGK2N8dd5p_rr4(Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->getFrontCamcorderResolution()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$hPcAC3LqBGwjYMkOlvv6xn4wlSE(Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->getBackCamcorderResolution()I

    move-result p0

    return p0
.end method

.method static synthetic lambda$overrideValueGetterMap$0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$overrideValueGetterMap$1()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$overrideValueGetterMap$2()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$overrideValueGetterMap$3()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$overrideValueGetterMap$4()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$overrideValueGetterMap$5()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$overrideValueGetterMap$6()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$overrideValueGetterMap$7()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$overrideValueSetterMap$10(I)V
    .locals 1

    const-string p0, "SimpleCameraSettings"

    const-string v0, "setBackPhotoBeautyType : ignore SimpleCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$11(I)V
    .locals 1

    const-string p0, "SimpleCameraSettings"

    const-string v0, "setBackPhotoBodyBeautyType : ignore SimpleCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$12(I)V
    .locals 1

    const-string p0, "SimpleCameraSettings"

    const-string v0, "setBackVideoBeautyLevel : ignore SimpleCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$13(I)V
    .locals 1

    const-string p0, "SimpleCameraSettings"

    const-string v0, "setBackVideoBodyBeautyType : ignore SimpleCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$14(I)V
    .locals 1

    const-string p0, "SimpleCameraSettings"

    const-string v0, "setFloatingCameraButton : ignore SimpleCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$15(I)V
    .locals 1

    const-string p0, "SimpleCameraSettings"

    const-string v0, "setFrontCamcorderResolution : ignore SimpleCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$16(I)V
    .locals 1

    const-string p0, "SimpleCameraSettings"

    const-string v0, "setFrontCameraResolution : ignore SimpleCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$17(I)V
    .locals 1

    const-string p0, "SimpleCameraSettings"

    const-string v0, "setFrontPhotoBeautyType : ignore SimpleCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$18(I)V
    .locals 1

    const-string p0, "SimpleCameraSettings"

    const-string v0, "setFrontVideoBeautyLevel : ignore SimpleCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$19(I)V
    .locals 1

    const-string p0, "SimpleCameraSettings"

    const-string v0, "setMotionPhoto : ignore SimpleCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$8(I)V
    .locals 1

    const-string p0, "SimpleCameraSettings"

    const-string v0, "setBackCamcorderResolution : ignore SimpleCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$9(I)V
    .locals 1

    const-string p0, "SimpleCameraSettings"

    const-string v0, "setBackCameraResolution : ignore SimpleCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$qX3DGFWLEmSq1gFQQgqjknfX9k4(Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->getBackCameraResolution()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$y_SfOExMumpzUGhS1reKHqZmBQs(Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->getFrontCameraResolution()I

    move-result p0

    return p0
.end method

.method private overrideValueGetterMap()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$hPcAC3LqBGwjYMkOlvv6xn4wlSE;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$hPcAC3LqBGwjYMkOlvv6xn4wlSE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$qX3DGFWLEmSq1gFQQgqjknfX9k4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$qX3DGFWLEmSq1gFQQgqjknfX9k4;-><init>(Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$ankcOgVHiYdvOYOlloq3uQCwDEY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$ankcOgVHiYdvOYOlloq3uQCwDEY;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$NPr-bDIWbZcfygpxAUOxDZWNWgE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$NPr-bDIWbZcfygpxAUOxDZWNWgE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$9eKqzFNsEO5QeXf2MTKFHw-q7pU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$9eKqzFNsEO5QeXf2MTKFHw-q7pU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$kg31yLDDxiYpDEDKIojWf0kFrnU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$kg31yLDDxiYpDEDKIojWf0kFrnU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$AaXdHmSQlA2jD6Z9Odo8IYzSz3w;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$AaXdHmSQlA2jD6Z9Odo8IYzSz3w;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$65HAXjmbgSidkwGK2N8dd5p_rr4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$65HAXjmbgSidkwGK2N8dd5p_rr4;-><init>(Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$y_SfOExMumpzUGhS1reKHqZmBQs;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$y_SfOExMumpzUGhS1reKHqZmBQs;-><init>(Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$M6rnI0P6IttkeL8Xu_ne-0SbXaQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$M6rnI0P6IttkeL8Xu_ne-0SbXaQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$AHGlf3p6KXgwqcXFWKdC9p94qKw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$AHGlf3p6KXgwqcXFWKdC9p94qKw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$8ldOugwCpPai8ZuaiZpbSwvRUDE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$8ldOugwCpPai8ZuaiZpbSwvRUDE;

    invoke-virtual {p0, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private overrideValueSetterMap()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$fjWW17gJ38zTImCfV9f3l_rCYHQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$fjWW17gJ38zTImCfV9f3l_rCYHQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$Bpz4psDmTcjsfgL-f8Omhfpc-g0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$Bpz4psDmTcjsfgL-f8Omhfpc-g0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$R7FvN37XggekjNuM6iJjRMPx71A;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$R7FvN37XggekjNuM6iJjRMPx71A;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$h4rnJHG6E9MwU8mXime7jmpYlAQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$h4rnJHG6E9MwU8mXime7jmpYlAQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$Orro5S7wAVnYQH_IPUK3BwQ5dUU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$Orro5S7wAVnYQH_IPUK3BwQ5dUU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$MfJOJOoCaWd1coZ1yuX3C-Bahog;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$MfJOJOoCaWd1coZ1yuX3C-Bahog;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$W9tZwmm7FPTtKnaEfI5Y1dqx0n8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$W9tZwmm7FPTtKnaEfI5Y1dqx0n8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$UIw_sLySeeBIMFnT9IfgsArjcTk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$UIw_sLySeeBIMFnT9IfgsArjcTk;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$HGnsq7Mwp9XRoqg89r8NO7Z2_uQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$HGnsq7Mwp9XRoqg89r8NO7Z2_uQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$Ka-87S5W2yusU0KkW7HGDJmJkdw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$Ka-87S5W2yusU0KkW7HGDJmJkdw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$iFIWAAX84rlAzldKXKt2d7YjR60;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$iFIWAAX84rlAzldKXKt2d7YjR60;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$myBNG32diMr4d0E72lTqbKSCDRA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SimpleCameraSettings$myBNG32diMr4d0E72lTqbKSCDRA;

    invoke-virtual {p0, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->getFrontCameraResolution()I

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->getBackCameraResolution()I

    move-result p0

    return p0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->getFrontCamcorderResolution()I

    move-result p0

    return p0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;->getBackCamcorderResolution()I

    move-result p0

    return p0
.end method

.method isResizableMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method isSimpleMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
