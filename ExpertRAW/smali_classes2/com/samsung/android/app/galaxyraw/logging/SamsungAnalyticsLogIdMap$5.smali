.class Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;
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
        "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "2008"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "0012"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "0142"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_WITH_SUPER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_WITH_SUPER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_AF_MODE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "1308"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "0007"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "0011"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "1501"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LAUNCH_SETTING_ACTIVITY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "0010"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "0143"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_LIVE_FOCUS_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_LIVE_FOCUS_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_LIVE_FOCUS_VIDEO_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_LIVE_FOCUS_VIDEO_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_FOCUS_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "2134"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "2135"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "2136"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "8021"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_ORIGINAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "5403"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_COOL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "5402"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_WARM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "5401"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "0216"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HYPER_LAPSE_NIGHT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "1504"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "4007"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_SAVE_OPTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "9999"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "0245"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "0200"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "0246"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "0209"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "2332"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "2330"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
