.class public final enum Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;
.super Ljava/lang/Enum;
.source "CameraDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum ACTIVITY_NOT_FOUND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum AR_EMOJI_ENABLE_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum BIXBY_VISION_ENABLE_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum CAMERA_BUSY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum CHANGE_STORAGE_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum CHECK_INSIDE_POCKET:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum DEFAULT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum DELETE_IMAGE_FROM_MINIVIEWER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum ERROR_RECORDING_START_FAIL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum FINISH_ON_ERROR:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum FORCED_SOUND_WAIVER_CONDITION_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum GPS_EULA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum LIGHT_ROOM_PRESET_HELP:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum LOCATION_TAG_GUIDE_CHINA_FIRST_LAUNCH_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum LOCATION_TAG_GUIDE_FIRST_LAUNCH_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum LOCATION_TAG_GUIDE_IMPROVE_ACCURACY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum MANDATORY_APP_UPDATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum MANDATORY_SYSTEM_UPDATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum OPTIONAL_APP_UPDATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum OVERHEAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum PLUGGED_LOW_BATTERY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum REMOVE_MY_FILTER_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum RUNTIME_PERMISSIONS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum RUNTIME_PERMISSIONS_LOCATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum RUNTIME_PERMISSIONS_ON_SECURE_LOCK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum SINGLE_TAKE_STORAGE_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum SMART_VIEW_NOT_SUPPORTED_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum STORAGE_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum TALK_BACK_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum UNABLE_TO_USE_CAMERA_DURING_VIDEO_CALL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum UNAVAILABLE_HRM_CAPTURE_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field public static final enum UPDATE_USING_DATA_INFORMATION_SECURITY_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    new-instance v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->DEFAULT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v3, "FINISH_ON_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->FINISH_ON_ERROR:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v5, "STORAGE_STATUS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v7, "SINGLE_TAKE_STORAGE_STATUS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->SINGLE_TAKE_STORAGE_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v9, "UNABLE_TO_USE_CAMERA_DURING_VIDEO_CALL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->UNABLE_TO_USE_CAMERA_DURING_VIDEO_CALL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v11, "CHANGE_STORAGE_SETTING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CHANGE_STORAGE_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v11, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v13, "LIGHT_ROOM_PRESET_HELP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LIGHT_ROOM_PRESET_HELP:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v15, "LOCATION_TAG_GUIDE_FIRST_LAUNCH_CAMERA"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_FIRST_LAUNCH_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v15, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v14, "LOCATION_TAG_GUIDE_CHINA_FIRST_LAUNCH_CAMERA"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_CHINA_FIRST_LAUNCH_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v14, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v12, "LOCATION_TAG_GUIDE_IMPROVE_ACCURACY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v12, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v10, "LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v8, "GPS_EULA"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->GPS_EULA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v8, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v6, "PLUGGED_LOW_BATTERY"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->PLUGGED_LOW_BATTERY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v4, "OVERHEAT"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->OVERHEAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v2, "TALK_BACK_GUIDE"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->TALK_BACK_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v6, "CAMERA_BUSY"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CAMERA_BUSY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v4, "RUNTIME_PERMISSIONS"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v2, "RUNTIME_PERMISSIONS_LOCATION"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS_LOCATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v6, "RUNTIME_PERMISSIONS_ON_SECURE_LOCK"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS_ON_SECURE_LOCK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v4, "CHECK_INSIDE_POCKET"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CHECK_INSIDE_POCKET:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v2, "UNAVAILABLE_HRM_CAPTURE_GUIDE"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->UNAVAILABLE_HRM_CAPTURE_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v6, "ERROR_RECORDING_START_FAIL"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ERROR_RECORDING_START_FAIL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v4, "ACTIVITY_NOT_FOUND"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ACTIVITY_NOT_FOUND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v4, "BIXBY_VISION_ENABLE_DLG"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->BIXBY_VISION_ENABLE_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v6, "AR_EMOJI_ENABLE_DLG"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->AR_EMOJI_ENABLE_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v6, "FORCED_SOUND_WAIVER_CONDITION_DLG"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->FORCED_SOUND_WAIVER_CONDITION_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v6, "UPDATE_USING_DATA_INFORMATION_SECURITY_DLG"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->UPDATE_USING_DATA_INFORMATION_SECURITY_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v6, "REMOVE_MY_FILTER_DLG"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->REMOVE_MY_FILTER_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v6, "SMART_VIEW_NOT_SUPPORTED_RESOLUTION"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->SMART_VIEW_NOT_SUPPORTED_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v6, "DELETE_IMAGE_FROM_MINIVIEWER"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->DELETE_IMAGE_FROM_MINIVIEWER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v6, "MANDATORY_SYSTEM_UPDATE"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->MANDATORY_SYSTEM_UPDATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v6, "MANDATORY_APP_UPDATE"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->MANDATORY_APP_UPDATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v6, "OPTIONAL_APP_UPDATE"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->OPTIONAL_APP_UPDATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const/16 v2, 0x21

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v27, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v29, v2, v0

    const/16 v0, 0x1b

    aput-object v30, v2, v0

    const/16 v0, 0x1c

    aput-object v31, v2, v0

    const/16 v0, 0x1d

    aput-object v32, v2, v0

    const/16 v0, 0x1e

    aput-object v33, v2, v0

    const/16 v0, 0x1f

    aput-object v34, v2, v0

    const/16 v0, 0x20

    aput-object v4, v2, v0

    sput-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    return-object v0
.end method
