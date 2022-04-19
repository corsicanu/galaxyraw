.class public Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;
.super Ljava/lang/Object;
.source "CommandIdMap.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandIdMap"

.field private static mCommandIdKeyMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mKeyCommandIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation
.end field

.field private static mSubCommandIdMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mCommandIdKeyMap:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mKeyCommandIdMap:Ljava/util/Map;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    const/16 v0, 0x3c

    new-array v0, v0, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x1

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const/4 v5, 0x2

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    const/4 v6, 0x3

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_SCREEN_FLASH_VI:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    :goto_5
    const/4 v7, 0x4

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_SCREEN_FLASH_VI:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_FRONT_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    :goto_7
    const/4 v8, 0x5

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    const/4 v9, 0x6

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    const/4 v10, 0x7

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_MANUAL_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    const/16 v11, 0x8

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v12, 0x9

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v13, 0xa

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v14, 0xb

    aput-object v1, v0, v14

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MULTI_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_AF_MODE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    const/16 v15, 0xc

    aput-object v1, v0, v15

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HISTOGRAM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    :goto_c
    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_SAVE_OPTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_WITH_NIGHT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_d

    :cond_d
    const/4 v1, 0x0

    :goto_d
    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_e

    :cond_e
    const/4 v1, 0x0

    :goto_e
    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_f

    :cond_f
    const/4 v1, 0x0

    :goto_f
    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_DETECTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/16 v1, 0x14

    sget-object v23, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->SUPER_SLOW_MOTION_MAX_FRC_TIME:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v23

    if-eqz v23, :cond_10

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_10

    :cond_10
    const/16 v23, 0x0

    :goto_10
    aput-object v23, v0, v1

    const/16 v1, 0x15

    sget-object v23, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FOOD_ADDED_LENS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v23

    if-eqz v23, :cond_11

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FOOD_BLUR_EFFECT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_11

    :cond_11
    const/16 v23, 0x0

    :goto_11
    aput-object v23, v0, v1

    const/16 v1, 0x16

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FOOD_COLOR_TUNE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x17

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x18

    sget-object v23, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_SUPER_RESOLUTION_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v23

    if-eqz v23, :cond_12

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_WITH_SUPER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_12

    :cond_12
    const/16 v23, 0x0

    :goto_12
    aput-object v23, v0, v1

    const/16 v1, 0x19

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x1a

    sget-object v23, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_SUPER_RESOLUTION_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v23

    if-eqz v23, :cond_13

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_WITH_SUPER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_13

    :cond_13
    const/16 v23, 0x0

    :goto_13
    aput-object v23, v0, v1

    const/16 v1, 0x1b

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x1c

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x1d

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x1e

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x1f

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x20

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x21

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x22

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LIVE_FOCUS_DUAL_CAPTURE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x23

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x24

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x25

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x26

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x27

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x28

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HYPER_LAPSE_NIGHT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x29

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_HYPER_LAPSE_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x2a

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_HYPER_LAPSE_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x2b

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_SLOW_MOTION_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x2c

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_SLOW_MOTION_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x2d

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_LIVE_FOCUS_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x2e

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_LIVE_FOCUS_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x2f

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_LIVE_FOCUS_VIDEO_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x30

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_LIVE_FOCUS_VIDEO_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x31

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_FOCUS_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x32

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LAUNCH_SETTING_ACTIVITY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x33

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MOTION_PHOTO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x34

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PICTURE_FORMAT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x35

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x36

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x37

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x38

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x39

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x3a

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    const/16 v1, 0x3b

    sget-object v23, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->DUAL_RECORDING_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v23, v0, v1

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->QUICK_SETTING_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v1, v15, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v24, v15, v3

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v24, v15, v4

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v24, v15, v5

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v24, v15, v6

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v24, v15, v7

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_FOOD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v24, v15, v8

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v24, v15, v9

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v24, v15, v10

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v24, v15, v11

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v24, v15, v12

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v24, v15, v13

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v24, v15, v14

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MULTI_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v23, 0xc

    aput-object v24, v15, v23

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v17, 0xd

    aput-object v24, v15, v17

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v18, 0xe

    aput-object v24, v15, v18

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v19, 0xf

    aput-object v24, v15, v19

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_DUAL_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v20, 0x10

    aput-object v24, v15, v20

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_QR:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v21, 0x11

    aput-object v24, v15, v21

    sget-object v24, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v22, 0x12

    aput-object v24, v15, v22

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v1, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_14

    new-array v0, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v0, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v0, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v0, v5

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v15, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v15, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v2, v15, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v2, v15, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v2, v15, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v2, v15, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v2, v15, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_MANUAL_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_MANUAL_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_14
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_SCREEN_FLASH_VI:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    new-array v0, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v0, v4

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v2, v15, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v2, v15, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v2, v15, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v2, v15, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v2, v15, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_FRONT_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v2, v15, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_FRONT_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_16
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HYPER_LAPSE_NIGHT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HYPER_LAPSE_NIGHT_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HYPER_LAPSE_NIGHT_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HYPER_LAPSE_NIGHT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HYPER_LAPSE_NIGHT_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HYPER_LAPSE_NIGHT_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_HYPER_LAPSE_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_HYPER_LAPSE_RESOLUTION_FHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_HYPER_LAPSE_RESOLUTION_UHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_HYPER_LAPSE_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_HYPER_LAPSE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_HYPER_LAPSE_RESOLUTION_FHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_HYPER_LAPSE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v15

    invoke-static {v0, v2, v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_HYPER_LAPSE_RESOLUTION_UHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_HYPER_LAPSE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v15

    invoke-static {v0, v2, v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_HYPER_LAPSE_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_HYPER_LAPSE_RESOLUTION_FHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_HYPER_LAPSE_RESOLUTION_UHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_HYPER_LAPSE_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_HYPER_LAPSE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_HYPER_LAPSE_RESOLUTION_FHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_HYPER_LAPSE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v15

    invoke-static {v0, v2, v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_HYPER_LAPSE_RESOLUTION_UHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_HYPER_LAPSE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v15

    invoke-static {v0, v2, v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_SLOW_MOTION_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_SLOW_MOTION_RESOLUTION_FHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_SLOW_MOTION_RESOLUTION_UHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_SLOW_MOTION_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SLOW_MOTION_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_SLOW_MOTION_RESOLUTION_FHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SLOW_MOTION_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v15

    invoke-static {v0, v2, v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_SLOW_MOTION_RESOLUTION_UHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SLOW_MOTION_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v15

    invoke-static {v0, v2, v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_SLOW_MOTION_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_SLOW_MOTION_RESOLUTION_FHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_SLOW_MOTION_RESOLUTION_UHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_SLOW_MOTION_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_SLOW_MOTION_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_SLOW_MOTION_RESOLUTION_FHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_SLOW_MOTION_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v15

    invoke-static {v0, v2, v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_SLOW_MOTION_RESOLUTION_UHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_SLOW_MOTION_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v15

    invoke-static {v0, v2, v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_2S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_5S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_10S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v6

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_2S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_5S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_10S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_2S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_5S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_10S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v6

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_2S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_5S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_10S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_EFFECTS_TAB_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v25

    if-eqz v25, :cond_17

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_14

    :cond_17
    const/16 v25, 0x0

    :goto_14
    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MY_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v25

    if-eqz v25, :cond_18

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_15

    :cond_18
    const/16 v25, 0x0

    :goto_15
    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v25

    if-eqz v25, :cond_19

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_16

    :cond_19
    const/16 v25, 0x0

    :goto_16
    aput-object v25, v15, v6

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_EFFECTS_TAB_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_EFFECTS_TAB_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v25

    if-eqz v25, :cond_1a

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_17

    :cond_1a
    const/16 v25, 0x0

    :goto_17
    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MY_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v25

    if-eqz v25, :cond_1b

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_18

    :cond_1b
    const/16 v25, 0x0

    :goto_18
    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_VIDEO_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v25

    if-eqz v25, :cond_1c

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_19

    :cond_1c
    const/16 v25, 0x0

    :goto_19
    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v25

    if-eqz v25, :cond_1d

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_1a

    :cond_1d
    const/16 v25, 0x0

    :goto_1a
    aput-object v25, v15, v6

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_EFFECTS_TAB_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TYPE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v25

    if-eqz v25, :cond_1e

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TYPE_SMART:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_1b

    :cond_1e
    const/16 v25, 0x0

    :goto_1b
    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TYPE_CUSTOM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TYPE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TYPE_SMART:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TYPE_CUSTOM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_BEAUTY_MANUAL_RESHAPE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v10, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_SMOOTHNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_BRIGHTEN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_CHEEK:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_CHIN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v6

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_LARGE_EYES:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v7

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_NOSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v8

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_LIPS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v9

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_1f
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_SMOOTHNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_BRIGHTEN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_SLIM_FACE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_LARGE_EYES:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v6

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1c
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_CHEEK:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_CHIN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_LARGE_EYES:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_NOSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_LIPS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_SLIM_FACE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v10}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_SMOOTHNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_BRIGHTEN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v12}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_BEAUTY_TYPE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_BEAUTY_TYPE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_BEAUTY_TYPE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_BEAUTY_TYPE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v10, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_WHOLE_BODY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_HEAD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_SHOULDERS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_WAIST:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v6

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_HIPS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v7

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_LEGS_THICKNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v8

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_LEGS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v9

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_WHOLE_BODY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_HEAD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_SHOULDERS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_WAIST:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_HIPS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_LEGS_THICKNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_LEGS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v9}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_BEAUTY_TYPE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_BEAUTY_TYPE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_BEAUTY_TYPE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_BEAUTY_TYPE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v10, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_WHOLE_BODY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_HEAD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_SHOULDERS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_WAIST:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v6

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_HIPS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v7

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_LEGS_THICKNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v8

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_LEGS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v9

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_WHOLE_BODY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_HEAD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_SHOULDERS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_WAIST:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_HIPS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_LEGS_THICKNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_LEGS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v9}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_20
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_EFFECTS_TAB_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v25

    if-eqz v25, :cond_21

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_1d

    :cond_21
    const/16 v25, 0x0

    :goto_1d
    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MY_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v25

    if-eqz v25, :cond_22

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_1e

    :cond_22
    const/16 v25, 0x0

    :goto_1e
    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_EFFECTS_TAB_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_EFFECTS_TAB_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v25

    if-eqz v25, :cond_23

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_1f

    :cond_23
    const/16 v25, 0x0

    :goto_1f
    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MY_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v25

    if-eqz v25, :cond_24

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_20

    :cond_24
    const/16 v25, 0x0

    :goto_20
    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_EFFECTS_TAB_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v25

    if-eqz v25, :cond_25

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TYPE_SMART:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_21

    :cond_25
    const/16 v25, 0x0

    :goto_21
    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TYPE_CUSTOM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TYPE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TYPE_SMART:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TYPE_CUSTOM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TYPE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_BEAUTY_MANUAL_RESHAPE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v10, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_SMOOTHNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_BRIGHTEN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_CHEEK:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_CHIN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v6

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_LARGE_EYES:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v7

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_NOSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v8

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_LIPS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v9

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_26
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_SMOOTHNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_BRIGHTEN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_SLIM_FACE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_LARGE_EYES:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v6

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_22
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_CHEEK:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_CHIN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_LARGE_EYES:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_NOSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_LIPS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_SLIM_FACE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v10}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_SMOOTHNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_BRIGHTEN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v12}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PORTRAIT_LIGHTING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v9, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_STUDIO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_HIGH_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_LOW_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v6

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_BACKDROP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v7

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v8

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_27
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v8, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_SPIN_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_ZOOM_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v6

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v7

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_23
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_SPIN_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_ZOOM_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v9}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v10}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_HIGH_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_LOW_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v12}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_BACKDROP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v13}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_STUDIO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PORTRAIT_LIGHTING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v9, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_STUDIO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_HIGH_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_LOW_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v6

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_BACKDROP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v7

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v8

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    :cond_28
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v8, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_SPIN_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_ZOOM_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v6

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v7

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_24
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_SPIN_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_ZOOM_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v9}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v10}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_HIGH_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_LOW_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v12}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_BACKDROP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v13}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_STUDIO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PORTRAIT_LIGHTING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v9, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_STUDIO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_HIGH_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_LOW_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v6

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_BACKDROP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v7

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v8

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_29
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v8, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_SPIN_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_ZOOM_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v6

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v7

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_25
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_SPIN_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_ZOOM_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v9}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v10}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_HIGH_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_LOW_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v12}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_BACKDROP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v13}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_STUDIO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_GLITCH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v6

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_ARTIFY_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_GLITCH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_GLITCH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v6

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_ARTIFY_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_GLITCH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SELFIE_TONE_V2_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_V2_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_V2_NATURAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_V2_BRIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_V2_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_V2_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_V2_NATURAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_V2_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_V2_BRIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_V2_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_26

    :cond_2a
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_WARM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_ORIGINAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_COOL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_WARM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_ORIGINAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_COOL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_2b
    :goto_26
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LOCATION_TAG_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LOCATION_TAG_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->STORAGE_PHONE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->STORAGE_MMC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VOICE_COMMAND_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VOICE_COMMAND_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_CENTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_MATRIX:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_SPOT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_METERING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_CENTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_METERING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_MATRIX:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_METERING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_SPOT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_METERING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_AF_MODE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_AF_MODE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_AF_MODE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_AF_MODE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_AF_MODE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_AF_MODE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HISTOGRAM_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HISTOGRAM_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HISTOGRAM_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HISTOGRAM_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_SAVE_OPTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_SAVE_OPTION_SINGLE_FILE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_SAVE_OPTION_MULTI_FILE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_SAVE_OPTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_SAVE_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_SAVE_OPTION_SINGLE_FILE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_SAVE_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_SAVE_OPTION_MULTI_FILE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_SAVE_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v8, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v3

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v4

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v5

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MANUAL_FOCUS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v6

    sget-object v25, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v25, v15, v7

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v15, 0xf

    new-array v1, v15, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_50:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v1, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_64:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v1, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_80:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v1, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_100:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v1, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_125:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v1, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_160:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v1, v8

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_200:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v1, v9

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_250:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v1, v10

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_320:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v1, v11

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_400:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v1, v12

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_500:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v1, v13

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_640:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v1, v14

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_800:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v23, 0xc

    aput-object v15, v1, v23

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_1600:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v17, 0xd

    aput-object v15, v1, v17

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_3200:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v18, 0xe

    aput-object v15, v1, v18

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_50:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_64:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_80:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_100:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_125:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_160:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v9}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_200:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v10}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_250:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_320:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v12}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_400:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v13}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_500:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_640:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_800:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_1600:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_3200:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_EXPAND_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v2, 0x25

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_42:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_63:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_83:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_125:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_167:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_250:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v9

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_500:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v10

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v11

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_1000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v12

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_1333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v13

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_2000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v14

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_2857:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v23, 0xc

    aput-object v15, v2, v23

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_4000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v17, 0xd

    aput-object v15, v2, v17

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_5556:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v18, 0xe

    aput-object v15, v2, v18

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_8000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v19, 0xf

    aput-object v15, v2, v19

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_11111:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v20, 0x10

    aput-object v15, v2, v20

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_16667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v21, 0x11

    aput-object v15, v2, v21

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_20000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v22, 0x12

    aput-object v15, v2, v22

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_22222:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v24, 0x13

    aput-object v15, v2, v24

    const/16 v15, 0x14

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_33333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x15

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_50000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x16

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_66667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x17

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_100000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x18

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_125000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x19

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_166667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1a

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_250000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1b

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_300000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1c

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_500000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1d

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_1000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1e

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_2000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1f

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_4000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x20

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_8000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x21

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_10000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x22

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_15000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x23

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_20000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x24

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_30000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_27

    :cond_2c
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v2, 0x22

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_42:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_63:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_83:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_125:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_167:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_250:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v9

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_500:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v10

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v11

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_1000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v12

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_1333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v13

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_2000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v14

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_2857:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v23, 0xc

    aput-object v15, v2, v23

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_4000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v17, 0xd

    aput-object v15, v2, v17

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_5556:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v18, 0xe

    aput-object v15, v2, v18

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_8000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v19, 0xf

    aput-object v15, v2, v19

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_11111:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v20, 0x10

    aput-object v15, v2, v20

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_16667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v21, 0x11

    aput-object v15, v2, v21

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_20000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v22, 0x12

    aput-object v15, v2, v22

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_22222:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v24, 0x13

    aput-object v15, v2, v24

    const/16 v15, 0x14

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_33333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x15

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_50000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x16

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_66667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x17

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_100000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x18

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_125000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x19

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_166667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1a

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_250000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1b

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_300000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1c

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_500000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1d

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_1000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1e

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_2000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1f

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_4000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x20

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_8000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x21

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_10000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_27
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_42:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_63:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_83:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_125:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_167:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_250:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v9}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v10}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_500:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v12}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_1000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v13}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_1333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_2000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_2857:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_4000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_5556:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_8000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_11111:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_16667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_20000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_22222:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_33333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_50000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x16

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_66667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_100000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x18

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_125000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_166667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1a

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_250000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1b

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_300000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1c

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_500000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1d

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_1000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_2000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_4000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_8000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_10000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_15000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x23

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_20000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x24

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_30000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COLOR_TUNE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COLOR_TUNE_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COLOR_TUNE_CUSTOM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COLOR_TUNE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COLOR_TUNE_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COLOR_TUNE_CUSTOM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MANUAL_FOCUS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MANUAL_FOCUS_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MANUAL_FOCUS_CLOSE_UP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MANUAL_FOCUS_FAR_DISTANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MANUAL_FOCUS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MANUAL_FOCUS_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MANUAL_FOCUS_FAR_DISTANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MANUAL_FOCUS_CLOSE_UP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v9, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_KELVIN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_FLUORESCENT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_INCANDESCENT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_CLOUDY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_DAYLIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_KELVIN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_FLUORESCENT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_INCANDESCENT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_CLOUDY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_DAYLIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v2, 0x4e

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v9

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v10

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v11

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v12

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v13

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v14

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v23, 0xc

    aput-object v15, v2, v23

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v17, 0xd

    aput-object v15, v2, v17

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v18, 0xe

    aput-object v15, v2, v18

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v19, 0xf

    aput-object v15, v2, v19

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v20, 0x10

    aput-object v15, v2, v20

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v21, 0x11

    aput-object v15, v2, v21

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v22, 0x12

    aput-object v15, v2, v22

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v24, 0x13

    aput-object v15, v2, v24

    const/16 v15, 0x14

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x15

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x16

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x17

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x18

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x19

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1a

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1b

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1c

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1d

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1e

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1f

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x20

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x21

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x22

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x23

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x24

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x25

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x26

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x27

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x28

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x29

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x2a

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x2b

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x2c

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x2d

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x2e

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x2f

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x30

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x31

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x32

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x33

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x34

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x35

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x36

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x37

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x38

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x39

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x3a

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x3b

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x3c

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x3d

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x3e

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x3f

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x40

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x41

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x42

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x43

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x44

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x45

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x46

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x47

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x48

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x49

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x4a

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x4b

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x4c

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x4d

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_10000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x18

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1a

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1b

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1c

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1d

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x23

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x24

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x27

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x28

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x2a

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x2b

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x2c

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x2d

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x2e

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x2f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x30

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x31

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x33

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x34

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x35

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x36

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x37

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x38

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x39

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x3a

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x3b

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x3c

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x3d

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x3e

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x3f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x40

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x41

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x42

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x43

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x44

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x45

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x46

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x47

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x48

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x49

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x4a

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x4b

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x4c

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x4d

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x4e

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x4f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x51

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x52

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x53

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x54

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x55

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x56

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x57

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x58

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x59

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x5a

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x5b

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x5c

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x5e

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x5f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x60

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x61

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x62

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x63

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_10000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v2, 0x29

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_2_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v9

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v10

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v11

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v12

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v13

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v14

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v23, 0xc

    aput-object v15, v2, v23

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v17, 0xd

    aput-object v15, v2, v17

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v18, 0xe

    aput-object v15, v2, v18

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v19, 0xf

    aput-object v15, v2, v19

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v20, 0x10

    aput-object v15, v2, v20

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v21, 0x11

    aput-object v15, v2, v21

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v22, 0x12

    aput-object v15, v2, v22

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v24, 0x13

    aput-object v15, v2, v24

    const/16 v15, 0x14

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x15

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x16

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x17

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x18

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x19

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1a

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1b

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1c

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1d

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1e

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1f

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x20

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x21

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x22

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x23

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x24

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x25

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x26

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x27

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x28

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_2_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_2_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0x14

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0x13

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0x12

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0x11

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0x10

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xf

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xe

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xd

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xb

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xa

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0x9

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x8

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x7

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x6

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v9}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v10}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v12}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v13}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_2_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_COLOR_TUNE_TEMPERATURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v9, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_CONTRAST:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_HIGHLIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_SHADOW:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_SATURATION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_TINT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_TEMPERATURE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_2d
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v8, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_CONTRAST:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_HIGHLIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_SHADOW:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_SATURATION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_TINT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_28
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_VIDEO_AUDIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v9, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_DEFAULT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v15

    if-eqz v15, :cond_2e

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_FRONT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_29

    :cond_2e
    const/4 v15, 0x0

    :goto_29
    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v15

    if-eqz v15, :cond_2f

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_REAR_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_2a

    :cond_2f
    const/4 v15, 0x0

    :goto_2a
    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_WIRED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_BLUETOOTH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_AUDIO_BLUETOOTH_MIX_MIC:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v15

    if-eqz v15, :cond_30

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_BLUETOOTH_MIX_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_2b

    :cond_30
    const/4 v15, 0x0

    :goto_2b
    aput-object v15, v2, v8

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_VIDEO_AUDIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_DEFAULT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_FRONT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_REAR_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_WIRED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_BLUETOOTH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_BLUETOOTH_MIX_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_DEFAULT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v2, 0x19

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v9

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v10

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v11

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v12

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v13

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v14

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v23, 0xc

    aput-object v15, v2, v23

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v17, 0xd

    aput-object v15, v2, v17

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v18, 0xe

    aput-object v15, v2, v18

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v19, 0xf

    aput-object v15, v2, v19

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v20, 0x10

    aput-object v15, v2, v20

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v21, 0x11

    aput-object v15, v2, v21

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v22, 0x12

    aput-object v15, v2, v22

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v24, 0x13

    aput-object v15, v2, v24

    const/16 v15, 0x14

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x15

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x16

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x17

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x18

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xb

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xa

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0x9

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x8

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x7

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x6

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v9}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v10}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v12}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v13}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_WIRED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v2, 0x19

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v9

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v10

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v11

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v12

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v13

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v14

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v23, 0xc

    aput-object v15, v2, v23

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v17, 0xd

    aput-object v15, v2, v17

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v18, 0xe

    aput-object v15, v2, v18

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v19, 0xf

    aput-object v15, v2, v19

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v20, 0x10

    aput-object v15, v2, v20

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v21, 0x11

    aput-object v15, v2, v21

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v22, 0x12

    aput-object v15, v2, v22

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v24, 0x13

    aput-object v15, v2, v24

    const/16 v15, 0x14

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x15

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x16

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x17

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x18

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xb

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xa

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0x9

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x8

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x7

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x6

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v9}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v10}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v12}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v13}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_BLUETOOTH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v2, 0x19

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v9

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v10

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v11

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v12

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v13

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v14

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v23, 0xc

    aput-object v15, v2, v23

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v17, 0xd

    aput-object v15, v2, v17

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v18, 0xe

    aput-object v15, v2, v18

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v19, 0xf

    aput-object v15, v2, v19

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v20, 0x10

    aput-object v15, v2, v20

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v21, 0x11

    aput-object v15, v2, v21

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v22, 0x12

    aput-object v15, v2, v22

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v24, 0x13

    aput-object v15, v2, v24

    const/16 v15, 0x14

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x15

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x16

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x17

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x18

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xb

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xa

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0x9

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x8

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x7

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x6

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v9}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v10}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v12}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v13}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_BLUETOOTH_MIX_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v2, 0x19

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v9

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v10

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v11

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v12

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v13

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v14

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v23, 0xc

    aput-object v15, v2, v23

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v17, 0xd

    aput-object v15, v2, v17

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v18, 0xe

    aput-object v15, v2, v18

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v19, 0xf

    aput-object v15, v2, v19

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v20, 0x10

    aput-object v15, v2, v20

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v21, 0x11

    aput-object v15, v2, v21

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v22, 0x12

    aput-object v15, v2, v22

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v24, 0x13

    aput-object v15, v2, v24

    const/16 v15, 0x14

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x15

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x16

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x17

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x18

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xb

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xa

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0x9

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x8

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x7

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x6

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v9}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v10}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v12}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v13}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_VIDEO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v12, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_RESET:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v15

    if-eqz v15, :cond_31

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SETTING_RESET:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_2c

    :cond_31
    const/4 v15, 0x0

    :goto_2c
    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_AUDIO_INPUT_CONTROL:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v15

    if-eqz v15, :cond_32

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_VIDEO_AUDIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_2d

    :cond_32
    const/4 v15, 0x0

    :goto_2d
    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_MANUAL_FOCUS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v9

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_COLOR_TUNE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v10

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ZOOM_ROCKER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v11

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v2, 0xf

    new-array v15, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_50:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v15, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_64:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v15, v4

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_80:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v15, v5

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_100:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v15, v6

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_125:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v15, v7

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_160:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v15, v8

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_200:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v15, v9

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_250:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v15, v10

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_320:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v15, v11

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_400:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v15, v12

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_500:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v15, v13

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_640:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v15, v14

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_800:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v23, 0xc

    aput-object v2, v15, v23

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_1600:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v17, 0xd

    aput-object v2, v15, v17

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_3200:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v18, 0xe

    aput-object v2, v15, v18

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_50:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_64:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_80:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_100:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_125:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_160:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v9}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_200:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v10}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_250:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_320:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v12}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_400:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v13}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_500:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_640:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_800:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_1600:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_3200:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v2, 0x15

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_42:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_63:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_83:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_125:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_167:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_250:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v9

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_500:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v10

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v11

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_1000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v12

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_1333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v13

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_2000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v14

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_2857:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v23, 0xc

    aput-object v15, v2, v23

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_4000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v17, 0xd

    aput-object v15, v2, v17

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_5556:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v18, 0xe

    aput-object v15, v2, v18

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_8000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v19, 0xf

    aput-object v15, v2, v19

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_11111:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v20, 0x10

    aput-object v15, v2, v20

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_16667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v21, 0x11

    aput-object v15, v2, v21

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_20000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v22, 0x12

    aput-object v15, v2, v22

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_22222:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v24, 0x13

    aput-object v15, v2, v24

    const/16 v15, 0x14

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_33333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_42:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_63:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_83:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_125:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_167:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_250:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v9}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v10}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_500:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v12}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_1000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v13}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_1333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_2000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_2857:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_4000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_5556:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_8000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_11111:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_16667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_20000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_22222:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_33333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_COLOR_TUNE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_COLOR_TUNE_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_COLOR_TUNE_CUSTOM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_COLOR_TUNE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_COLOR_TUNE_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_COLOR_TUNE_CUSTOM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_MANUAL_FOCUS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_MANUAL_FOCUS_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_MANUAL_FOCUS_CLOSE_UP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_MANUAL_FOCUS_FAR_DISTANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_MANUAL_FOCUS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_MANUAL_FOCUS_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_MANUAL_FOCUS_FAR_DISTANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_MANUAL_FOCUS_CLOSE_UP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v9, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_KELVIN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_FLUORESCENT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_INCANDESCENT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_CLOUDY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_DAYLIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_KELVIN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_FLUORESCENT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_INCANDESCENT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_CLOUDY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_DAYLIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v2, 0x4e

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v9

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v10

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v11

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v12

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v13

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v14

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v23, 0xc

    aput-object v15, v2, v23

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v17, 0xd

    aput-object v15, v2, v17

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v18, 0xe

    aput-object v15, v2, v18

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v19, 0xf

    aput-object v15, v2, v19

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v20, 0x10

    aput-object v15, v2, v20

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v21, 0x11

    aput-object v15, v2, v21

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v22, 0x12

    aput-object v15, v2, v22

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v24, 0x13

    aput-object v15, v2, v24

    const/16 v15, 0x14

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x15

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x16

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x17

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x18

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x19

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1a

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1b

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1c

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1d

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1e

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1f

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x20

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x21

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x22

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x23

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x24

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x25

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x26

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x27

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x28

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x29

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x2a

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x2b

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x2c

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x2d

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x2e

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x2f

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x30

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x31

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x32

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x33

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x34

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x35

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x36

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x37

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x38

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x39

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x3a

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x3b

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x3c

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x3d

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x3e

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x3f

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x40

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x41

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x42

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x43

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x44

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x45

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x46

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x47

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x48

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x49

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x4a

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x4b

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x4c

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x4d

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_10000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x18

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1a

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1b

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1c

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1d

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x23

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x24

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x27

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x28

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x2a

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x2b

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x2c

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x2d

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x2e

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x2f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x30

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x31

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x33

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x34

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x35

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x36

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x37

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x38

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x39

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x3a

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x3b

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x3c

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x3d

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x3e

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x3f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x40

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x41

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x42

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x43

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x44

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x45

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x46

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x47

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x48

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x49

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x4a

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x4b

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x4c

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x4d

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x4e

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x4f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x51

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x52

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x53

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x54

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x55

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x56

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x57

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x58

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x59

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x5a

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x5b

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x5c

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x5e

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x5f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x60

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x61

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x62

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x63

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_10000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v2, 0x29

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_2_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v9

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v10

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v11

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v12

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v13

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v14

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v23, 0xc

    aput-object v15, v2, v23

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v17, 0xd

    aput-object v15, v2, v17

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v18, 0xe

    aput-object v15, v2, v18

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v19, 0xf

    aput-object v15, v2, v19

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v20, 0x10

    aput-object v15, v2, v20

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v21, 0x11

    aput-object v15, v2, v21

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v22, 0x12

    aput-object v15, v2, v22

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v24, 0x13

    aput-object v15, v2, v24

    const/16 v15, 0x14

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x15

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x16

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x17

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x18

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x19

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1a

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1b

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1c

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1d

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1e

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x1f

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x20

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x21

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x22

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x23

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x24

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x25

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x26

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x27

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    const/16 v15, 0x28

    sget-object v26, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_2_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v26, v2, v15

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_2_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0x14

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0x13

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0x12

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0x11

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0x10

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xf

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xe

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xd

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xb

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0xa

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, -0x9

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x8

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x7

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x6

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v9}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v10}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v12}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v13}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_2_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FOOD_BLUR_EFFECT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FOOD_BLUR_EFFECT_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FOOD_BLUR_EFFECT_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FOOD_BLUR_EFFECT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOOD_BLUR_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FOOD_BLUR_EFFECT_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOOD_BLUR_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FOOD_BLUR_EFFECT_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOOD_BLUR_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FILTER_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FILTER_DOWNLOAD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x2711

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_33
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MY_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->CREATE_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x2711

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MY_FILTER_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_34
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v9, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_4X_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_4X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_8X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_16X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_32X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_64X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_4X_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_4X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_8X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_16X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_32X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_64X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v9, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_5X_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_5X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_10X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_15X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_30X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_60X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_5X_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v13}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_5X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_10X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_15X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_30X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_60X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_WITH_NIGHT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v11, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_5X_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_5X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_10X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_15X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_30X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_60X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_NIGHT_15X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v9

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_NIGHT_45X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v10

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_WITH_NIGHT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_NIGHT_15X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x63

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_NIGHT_45X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v9, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_5X_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_5X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_10X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_15X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_30X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_60X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v2, v8

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_5X_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v13}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_5X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_10X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_15X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_30X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_60X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isBackCameraFullRatioResolutionSupported()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v20, v15, v3

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v20, v15, v4

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v20, v15, v5

    if-eqz v0, :cond_35

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_2e

    :cond_35
    const/16 v20, 0x0

    :goto_2e
    aput-object v20, v15, v6

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v15, -0x1

    invoke-static {v1, v2, v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v1, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    if-eqz v0, :cond_36

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v1, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_36
    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_SUPER_RESOLUTION_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_38

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_WITH_SUPER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v8, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v20, v15, v3

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v20, v15, v4

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v20, v15, v5

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v20, v15, v6

    if-eqz v0, :cond_37

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_2f

    :cond_37
    const/4 v0, 0x0

    :goto_2f
    aput-object v0, v15, v7

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_WITH_SUPER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_38
    new-array v0, v4, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperSteadyRatioSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_30

    :cond_39
    const/4 v0, 0x0

    :goto_30
    new-array v1, v4, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperSteadyRatioSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z

    move-result v1

    if-eqz v1, :cond_3a

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_31

    :cond_3a
    const/4 v1, 0x0

    :goto_31
    new-array v2, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19DOT3x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v15, v2, v6

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperSteadyRatioSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z

    move-result v2

    if-eqz v2, :cond_3b

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_32

    :cond_3b
    const/4 v2, 0x0

    :goto_32
    new-array v15, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v15, v3

    aput-object v1, v15, v4

    aput-object v2, v15, v5

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isFrontCameraFullRatioResolutionSupported()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v20, v15, v3

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v20, v15, v4

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v20, v15, v5

    if-eqz v0, :cond_3c

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_33

    :cond_3c
    const/16 v20, 0x0

    :goto_33
    aput-object v20, v15, v6

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v15, -0x1

    invoke-static {v1, v2, v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v1, v2, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    if-eqz v0, :cond_3d

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v1, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_3d
    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_SUPER_RESOLUTION_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_3f

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_WITH_SUPER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v15, v8, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v20, v15, v3

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v20, v15, v4

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v20, v15, v5

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v20, v15, v6

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_34

    :cond_3e
    const/4 v0, 0x0

    :goto_34
    aput-object v0, v15, v7

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_WITH_SUPER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_3f
    new-array v0, v4, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isBackCamcorderResolutionRatioSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_35

    :cond_40
    const/4 v0, 0x0

    :goto_35
    new-array v1, v4, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isBackCamcorderResolutionRatioSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z

    move-result v1

    if-eqz v1, :cond_41

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_36

    :cond_41
    const/4 v1, 0x0

    :goto_36
    new-array v2, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v15, v2, v3

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19DOT3x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v15, v2, v4

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v15, v2, v5

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v15, v2, v6

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isBackCamcorderResolutionRatioSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z

    move-result v2

    if-eqz v2, :cond_42

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_37

    :cond_42
    const/4 v2, 0x0

    :goto_37
    new-array v15, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v15, v3

    aput-object v1, v15, v4

    aput-object v2, v15, v5

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_43

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_38

    :cond_43
    const/4 v2, -0x1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v1, v15, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_38
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_CINEMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    new-array v0, v4, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isBackCamcorderProResolutionRatioSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_39

    :cond_44
    const/4 v0, 0x0

    :goto_39
    new-array v1, v4, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_21x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isBackCamcorderProResolutionRatioSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z

    move-result v1

    if-eqz v1, :cond_45

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_CINEMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_3a

    :cond_45
    const/4 v1, 0x0

    :goto_3a
    new-array v2, v4, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v15, v2, v3

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isBackCamcorderProResolutionRatioSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z

    move-result v2

    if-eqz v2, :cond_46

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_3b

    :cond_46
    const/4 v2, 0x0

    :goto_3b
    new-array v15, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v20, v15, v3

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19DOT3x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v20, v15, v4

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v20, v15, v5

    sget-object v20, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v20, v15, v6

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isBackCamcorderProResolutionRatioSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z

    move-result v15

    if-eqz v15, :cond_47

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_3c

    :cond_47
    const/4 v15, 0x0

    :goto_3c
    new-array v14, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v14, v3

    aput-object v1, v14, v4

    aput-object v2, v14, v5

    aput-object v15, v14, v6

    invoke-static {v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_48

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_3d

    :cond_48
    const/4 v2, -0x1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v1, v14, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_3d
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_CINEMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    new-array v0, v4, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isFrontCamcorderRatioResolutionSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_3e

    :cond_49
    const/4 v0, 0x0

    :goto_3e
    new-array v1, v4, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isFrontCamcorderRatioResolutionSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z

    move-result v1

    if-eqz v1, :cond_4a

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_3f

    :cond_4a
    const/4 v1, 0x0

    :goto_3f
    new-array v2, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19DOT3x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v14, v2, v4

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v14, v2, v5

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v14, v2, v6

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isFrontCamcorderRatioResolutionSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z

    move-result v2

    if-eqz v2, :cond_4b

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_40

    :cond_4b
    const/4 v2, 0x0

    :goto_40
    new-array v14, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v14, v3

    aput-object v1, v14, v4

    aput-object v2, v14, v5

    invoke-static {v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_4c

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_41

    :cond_4c
    const/4 v2, -0x1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v1, v14, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_41
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_CINEMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LIVE_FOCUS_DUAL_CAPTURE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LIVE_FOCUS_DUAL_CAPTURE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LIVE_FOCUS_DUAL_CAPTURE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LIVE_FOCUS_DUAL_CAPTURE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DUAL_CAPTURE_IN_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LIVE_FOCUS_DUAL_CAPTURE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DUAL_CAPTURE_IN_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LIVE_FOCUS_DUAL_CAPTURE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DUAL_CAPTURE_IN_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_TAP_AND_HOLD_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HOLD_CAMERA_BUTTON_TO_TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HOLD_CAMERA_BUTTON_TO_TAKE_BURST_SHOTS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HOLD_CAMERA_BUTTON_TO_CREATE_GIF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v5

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HOLD_CAMERA_BUTTON_TO_TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HOLD_CAMERA_BUTTON_TO_TAKE_BURST_SHOTS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HOLD_CAMERA_BUTTON_TO_CREATE_GIF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_4d
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_DETECTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_DETECTION_MENU_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_DETECTION_MENU_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_DETECTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_DETECTION_MENU_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_DETECTION_MENU_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->SUPER_SLOW_MOTION_MAX_FRC_TIME:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v0

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->SUPER_SLOW_MOTION_MAX_FRC_TIME:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_4e

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_42

    :cond_4e
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->SUPER_SLOW_MOTION_MAX_FRC_TIME:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v0

    const/16 v1, 0x320

    if-ne v0, v1, :cond_4f

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_4f
    :goto_42
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMPOSITION_GUIDE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMPOSITION_GUIDE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMPOSITION_GUIDE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMPOSITION_GUIDE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMPOSITION_GUIDE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMPOSITION_GUIDE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v14}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v14

    if-eqz v14, :cond_50

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_43

    :cond_50
    const/4 v14, 0x0

    :goto_43
    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    sget-object v14, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_TELE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v14}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v14

    if-eqz v14, :cond_51

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_44

    :cond_51
    const/4 v14, 0x0

    :goto_44
    aput-object v14, v2, v5

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v2, 0xe

    new-array v14, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v4

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v5

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v6

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v7

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v8

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v9

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v10

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v11

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v12

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X20:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v13

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v15, 0xb

    aput-object v2, v14, v15

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X50:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v15, 0xc

    aput-object v2, v14, v15

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X100:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v15, 0xd

    aput-object v2, v14, v15

    invoke-static {v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x258

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xfa0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1770

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x1f40

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x2ee0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X20:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x4e20

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X50:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const v2, 0xc350

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X100:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const v2, 0x186a0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_SUPER_STEADY_ZOOM_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_LENS_TYPE_CHANGE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_53

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_BACK_CAMERA_ANGLE_CHANGE_BY_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE_NORMAL_X2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_45

    :cond_52
    const/4 v0, 0x0

    :goto_45
    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v14, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v15, v14, v3

    aput-object v0, v14, v4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v14, v5

    invoke-static {v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE_NORMAL_X2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_53
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_54

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PANORAMA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PANORAMA_LENS_TYPE_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PANORAMA_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PANORAMA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PANORAMA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PANORAMA_LENS_TYPE_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PANORAMA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PANORAMA_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PANORAMA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_54
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    sget-object v14, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_TELE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v14}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v14

    if-eqz v14, :cond_55

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_46

    :cond_55
    const/4 v14, 0x0

    :goto_46
    aput-object v14, v2, v5

    sget-object v14, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_SECOND_TELE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v14}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v14

    if-eqz v14, :cond_56

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_SECOND_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-object/from16 v16, v14

    goto :goto_47

    :cond_56
    const/16 v16, 0x0

    :goto_47
    aput-object v16, v2, v6

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_TELE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_57

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_57
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_SECOND_TELE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_SECOND_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_58
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v5

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_SECOND_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v6

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_VIDEO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_VIDEO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_VIDEO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_VIDEO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_SECOND_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_VIDEO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_ANGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_ANGLE_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_ANGLE_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_ANGLE_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SENSOR_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_ANGLE_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SENSOR_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ACTION_BAR_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ACTION_BAR_BIXBY_VISION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ACTION_BAR_AR_EMOJI_EXTERNAL_PACKAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_INTELLIGENT_RECOGNITION_TIPS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_59

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SCENE_OPTIMIZER_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SCENE_OPTIMIZER_BUTTON_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SCENE_OPTIMIZER_BUTTON_DISABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SCENE_OPTIMIZER_BUTTON_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SCENE_OPTIMIZER_BUTTON_DISABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_59
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_NIGHT_MODE_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_NIGHT_MODE_BUTTON_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_NIGHT_MODE_BUTTON_DISABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_NIGHT_MODE_BUTTON_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_NIGHT_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_NIGHT_MODE_BUTTON_DISABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_NIGHT_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MOTION_PHOTO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MOTION_PHOTO_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MOTION_PHOTO_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MOTION_PHOTO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MOTION_PHOTO_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MOTION_PHOTO_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PICTURE_FORMAT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PICTURE_FORMAT_RAW:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PICTURE_FORMAT_JPEG:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PICTURE_FORMAT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PICTURE_FORMAT_RAW:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PICTURE_FORMAT_JPEG:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v9, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v5

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_AUTO_TRACKING_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v6

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_AUTO_TRACKING_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v7

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_AUTO_TRACKING_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v8

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_AUTO_TRACKING_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_AUTO_TRACKING_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v7}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_AUTO_TRACKING_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_EXTENDED_CAPTURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_5a

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v2, 0xb

    new-array v14, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_5SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_6SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v4

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_7SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v5

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_8SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v6

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_9SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v7

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_10SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v8

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_11SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v9

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_12SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v10

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_13SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v11

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_14SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v12

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_15SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v14, v13

    invoke-static {v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    :cond_5a
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v9, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_5SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_6SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_7SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v5

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_8SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v6

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_9SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v7

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_10SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v8

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_48
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_5SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_6SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v9}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_7SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v10}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_8SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v11}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_9SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v12}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_10SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v13}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_EXTENDED_CAPTURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_5b

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_11SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_12SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_13SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_14SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME_15SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_5b
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_PIP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v3

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_SPLIT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v4

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_SINGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v14, v2, v5

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_PIP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_SPLIT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_SINGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    const/16 v0, 0xb

    new-array v1, v0, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v7

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v8

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v9

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v10

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v11

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v12

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v13

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v14, -0x1

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    const/16 v0, 0xb

    new-array v1, v0, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v7

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v8

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v9

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v10

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v11

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v12

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v13

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v14, -0x1

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    const/16 v0, 0xb

    new-array v1, v0, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v7

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v8

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v9

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v10

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v11

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v12

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v0, v1, v13

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v14, -0x1

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v1, v2, v14}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v1, v0, v13

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v6, -0x1

    invoke-static {v1, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v1, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v1, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v1, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v1, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v1, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v1, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v1, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v1, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v1, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v1, v2, v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->DUAL_RECORDING_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-array v2, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->DUAL_RECORDING_TYPE_PIP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v5, v2, v3

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->DUAL_RECORDING_TYPE_SPLIT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v5, v2, v4

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->DUAL_RECORDING_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DUAL_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->DUAL_RECORDING_TYPE_PIP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DUAL_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->DUAL_RECORDING_TYPE_SPLIT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DUAL_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "commandId",
            "key",
            "value"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mCommandIdKeyMap:Ljava/util/EnumMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mKeyCommandIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mKeyCommandIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0
.end method

.method public static getSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mCommandIdKeyMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSettingKey : Can\'t find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " at depot"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CommandIdMap"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mCommandIdKeyMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    return-object p0
.end method

.method public static getSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mCommandIdKeyMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSettingValue : Can\'t find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " at depot"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CommandIdMap"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mCommandIdKeyMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " don\'t have sub option list"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs initSubCommandIdList([Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandIdList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isSubCommandIdExist(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->mSubCommandIdMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
