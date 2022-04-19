.class public final enum Lcom/google/zxing/client/result/iot/IoTResultType;
.super Ljava/lang/Enum;
.source "IoTResultType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/client/result/iot/IoTResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/client/result/iot/IoTResultType;

.field public static final enum ON_BOARDING_STANDARD_QR:Lcom/google/zxing/client/result/iot/IoTResultType;

.field public static final enum SAMJIN_HUB_V3:Lcom/google/zxing/client/result/iot/IoTResultType;

.field public static final enum SAMJIN_SENSOR:Lcom/google/zxing/client/result/iot/IoTResultType;

.field public static final enum SMART_TAG_QR:Lcom/google/zxing/client/result/iot/IoTResultType;

.field public static final enum ST_Camera:Lcom/google/zxing/client/result/iot/IoTResultType;

.field public static final enum ZIGBEE_V3:Lcom/google/zxing/client/result/iot/IoTResultType;

.field public static final enum ZWAVE_V2_SPEC_NEW:Lcom/google/zxing/client/result/iot/IoTResultType;

.field public static final enum ZWAVE_V2_SPEC_OLD:Lcom/google/zxing/client/result/iot/IoTResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/google/zxing/client/result/iot/IoTResultType;

    const-string v1, "ON_BOARDING_STANDARD_QR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/result/iot/IoTResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/iot/IoTResultType;->ON_BOARDING_STANDARD_QR:Lcom/google/zxing/client/result/iot/IoTResultType;

    new-instance v1, Lcom/google/zxing/client/result/iot/IoTResultType;

    const-string v3, "SAMJIN_SENSOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/client/result/iot/IoTResultType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/client/result/iot/IoTResultType;->SAMJIN_SENSOR:Lcom/google/zxing/client/result/iot/IoTResultType;

    new-instance v3, Lcom/google/zxing/client/result/iot/IoTResultType;

    const-string v5, "SAMJIN_HUB_V3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/client/result/iot/IoTResultType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/client/result/iot/IoTResultType;->SAMJIN_HUB_V3:Lcom/google/zxing/client/result/iot/IoTResultType;

    new-instance v5, Lcom/google/zxing/client/result/iot/IoTResultType;

    const-string v7, "ZIGBEE_V3"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/zxing/client/result/iot/IoTResultType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/zxing/client/result/iot/IoTResultType;->ZIGBEE_V3:Lcom/google/zxing/client/result/iot/IoTResultType;

    new-instance v7, Lcom/google/zxing/client/result/iot/IoTResultType;

    const-string v9, "ZWAVE_V2_SPEC_OLD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/zxing/client/result/iot/IoTResultType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/zxing/client/result/iot/IoTResultType;->ZWAVE_V2_SPEC_OLD:Lcom/google/zxing/client/result/iot/IoTResultType;

    new-instance v9, Lcom/google/zxing/client/result/iot/IoTResultType;

    const-string v11, "ZWAVE_V2_SPEC_NEW"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/zxing/client/result/iot/IoTResultType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/zxing/client/result/iot/IoTResultType;->ZWAVE_V2_SPEC_NEW:Lcom/google/zxing/client/result/iot/IoTResultType;

    new-instance v11, Lcom/google/zxing/client/result/iot/IoTResultType;

    const-string v13, "ST_Camera"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/zxing/client/result/iot/IoTResultType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/zxing/client/result/iot/IoTResultType;->ST_Camera:Lcom/google/zxing/client/result/iot/IoTResultType;

    new-instance v13, Lcom/google/zxing/client/result/iot/IoTResultType;

    const-string v15, "SMART_TAG_QR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/zxing/client/result/iot/IoTResultType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/zxing/client/result/iot/IoTResultType;->SMART_TAG_QR:Lcom/google/zxing/client/result/iot/IoTResultType;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/google/zxing/client/result/iot/IoTResultType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/google/zxing/client/result/iot/IoTResultType;->$VALUES:[Lcom/google/zxing/client/result/iot/IoTResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/client/result/iot/IoTResultType;
    .locals 1

    const-class v0, Lcom/google/zxing/client/result/iot/IoTResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/client/result/iot/IoTResultType;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/client/result/iot/IoTResultType;
    .locals 1

    sget-object v0, Lcom/google/zxing/client/result/iot/IoTResultType;->$VALUES:[Lcom/google/zxing/client/result/iot/IoTResultType;

    invoke-virtual {v0}, [Lcom/google/zxing/client/result/iot/IoTResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/client/result/iot/IoTResultType;

    return-object v0
.end method
