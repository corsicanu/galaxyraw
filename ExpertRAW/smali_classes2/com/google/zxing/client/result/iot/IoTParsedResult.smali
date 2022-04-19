.class public final Lcom/google/zxing/client/result/iot/IoTParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "IoTParsedResult.java"


# instance fields
.field private final IoTType:Lcom/google/zxing/client/result/iot/IoTResultType;

.field private final QRString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/zxing/client/result/iot/IoTResultType;)V
    .locals 1

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->IOT:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    iput-object p1, p0, Lcom/google/zxing/client/result/iot/IoTParsedResult;->QRString:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/zxing/client/result/iot/IoTParsedResult;->IoTType:Lcom/google/zxing/client/result/iot/IoTResultType;

    return-void
.end method


# virtual methods
.method public getDisplayResult()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/zxing/client/result/iot/IoTParsedResult;->IoTType:Lcom/google/zxing/client/result/iot/IoTResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/iot/IoTResultType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/iot/IoTParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/google/zxing/client/result/iot/IoTParsedResult;->QRString:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/zxing/client/result/iot/IoTParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIoTType()Lcom/google/zxing/client/result/iot/IoTResultType;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/iot/IoTParsedResult;->IoTType:Lcom/google/zxing/client/result/iot/IoTResultType;

    return-object p0
.end method

.method public getQRString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/iot/IoTParsedResult;->QRString:Ljava/lang/String;

    return-object p0
.end method
