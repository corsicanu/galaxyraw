.class final enum Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;
.super Ljava/lang/Enum;
.source "ActionStateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ActionId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CAPTURE_ANGLE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CAPTURE_CAMERA:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CAPTURE_FLASH:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CAPTURE_MODE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CAPTURE_MOTIONPHOTO:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CAPTURE_MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CAPTURE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CAPTURE_SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CAPTURE_SUPERSTEADY:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CAPTURE_TIMER:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CAPTURE_ZOOM:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CHANGE_ANGLE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CHANGE_CAMERA:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CHANGE_FLASH:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CHANGE_MODE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CHANGE_MOTIONPHOTO:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CHANGE_MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CHANGE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CHANGE_SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CHANGE_SUPERSTEADY:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CHANGE_TIMER:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CHANGE_ZOOM:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CHECK_INFO:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CHECK_MODE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_CREATE_MYFILTER:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_GET_LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_SELECT_MYFILTER:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_SET_LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

.field public static final enum ACTION_SHOW_SETTING:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;


# instance fields
.field private strActionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v1, "ACTION_CHANGE_MODE"

    const/4 v2, 0x0

    const-string v3, "viv.cameraApp.action.change.mode"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_MODE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v3, "ACTION_CHANGE_CAMERA"

    const/4 v4, 0x1

    const-string v5, "viv.cameraApp.action.change.camera"

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_CAMERA:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v5, "ACTION_CHANGE_FLASH"

    const/4 v6, 0x2

    const-string v7, "viv.cameraApp.action.change.flash"

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_FLASH:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v7, "ACTION_CHANGE_TIMER"

    const/4 v8, 0x3

    const-string v9, "viv.cameraApp.action.change.timer"

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_TIMER:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v9, "ACTION_CAPTURE_MODE"

    const/4 v10, 0x4

    const-string v11, "viv.cameraApp.action.capture.mode"

    invoke-direct {v7, v9, v10, v11}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_MODE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v11, "ACTION_CAPTURE_CAMERA"

    const/4 v12, 0x5

    const-string v13, "viv.cameraApp.action.capture.camera"

    invoke-direct {v9, v11, v12, v13}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_CAMERA:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v11, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v13, "ACTION_CAPTURE_TIMER"

    const/4 v14, 0x6

    const-string v15, "viv.cameraApp.action.capture.timer"

    invoke-direct {v11, v13, v14, v15}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_TIMER:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v15, "ACTION_CAPTURE_FLASH"

    const/4 v14, 0x7

    const-string v12, "viv.cameraApp.action.capture.flash"

    invoke-direct {v13, v15, v14, v12}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_FLASH:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v12, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v15, "ACTION_SHOW_SETTING"

    const/16 v14, 0x8

    const-string v10, "viv.cameraApp.action.show.setting"

    invoke-direct {v12, v15, v14, v10}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_SHOW_SETTING:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v15, "ACTION_CHECK_MODE"

    const/16 v14, 0x9

    const-string v8, "viv.cameraApp.action.check.mode"

    invoke-direct {v10, v15, v14, v8}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHECK_MODE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v8, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v15, "ACTION_CHECK_INFO"

    const/16 v14, 0xa

    const-string v6, "viv.cameraApp.action.check.info"

    invoke-direct {v8, v15, v14, v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHECK_INFO:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v6, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v15, "ACTION_CHANGE_SUPERSTEADY"

    const/16 v14, 0xb

    const-string v4, "viv.cameraApp.action.change.supersteady"

    invoke-direct {v6, v15, v14, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_SUPERSTEADY:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v15, "ACTION_CAPTURE_SUPERSTEADY"

    const/16 v14, 0xc

    const-string v2, "viv.cameraApp.action.capture.supersteady"

    invoke-direct {v4, v15, v14, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_SUPERSTEADY:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v15, "ACTION_CHANGE_MOTIONPHOTO"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "viv.cameraApp.action.change.motionphoto"

    invoke-direct {v2, v15, v14, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_MOTIONPHOTO:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v15, "ACTION_CAPTURE_MOTIONPHOTO"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "viv.cameraApp.action.capture.motionphoto"

    invoke-direct {v4, v15, v14, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_MOTIONPHOTO:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v15, "ACTION_CHANGE_ZOOM"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "viv.cameraApp.action.change.zoom"

    invoke-direct {v2, v15, v14, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_ZOOM:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v15, "ACTION_CAPTURE_ZOOM"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "viv.cameraApp.action.capture.zoom"

    invoke-direct {v4, v15, v14, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_ZOOM:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v15, "ACTION_CHANGE_RESOLUTION"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "viv.cameraApp.action.change.resolution"

    invoke-direct {v2, v15, v14, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v15, "ACTION_CAPTURE_RESOLUTION"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "viv.cameraApp.action.capture.resolution"

    invoke-direct {v4, v15, v14, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v15, "ACTION_CHANGE_ANGLE"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "viv.cameraApp.action.change.angle"

    invoke-direct {v2, v15, v14, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_ANGLE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v15, "ACTION_CAPTURE_ANGLE"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "viv.cameraApp.action.capture.angle"

    invoke-direct {v4, v15, v14, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_ANGLE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v15, "ACTION_CREATE_MYFILTER"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "viv.cameraApp.action.create.myfilter"

    invoke-direct {v2, v15, v14, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CREATE_MYFILTER:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v15, "ACTION_SELECT_MYFILTER"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const-string v2, "viv.cameraApp.action.select.myfilter"

    invoke-direct {v4, v15, v14, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_SELECT_MYFILTER:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v14, "ACTION_GET_LOCATION_TAG"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const-string v4, "viv.cameraApp.action.gallery.getlocationtag"

    invoke-direct {v2, v14, v15, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_GET_LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v14, "ACTION_SET_LOCATION_TAG"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const-string v2, "viv.cameraApp.action.gallery.setlocationtag"

    invoke-direct {v4, v14, v15, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_SET_LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v14, "ACTION_CHANGE_MULTI_RECORDING_TYPE"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const-string v4, "viv.cameraApp.action.change.multi_recording_type"

    invoke-direct {v2, v14, v15, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v14, "ACTION_CAPTURE_MULTI_RECORDING_TYPE"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const-string v2, "viv.cameraApp.action.capture.multi_recording_type"

    invoke-direct {v4, v14, v15, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v14, "ACTION_CHANGE_SINGLE_TAKE_CAPTURE_TIME"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const-string v4, "viv.cameraApp.action.change.single_take_capture_time"

    invoke-direct {v2, v14, v15, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const-string v14, "ACTION_CAPTURE_SINGLE_TAKE_CAPTURE_TIME"

    const/16 v15, 0x1c

    move-object/from16 v31, v2

    const-string v2, "viv.cameraApp.action.capture.single_take_capture_time"

    invoke-direct {v4, v14, v15, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const/16 v2, 0x1d

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    const/4 v14, 0x0

    aput-object v0, v2, v14

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

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v4, v2, v0

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->$VALUES:[Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "string"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->strActionId:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->$VALUES:[Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    return-object v0
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->strActionId:Ljava/lang/String;

    return-object p0
.end method
