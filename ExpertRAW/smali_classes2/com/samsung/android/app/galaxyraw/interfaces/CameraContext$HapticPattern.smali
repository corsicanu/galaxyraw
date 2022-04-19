.class public final enum Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;
.super Ljava/lang/Enum;
.source "CameraContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HapticPattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

.field public static final enum CAMERA_LIST_SCROLLING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

.field public static final enum CAMERA_QUICK_SETTING_MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

.field public static final enum CAMERA_QUICK_SETTING_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

.field public static final enum CAMERA_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

.field public static final enum CAMERA_SHUTTER_CALLBACK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

.field public static final enum CAMERA_SHUTTER_MID:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

.field public static final enum QR_CODE_DETECTED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

.field public static final enum SHOOTING_MODE_TAP_AND_HOLD:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

.field public static final enum SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

.field public static final enum VIDEO_RECORD:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

.field public static final enum ZOOM_SLIDER_LARGE_TICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;


# instance fields
.field private mPatternId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    const-string v1, "CAMERA_SHUTTER_MID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->CAMERA_SHUTTER_MID:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    const-string v4, "CAMERA_SHUTTER"

    const/16 v5, 0x25

    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->CAMERA_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    const-string v5, "VIDEO_RECORD"

    const/4 v6, 0x2

    const/16 v7, 0x26

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->VIDEO_RECORD:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    const-string v7, "SLIDER"

    const/4 v8, 0x3

    const/16 v9, 0x29

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    const-string v9, "QR_CODE_DETECTED"

    const/4 v10, 0x4

    const/16 v11, 0x2c

    invoke-direct {v7, v9, v10, v11}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->QR_CODE_DETECTED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    const-string v11, "CAMERA_SHUTTER_CALLBACK"

    const/4 v12, 0x5

    const/16 v13, 0x30

    invoke-direct {v9, v11, v12, v13}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->CAMERA_SHUTTER_CALLBACK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    new-instance v11, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    const-string v13, "CAMERA_LIST_SCROLLING"

    const/4 v14, 0x6

    const/16 v15, 0x31

    invoke-direct {v11, v13, v14, v15}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->CAMERA_LIST_SCROLLING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    const-string v14, "ZOOM_SLIDER_LARGE_TICK"

    const/4 v12, 0x7

    invoke-direct {v13, v14, v12, v15}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->ZOOM_SLIDER_LARGE_TICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    new-instance v14, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    const-string v15, "CAMERA_QUICK_SETTING_STABILIZATION"

    const/16 v12, 0x8

    const/16 v10, 0x36

    invoke-direct {v14, v15, v12, v10}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->CAMERA_QUICK_SETTING_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    const-string v15, "CAMERA_QUICK_SETTING_MOTION_PHOTO"

    const/16 v12, 0x9

    const/16 v8, 0x37

    invoke-direct {v10, v15, v12, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->CAMERA_QUICK_SETTING_MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    new-instance v8, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    const-string v15, "SHOOTING_MODE_TAP_AND_HOLD"

    const/16 v12, 0xa

    invoke-direct {v8, v15, v12, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->SHOOTING_MODE_TAP_AND_HOLD:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    const/16 v15, 0xb

    new-array v15, v15, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    aput-object v0, v15, v2

    aput-object v1, v15, v3

    aput-object v4, v15, v6

    const/4 v0, 0x3

    aput-object v5, v15, v0

    const/4 v0, 0x4

    aput-object v7, v15, v0

    const/4 v0, 0x5

    aput-object v9, v15, v0

    const/4 v0, 0x6

    aput-object v11, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v14, v15, v0

    const/16 v0, 0x9

    aput-object v10, v15, v0

    aput-object v8, v15, v12

    sput-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
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
            "patternId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->mPatternId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    return-object v0
.end method


# virtual methods
.method public getPatternId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->mPatternId:I

    return p0
.end method
