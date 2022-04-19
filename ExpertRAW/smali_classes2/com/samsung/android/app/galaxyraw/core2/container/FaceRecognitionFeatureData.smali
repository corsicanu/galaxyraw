.class public Lcom/samsung/android/app/galaxyraw/core2/container/FaceRecognitionFeatureData;
.super Ljava/lang/Object;
.source "FaceRecognitionFeatureData.java"


# instance fields
.field public nFaceId:I

.field public nFeatureDataLength:I

.field public nFeatureDataRequestTag:J

.field public pFeatureData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[BIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nFaceId",
            "pFeatureData",
            "nFeatureDataLength",
            "nFeatureDataRequestTag"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FaceRecognitionFeatureData;->nFaceId:I

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FaceRecognitionFeatureData;->pFeatureData:[B

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FaceRecognitionFeatureData;->nFeatureDataLength:I

    iput-wide p4, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FaceRecognitionFeatureData;->nFeatureDataRequestTag:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FaceRecognitionFeatureData;->nFaceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FaceRecognitionFeatureData;->nFeatureDataLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FaceRecognitionFeatureData;->nFeatureDataRequestTag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FaceRecognitionFeatureData;->pFeatureData:[B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    aput-object p0, v1, v2

    const-string p0, "%s - nFaceId %d, nFeatureDataLength %d, nFeatureDataRequestTag %d, featureData %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
