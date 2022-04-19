.class public Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;
.super Ljava/lang/Object;
.source "QuickSettingActTagMap.java"


# static fields
.field private static mQuickSettingActTagMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_FLASH_AUTO"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_FLASH_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_FLASH_ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_TORCH_AUTO"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_TORCH_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_TORCH_ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_FLASH_AUTO"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_FLASH_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_FLASH_ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_TIMER_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_2S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_TIMER_2S"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_5S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_TIMER_5S"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_10S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_TIMER_10S"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_TIMER_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_2S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_TIMER_2S"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_5S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_TIMER_5S"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_10S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_TIMER_10S"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_CENTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "EXPOSURE_METERING_CENTER"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_MATRIX:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "EXPOSURE_METERING_MATRIX"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_SPOT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "EXPOSURE_METERING_SPOT"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_4X_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "RECORDING_MOTION_SPEED_AUTO"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_4X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "RECORDING_MOTION_SPEED_4X"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_8X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "RECORDING_MOTION_SPEED_8X"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_16X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "RECORDING_MOTION_SPEED_16X"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_32X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "RECORDING_MOTION_SPEED_32X"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_64X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "RECORDING_MOTION_SPEED_64X"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_5X_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_RECORDING_MOTION_SPEED_5X_AUTO"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_5X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_RECORDING_MOTION_SPEED_5X"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_10X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_RECORDING_MOTION_SPEED_10X"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_15X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_RECORDING_MOTION_SPEED_15X"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_30X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_RECORDING_MOTION_SPEED_30X"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_60X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_RECORDING_MOTION_SPEED_60X"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_NIGHT_15X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_RECORDING_MOTION_SPEED_NIGHT_15X"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_NIGHT_45X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_RECORDING_MOTION_SPEED_NIGHT_45X"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_5X_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_RECORDING_MOTION_SPEED_5X_AUTO"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_5X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_RECORDING_MOTION_SPEED_5X"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_10X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_RECORDING_MOTION_SPEED_10X"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_15X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_RECORDING_MOTION_SPEED_15X"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_30X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_RECORDING_MOTION_SPEED_30X"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_60X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_RECORDING_MOTION_SPEED_60X"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "SUPER_SLOW_MOTION_FRC_MODE_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "SUPER_SLOW_MOTION_FRC_MODE_ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FOOD_BLUR_EFFECT_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FOOD_BLUR_EFFECT_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FOOD_BLUR_EFFECT_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FOOD_BLUR_EFFECT_ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMERA_PICTURE_RATIO_NORMAL"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMERA_PICTURE_RATIO_WIDE"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMERA_PICTURE_RATIO_SQUARE"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMERA_PICTURE_RATIO_FULL"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMERA_PICTURE_RATIO_SUPER_RESOLUTION"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMERA_PICTURE_RATIO_NORMAL"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMERA_PICTURE_RATIO_WIDE"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMERA_PICTURE_RATIO_SQUARE"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMERA_PICTURE_RATIO_FULL"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMERA_PICTURE_RATIO_SUPER_RESOLUTION"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_RATIO_WIDE"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_RATIO_SQUARE"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_RATIO_FULL"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_CINEMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_RATIO_CINEMA"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMCORDER_RATIO_WIDE"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMCORDER_RATIO_SQUARE"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMCORDER_RATIO_FULL"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_CINEMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMCORDER_RATIO_CINEMA"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_PRO_CAMCORDER_RATIO_WIDE"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_PRO_CAMCORDER_RATIO_SQUARE"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_PRO_CAMCORDER_RATIO_FULL"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_CINEMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_PRO_CAMCORDER_RATIO_CINEMA"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LIVE_FOCUS_DUAL_CAPTURE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "LIVE_FOCUS_DUAL_CAPTURE_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LIVE_FOCUS_DUAL_CAPTURE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "LIVE_FOCUS_DUAL_CAPTURE_ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "SUPER_VIDEO_STABILIZATION_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "SUPER_VIDEO_STABILIZATION_ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HYPER_LAPSE_NIGHT_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "HYPER_LAPSE_NIGHT_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HYPER_LAPSE_NIGHT_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "HYPER_LAPSE_NIGHT_ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_HYPER_LAPSE_RESOLUTION_FHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_HYPER_LAPSE_RESOLUTION_FHD"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_HYPER_LAPSE_RESOLUTION_UHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_HYPER_LAPSE_RESOLUTION_UHD"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_HYPER_LAPSE_RESOLUTION_FHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_HYPER_LAPSE_RESOLUTION_FHD"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_HYPER_LAPSE_RESOLUTION_UHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_HYPER_LAPSE_RESOLUTION_UHD"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMPOSITION_GUIDE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "COMPOSITION_GUIDE_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMPOSITION_GUIDE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "COMPOSITION_GUIDE_ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MOTION_PHOTO_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "MOTION_PHOTO_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MOTION_PHOTO_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "MOTION_PHOTO_ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_BUTTON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_AF_MODE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "MULTI_AF_MODE_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_AF_MODE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "MULTI_AF_MODE_ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HISTOGRAM_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "HISTOGRAM_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HISTOGRAM_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "HISTOGRAM_ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_RESOLUTION_8K_30"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_RESOLUTION_8K_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_RESOLUTION_UHD_60"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_RESOLUTION_UHD_30"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_RESOLUTION_UHD_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_RESOLUTION_FHD_AUTO"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_RESOLUTION_FHD_120"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_RESOLUTION_FHD_60"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_RESOLUTION_FHD_30"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_RESOLUTION_FHD_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_RESOLUTION_HD_30"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMCORDER_RESOLUTION_8K_30"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMCORDER_RESOLUTION_8K_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMCORDER_RESOLUTION_UHD_60"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMCORDER_RESOLUTION_UHD_30"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMCORDER_RESOLUTION_UHD_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMCORDER_RESOLUTION_FHD_AUTO"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMCORDER_RESOLUTION_FHD_120"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMCORDER_RESOLUTION_FHD_60"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMCORDER_RESOLUTION_FHD_30"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMCORDER_RESOLUTION_FHD_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "FRONT_CAMCORDER_RESOLUTION_HD_30"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_8K_30"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_8K_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_60"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_30"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_AUTO"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_120"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_60"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_30"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_HD_30"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_PRO_CAMCORDER_RESOLUTION_8K_30"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_PRO_CAMCORDER_RESOLUTION_8K_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_PRO_CAMCORDER_RESOLUTION_UHD_60"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_PRO_CAMCORDER_RESOLUTION_UHD_30"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_PRO_CAMCORDER_RESOLUTION_UHD_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_PRO_CAMCORDER_RESOLUTION_FHD_AUTO"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_PRO_CAMCORDER_RESOLUTION_FHD_120"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_PRO_CAMCORDER_RESOLUTION_FHD_60"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_PRO_CAMCORDER_RESOLUTION_FHD_30"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_PRO_CAMCORDER_RESOLUTION_FHD_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v2, "BACK_PRO_CAMCORDER_RESOLUTION_HD_30"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActTag(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "commandId"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getSubTitleId()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->mQuickSettingActTagMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getTitleId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
