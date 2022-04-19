.class public final enum Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;
.super Ljava/lang/Enum;
.source "DngUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RawDataFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

.field public static final enum BAYER:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

.field public static final enum RGB16:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

    const-string v1, "BAYER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;->BAYER:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

    const-string v3, "RGB16"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;->RGB16:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

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
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;->mValue:I

    return p0
.end method
