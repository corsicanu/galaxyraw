.class Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;
.super Ljava/util/HashMap;
.source "SamsungAnalyticsLogIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "0145"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2026"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "0009"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_METERING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "0008"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "1502"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "0147"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "0207"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "0210"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "0247"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "0248"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_SMART_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2137"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_SMART_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2133"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_RESHAPE_CHEEK_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2041"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_RESHAPE_CHEEK_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_RESHAPE_CHIN_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2042"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_RESHAPE_CHIN_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_RESHAPE_EYES_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2067"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_RESHAPE_EYES_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v2, "2043"

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_RESHAPE_NOSE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v3, "2044"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_RESHAPE_NOSE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_RESHAPE_LIP_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v3, "2045"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_RESHAPE_LIP_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_SLIM_FACE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v3, "2066"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_SLIM_FACE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v3, "2047"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BEAUTY_BRIGHTEN_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v3, "2065"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BEAUTY_BRIGHTEN_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v3, "2011"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BEAUTY_SMOOTHNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v3, "2064"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BEAUTY_SMOOTHNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v3, "2061"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_LARGE_EYES_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_LARGE_EYES_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "3045"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "3049"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "1111"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2058"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "1120"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2051"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_SPIN_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "1121"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_SPIN_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2052"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_SPIN_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_ZOOM_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "1122"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_ZOOM_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2053"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_ZOOM_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "1126"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2057"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "1123"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2054"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "1112"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_LIVE_FOCUS_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2077"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2085"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2075"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2083"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2076"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2084"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2086"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2088"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_GLITCH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2087"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_GLITCH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2089"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_WHOLE_BODY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "8022"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_WHOLE_BODY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_HEAD_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "8023"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_HEAD_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_SHOULDERS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "8024"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_SHOULDERS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_WAIST_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "8025"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_WAIST_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_HIPS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "8026"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_HIPS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_LEGS_THICKNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "8027"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_LEGS_THICKNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_LEGS_LENGTH_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "8028"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_LEGS_LENGTH_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "8028"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "0144"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_HYPER_LAPSE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "1508"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_HYPER_LAPSE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "1509"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "4005"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2331"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2333"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2063"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "2024"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "8029"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "8029"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
