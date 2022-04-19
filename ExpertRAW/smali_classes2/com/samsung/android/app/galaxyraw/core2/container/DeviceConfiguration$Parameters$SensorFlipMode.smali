.class public final enum Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;
.super Ljava/lang/Enum;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SensorFlipMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

.field public static final enum FLIP_MODE_HORIZONTAL:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

.field public static final enum FLIP_MODE_HORIZONTAL_VERTICAL:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

.field public static final enum FLIP_MODE_NONE:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

.field public static final enum FLIP_MODE_PHYSICAL_HORIZONTAL:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

.field public static final enum FLIP_MODE_PHYSICAL_VERTICAL:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

.field public static final enum FLIP_MODE_VERTICAL:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    const-string v1, "FLIP_MODE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->FLIP_MODE_NONE:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    const-string v3, "FLIP_MODE_HORIZONTAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->FLIP_MODE_HORIZONTAL:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    const-string v5, "FLIP_MODE_VERTICAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->FLIP_MODE_VERTICAL:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    const-string v7, "FLIP_MODE_HORIZONTAL_VERTICAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->FLIP_MODE_HORIZONTAL_VERTICAL:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    const-string v9, "FLIP_MODE_PHYSICAL_HORIZONTAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->FLIP_MODE_PHYSICAL_HORIZONTAL:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    const-string v11, "FLIP_MODE_PHYSICAL_VERTICAL"

    const/4 v12, 0x5

    const/16 v13, 0x8

    invoke-direct {v9, v11, v12, v13}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->FLIP_MODE_PHYSICAL_VERTICAL:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

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
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->value:I

    return p0
.end method
