.class Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;
.super Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;
.source "ResizableCameraSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResizableCameraSettings"


# instance fields
.field private mMultiWindowMode:I


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

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mMultiWindowMode:I

    const-string p1, "ResizableCameraSettings"

    const-string p2, "ResizableCameraSettings created"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->overrideValueGetterMap()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->overrideValueSetterMap()V

    return-void
.end method

.method private getMultiWindowMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mMultiWindowMode:I

    return p0
.end method

.method public static synthetic lambda$-l0Rm9UykHMMH6EaQYa52nEVT5A(Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->getMultiWindowMode()I

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

.method static synthetic lambda$overrideValueGetterMap$8()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$overrideValueSetterMap$10(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string v0, "setBackPhotoBodyBeautyType : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$11(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string v0, "setBackVideoBeautyLevel : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$12(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string v0, "setBackVideoBodyBeautyType : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$13(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string v0, "setFloatingCameraButton : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$14(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string v0, "setFrontFlash : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$15(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string v0, "setFrontPhotoBeautyType : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$16(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string v0, "setFrontVideoBeautyLevel : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$17(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string v0, "setQrCodeDetection : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$overrideValueSetterMap$9(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string v0, "setBackPhotoBeautyType : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$tISYovQRgm4rgHT1-7TBRiCeff8(Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->setMultiWindowMode(I)V

    return-void
.end method

.method private overrideValueGetterMap()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$l8mt7hcWx8ZTvTRiOM1CE7cWmfU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$l8mt7hcWx8ZTvTRiOM1CE7cWmfU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$wOBbQjq5nmFcHlcv7orXRFHH3_0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$wOBbQjq5nmFcHlcv7orXRFHH3_0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$BaWEyG8zfXie0bKYQ2cmMQWppUE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$BaWEyG8zfXie0bKYQ2cmMQWppUE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$0hh7dSUDQZ83nBWUc2uXd5SUkRg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$0hh7dSUDQZ83nBWUc2uXd5SUkRg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$5aC5mtCzt-_XnlvSTLXwzQRyrsg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$5aC5mtCzt-_XnlvSTLXwzQRyrsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$qd2rCLJqjPm4hPUlIlrxKxdRruo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$qd2rCLJqjPm4hPUlIlrxKxdRruo;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$6qhJ4IHrOzwkpygtVVmpKNs5liw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$6qhJ4IHrOzwkpygtVVmpKNs5liw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$__Adr2uO49Vf27SuRBuO2OElIjs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$__Adr2uO49Vf27SuRBuO2OElIjs;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$-l0Rm9UykHMMH6EaQYa52nEVT5A;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$-l0Rm9UykHMMH6EaQYa52nEVT5A;-><init>(Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$0dt82tXz8htqPlKLRsTtl3VOYHY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$0dt82tXz8htqPlKLRsTtl3VOYHY;

    invoke-virtual {p0, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private overrideValueSetterMap()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$yNnP5U2hQtYMPMGG2jTibnq1u2A;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$yNnP5U2hQtYMPMGG2jTibnq1u2A;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$IpEGaOA-yo3RgdlVqQLJ-wlu568;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$IpEGaOA-yo3RgdlVqQLJ-wlu568;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$Y4TXE4g2vz7R3oDSZfxniZWTIVk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$Y4TXE4g2vz7R3oDSZfxniZWTIVk;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$L1jNiGM2Wn6NoRGdyq1KNAzTC_8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$L1jNiGM2Wn6NoRGdyq1KNAzTC_8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$xekVMoH0kxOQ0n5LBdHbkJF0PuI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$xekVMoH0kxOQ0n5LBdHbkJF0PuI;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$YyRIhXgkwyJ-Sgoh5Gv_6faKOKw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$YyRIhXgkwyJ-Sgoh5Gv_6faKOKw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$UrfbiThrjE2R9kpDHQ7lfUEnlsg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$UrfbiThrjE2R9kpDHQ7lfUEnlsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$WbfLe1aDDEknbydf-rsrDANLcXQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$WbfLe1aDDEknbydf-rsrDANLcXQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$tISYovQRgm4rgHT1-7TBRiCeff8;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$tISYovQRgm4rgHT1-7TBRiCeff8;-><init>(Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$2vcSv15jVGzn9BsqBmGe3_lOIW0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ResizableCameraSettings$2vcSv15jVGzn9BsqBmGe3_lOIW0;

    invoke-virtual {p0, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setMultiWindowMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "multiWindowMode"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mMultiWindowMode:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMultiWindowMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResizableCameraSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;->mMultiWindowMode:I

    :cond_0
    return-void
.end method


# virtual methods
.method isResizableMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isSimpleMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
