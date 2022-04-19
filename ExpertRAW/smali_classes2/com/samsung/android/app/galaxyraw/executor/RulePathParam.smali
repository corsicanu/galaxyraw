.class Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;
.super Ljava/lang/Object;
.source "RulePathParam.java"


# static fields
.field static final PARAMETER_TYPE_CAMERA_FACING:I = 0x2

.field static final PARAMETER_TYPE_CAMERA_SETTING:I = 0x3

.field static final PARAMETER_TYPE_CAPTURE_MODE:I = 0x4

.field static final PARAMETER_TYPE_RESOLUTION:I = 0x5

.field static final PARAMETER_TYPE_SHOOTING_MODE:I = 0x1

.field static final PARAMETER_TYPE_UNKNOWN:I = 0x0

.field static final PARAMETER_VALUE_TYPE_INTEGER:Ljava/lang/String; = "Integer"

.field static final PARAMETER_VALUE_TYPE_STRING:Ljava/lang/String; = "String"

.field static final PARAM_ID_ANGLE:I = 0xd

.field static final PARAM_ID_CAMERA_FACING:I = 0x6

.field static final PARAM_ID_FLASH:I = 0x3

.field static final PARAM_ID_INFO:I = 0x7

.field static final PARAM_ID_LOG_CAMERA_CHANGE_MODE:I = 0x3e8

.field static final PARAM_ID_MODE_NAME:I = 0x4

.field static final PARAM_ID_MODE_QR_SCANNER:I = 0x8

.field static final PARAM_ID_MOTION_PHOTO:I = 0xa

.field static final PARAM_ID_MULTI_RECORDING_TYPE:I = 0xe

.field static final PARAM_ID_RESOLUTION:I = 0xb

.field static final PARAM_ID_SHOOTING_MODE:I = 0x5

.field static final PARAM_ID_SHOOTING_SELECT:I = 0x1

.field static final PARAM_ID_SINGLE_TAKE_CAPTURE_TIME:I = 0xf

.field static final PARAM_ID_SUPER_STEADY:I = 0x9

.field static final PARAM_ID_TIMER:I = 0x2

.field static final PARAM_ID_UNKNOWN:I = -0x1

.field static final PARAM_ID_ZOOM:I = 0xc

.field static final PARAM_VALUE_ANGLE_TELE:Ljava/lang/String; = "tele"

.field static final PARAM_VALUE_ANGLE_ULTRA_WIDE:Ljava/lang/String; = "ultrawide"

.field static final PARAM_VALUE_ANGLE_WIDE:Ljava/lang/String; = "wide"

.field static final PARAM_VALUE_AUTO:Ljava/lang/String; = "auto"

.field static final PARAM_VALUE_MAX:Ljava/lang/String; = "max"

.field static final PARAM_VALUE_MIN:Ljava/lang/String; = "min"

.field static final PARAM_VALUE_MULTI_RECORDING_TYPE_PIP:Ljava/lang/String; = "pip"

.field static final PARAM_VALUE_MULTI_RECORDING_TYPE_SINGLE:Ljava/lang/String; = "single"

.field static final PARAM_VALUE_MULTI_RECORDING_TYPE_SPLIT:Ljava/lang/String; = "split"

.field static final PARAM_VALUE_OFF:Ljava/lang/String; = "off"

.field static final PARAM_VALUE_ON:Ljava/lang/String; = "on"

.field static final PARAM_VALUE_TIMER_10S:Ljava/lang/String; = "10"

.field static final PARAM_VALUE_TIMER_5S:Ljava/lang/String; = "5"

.field static final mParamTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mStringDepot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->mParamTypeMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam$2;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->mStringDepot:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->mStringDepot:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getParamIDbyName(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->mStringDepot:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    return v2
.end method

.method static getShootingModeNameFromModeParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeName"
        }
    .end annotation

    const-string v0, "Front "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "Rear "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method static getShootingModeNameFromSeparatedModeParam(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraType",
            "modeName",
            "isFront"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PORTRAIT_LIGHTING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Live focus"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getShootingModeCommandIdByModeName(Ljava/lang/String;Z)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)I

    move-result p2

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isSupported(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isSupported(IZ)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "0"

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Rear "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p2, "1"

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Front "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static getType(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramName"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getParamIDbyName(Ljava/lang/String;)I

    move-result p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->mParamTypeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method
