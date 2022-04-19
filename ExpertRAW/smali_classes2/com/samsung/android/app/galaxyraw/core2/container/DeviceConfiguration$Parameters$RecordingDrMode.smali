.class public final enum Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;
.super Ljava/lang/Enum;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordingDrMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

.field public static final enum MODE_3HDR:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

.field public static final enum MODE_HDR10:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

.field public static final enum MODE_SDR:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    const-string v1, "MODE_SDR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->MODE_SDR:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    const-string v3, "MODE_HDR10"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->MODE_HDR10:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    const-string v5, "MODE_3HDR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->MODE_3HDR:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

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

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->value:I

    return p0
.end method
