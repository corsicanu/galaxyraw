.class public final enum Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;
.super Ljava/lang/Enum;
.source "CamDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/CamDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageReaderHandlerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum FIRST_COMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum FIRST_RAW_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum FIRST_UNCOMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum MAIN_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum PICTURE_DEPTH:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum PREVIEW_DEPTH:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum SECOND_COMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum SECOND_RAW_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum SECOND_UNCOMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum SUB_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum THIRD_COMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum THIRD_RAW_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum THIRD_UNCOMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum THUMBNAIL:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum UNKNOWN:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    const-string v1, "MAIN_PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->MAIN_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    const-string v3, "SUB_PREVIEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->SUB_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    const-string v5, "FIRST_COMPRESSED_PICTURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->FIRST_COMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    const-string v7, "FIRST_UNCOMPRESSED_PICTURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->FIRST_UNCOMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    const-string v9, "FIRST_RAW_PICTURE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->FIRST_RAW_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    const-string v11, "SECOND_COMPRESSED_PICTURE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->SECOND_COMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    new-instance v11, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    const-string v13, "SECOND_UNCOMPRESSED_PICTURE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->SECOND_UNCOMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    const-string v15, "SECOND_RAW_PICTURE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->SECOND_RAW_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    new-instance v15, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    const-string v14, "THIRD_COMPRESSED_PICTURE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->THIRD_COMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    new-instance v14, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    const-string v12, "THIRD_UNCOMPRESSED_PICTURE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->THIRD_UNCOMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    new-instance v12, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    const-string v10, "THIRD_RAW_PICTURE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->THIRD_RAW_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    const-string v8, "PREVIEW_DEPTH"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->PREVIEW_DEPTH:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    new-instance v8, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    const-string v6, "PICTURE_DEPTH"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->PICTURE_DEPTH:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    const-string v4, "THUMBNAIL"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->THUMBNAIL:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    const-string v2, "UNKNOWN"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->UNKNOWN:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getImageReaderHandlerType(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$1;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$CamDeviceRequestOptions$PictureRequestType:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->UNKNOWN:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->THIRD_RAW_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->THIRD_UNCOMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->THIRD_COMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->SECOND_RAW_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->SECOND_UNCOMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->SECOND_COMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->FIRST_RAW_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->FIRST_UNCOMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->FIRST_COMPRESSED_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    return-object v0
.end method
