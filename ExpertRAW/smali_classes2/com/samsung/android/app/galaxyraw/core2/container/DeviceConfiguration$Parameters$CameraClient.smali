.class public final enum Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;
.super Ljava/lang/Enum;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraClient"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field public static final enum CAMERA_CLIENT_CAMERA_X:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field public static final enum CAMERA_CLIENT_SAMSUNG_ATTACH:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field public static final enum CAMERA_CLIENT_SAMSUNG_DEFAULT:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field public static final enum CAMERA_CLIENT_SAMSUNG_SDK:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field public static final enum CAMERA_CLIENT_SAMSUNG_VIP_SDK:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    const-string v1, "CAMERA_CLIENT_SAMSUNG_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;->CAMERA_CLIENT_SAMSUNG_DEFAULT:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    const-string v3, "CAMERA_CLIENT_SAMSUNG_SDK"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;->CAMERA_CLIENT_SAMSUNG_SDK:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    const-string v6, "CAMERA_CLIENT_CAMERA_X"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v5, v7}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;->CAMERA_CLIENT_CAMERA_X:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    const-string v8, "CAMERA_CLIENT_SAMSUNG_VIP_SDK"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;->CAMERA_CLIENT_SAMSUNG_VIP_SDK:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    new-instance v8, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    const-string v10, "CAMERA_CLIENT_SAMSUNG_ATTACH"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;->CAMERA_CLIENT_SAMSUNG_ATTACH:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    new-array v10, v11, [Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

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

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;->value:I

    return p0
.end method
