.class public final enum Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;
.super Ljava/lang/Enum;
.source "CamDeviceRequestOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PictureRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

.field public static final enum FIRST_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

.field public static final enum FIRST_RAW:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

.field public static final enum FIRST_UN_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

.field public static final enum SECOND_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

.field public static final enum SECOND_RAW:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

.field public static final enum SECOND_UN_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

.field public static final enum THIRD_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

.field public static final enum THIRD_RAW:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

.field public static final enum THIRD_UN_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;


# instance fields
.field private picFormat:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

.field private picType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->FIRST:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->COMP:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    const-string v3, "FIRST_COMP"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->FIRST_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->FIRST:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->UN_COMP:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    const-string v5, "FIRST_UN_COMP"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->FIRST_UN_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->FIRST:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->RAW:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    const-string v7, "FIRST_RAW"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->FIRST_RAW:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->SECOND:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->COMP:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    const-string v9, "SECOND_COMP"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->SECOND_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->SECOND:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->UN_COMP:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    const-string v11, "SECOND_UN_COMP"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->SECOND_UN_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->SECOND:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    sget-object v11, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->RAW:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    const-string v13, "SECOND_RAW"

    const/4 v14, 0x5

    invoke-direct {v7, v13, v14, v9, v11}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)V

    sput-object v7, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->SECOND_RAW:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v11, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->THIRD:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->COMP:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    const-string v15, "THIRD_COMP"

    const/4 v14, 0x6

    invoke-direct {v9, v15, v14, v11, v13}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)V

    sput-object v9, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->THIRD_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    new-instance v11, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->THIRD:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->UN_COMP:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    const-string v14, "THIRD_UN_COMP"

    const/4 v12, 0x7

    invoke-direct {v11, v14, v12, v13, v15}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)V

    sput-object v11, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->THIRD_UN_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v14, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->THIRD:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    sget-object v15, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->RAW:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    const-string v12, "THIRD_RAW"

    const/16 v10, 0x8

    invoke-direct {v13, v12, v10, v14, v15}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)V

    sput-object v13, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->THIRD_RAW:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    const/16 v12, 0x9

    new-array v12, v12, [Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    aput-object v0, v12, v4

    aput-object v1, v12, v6

    aput-object v2, v12, v8

    const/4 v0, 0x3

    aput-object v3, v12, v0

    const/4 v0, 0x4

    aput-object v5, v12, v0

    const/4 v0, 0x5

    aput-object v7, v12, v0

    const/4 v0, 0x6

    aput-object v9, v12, v0

    const/4 v0, 0x7

    aput-object v11, v12, v0

    aput-object v13, v12, v10

    sput-object v12, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "picType",
            "picFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;",
            "Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->picType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->picFormat:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    return-void
.end method

.method static getPictureRequestType(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "picType",
            "picFormat"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->values()[Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$PictureRequestType$ZrG_xi4n68kvbVMoEPRcDkdJGHg;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$PictureRequestType$ZrG_xi4n68kvbVMoEPRcDkdJGHg;-><init>(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    return-object p0
.end method

.method static synthetic lambda$getPictureRequestType$0(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)Z
    .locals 1

    iget-object v0, p2, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->picType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    if-ne v0, p0, :cond_0

    iget-object p0, p2, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->picFormat:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    return-object v0
.end method


# virtual methods
.method public getPicFormat()Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->picFormat:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    return-object p0
.end method

.method public getPicType()Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->picType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    return-object p0
.end method
