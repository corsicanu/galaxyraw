.class public final enum Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;
.super Ljava/lang/Enum;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QuramResizeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

.field public static final enum BILINEAR:Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

.field public static final enum BILINEAR_EX:Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

.field public static final enum FOUR_SAMPLING:Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

.field public static final enum LANCZOS:Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;


# instance fields
.field private final typeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    const-string v1, "BILINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->BILINEAR:Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    const-string v3, "BILINEAR_EX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->BILINEAR_EX:Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    const-string v5, "FOUR_SAMPLING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->FOUR_SAMPLING:Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    const-string v7, "LANCZOS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->LANCZOS:Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

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
            "typeId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->typeId:I

    return-void
.end method

.method public static getDefaultType()Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->LANCZOS:Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    return-object v0
.end method


# virtual methods
.method public getTypeId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->typeId:I

    return p0
.end method
