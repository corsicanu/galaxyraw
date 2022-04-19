.class public final enum Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;
.super Ljava/lang/Enum;
.source "PublicMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SensorPixelMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

.field public static final enum MODE_DEFAULT:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

.field public static final enum MODE_MAXIMUM_RESOLUTION:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;


# instance fields
.field sensorPixelMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    const-string v1, "MODE_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;->MODE_DEFAULT:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    const-string v3, "MODE_MAXIMUM_RESOLUTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;->MODE_MAXIMUM_RESOLUTION:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

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
            "sensorPixelMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;->sensorPixelMode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    return-object v0
.end method
