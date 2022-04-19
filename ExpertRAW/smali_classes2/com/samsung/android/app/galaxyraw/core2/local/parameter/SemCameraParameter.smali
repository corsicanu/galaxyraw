.class public Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;
.super Ljava/lang/Object;
.source "SemCameraParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;,
        Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;,
        Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$OperationMode;
    }
.end annotation


# static fields
.field public static final CONTROL_DEVICE_SWITCHING:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final CONTROL_OPERATION_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_RECORDING_DR_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_RECORDING_MAX_FPS:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_SHOOTING_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_SSM_SHOT_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_SW_SUPER_VDIS:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_SW_VDIS:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_VIDEO_BEAUTY_FACE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_VT_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INFO_FACTORY_TEST:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final INFO_FIRST_ENTRANCE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final INFO_SAMSUNG_CAMERA:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPERATION_MODE_AR_CORE:Ljava/lang/String; = "arcore"

.field public static final OPERATION_MODE_CROSS_APP:Ljava/lang/String; = "crossapp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OPERATION_MODE_DRAMTEST:Ljava/lang/String; = "dramtest"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OPERATION_MODE_NONE:Ljava/lang/String; = "none"

.field public static final OPERATION_MODE_SMART_STAY:Ljava/lang/String; = "smartstay"

.field public static final RECORDING_DR_MODE_3HDR:Ljava/lang/String; = "3hdr"

.field public static final RECORDING_DR_MODE_HDR10:Ljava/lang/String; = "hdr10"

.field public static final RECORDING_DR_MODE_SDR:Ljava/lang/String; = "sdr"

.field public static final SENSOR_STREAM_TYPE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENSOR_STREAM_TYPE_CROP:Ljava/lang/Integer;

.field public static final SENSOR_STREAM_TYPE_NORMAL:Ljava/lang/Integer;

.field public static final SSM_SHOT_MODE_MULTI:Ljava/lang/Integer;

.field public static final SSM_SHOT_MODE_MULTI_FRC:Ljava/lang/Integer;

.field public static final SSM_SHOT_MODE_SINGLE:Ljava/lang/Integer;

.field public static final SSM_SHOT_MODE_SINGLE_FRC:Ljava/lang/Integer;


# instance fields
.field private mParameters:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v1, "first-entrance"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->INFO_FIRST_ENTRANCE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v1, "samsungcamera"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->INFO_SAMSUNG_CAMERA:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v1, "factorytest"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->INFO_FACTORY_TEST:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v1, "shootingmode"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_SHOOTING_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v1, "recording-fps"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_RECORDING_MAX_FPS:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v1, "sw-vdis"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_SW_VDIS:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v1, "video-beautyface"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_VIDEO_BEAUTY_FACE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v1, "device-switching"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_DEVICE_SWITCHING:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v1, "vtmode"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_VT_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v1, "operation_mode"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_OPERATION_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->SSM_SHOT_MODE_MULTI:Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->SSM_SHOT_MODE_SINGLE:Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->SSM_SHOT_MODE_MULTI_FRC:Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->SSM_SHOT_MODE_SINGLE_FRC:Ljava/lang/Integer;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v3, "ssm_shot_mode"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_SSM_SHOT_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v3, "recording_dr_mode"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_RECORDING_DR_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v3, "sw-super_vdis"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_SW_SUPER_VDIS:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->SENSOR_STREAM_TYPE_NORMAL:Ljava/lang/Integer;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->SENSOR_STREAM_TYPE_CROP:Ljava/lang/Integer;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v1, "stream_type"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->SENSOR_STREAM_TYPE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->mParameters:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static applyToCameraDevice(Landroid/hardware/camera2/CameraDevice;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "device",
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->setSamsungParameter(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "parameters must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "device must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static applyToCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "device",
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->setSamsungParameter(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "parameters must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "device must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBuilder()Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->createDefaultBuilder()Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static createDefaultBuilder()Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;
    .locals 5

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;-><init>(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->INFO_FIRST_ENTRANCE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->INFO_SAMSUNG_CAMERA:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->INFO_FACTORY_TEST:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_SHOOTING_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_RECORDING_MAX_FPS:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_SW_VDIS:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_VIDEO_BEAUTY_FACE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_DEVICE_SWITCHING:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_VT_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_OPERATION_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_SSM_SHOT_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_RECORDING_DR_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v2, "sdr"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_SW_SUPER_VDIS:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->SENSOR_STREAM_TYPE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->SENSOR_STREAM_TYPE_NORMAL:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->mParameters:Ljava/lang/String;

    return-object p0
.end method
