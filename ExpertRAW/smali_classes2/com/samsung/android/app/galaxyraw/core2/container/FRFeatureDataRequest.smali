.class public Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;
.super Ljava/lang/Object;
.source "FRFeatureDataRequest.java"


# instance fields
.field public requestFaceCount:I

.field public requestFaceIDs:[I

.field public requestTags:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;->requestFaceIDs:[I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;->requestTags:[J

    return-void
.end method

.method public constructor <init>(I[I[J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "faceCount",
            "featureDataRequestFaceID",
            "featureDataRequestTag"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;->requestFaceIDs:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;->requestTags:[J

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;->requestFaceCount:I

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;->requestFaceCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;->requestFaceIDs:[I

    aget v1, p2, p1

    aput v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;->requestTags:[J

    aget-wide v1, p3, p1

    aput-wide v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;->requestFaceIDs:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;->requestTags:[J

    iget v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;->requestFaceCount:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;->requestFaceCount:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;->requestFaceCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;->requestFaceIDs:[I

    iget-object v2, p1, Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;->requestFaceIDs:[I

    aget v2, v2, v0

    aput v2, v1, v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;->requestTags:[J

    iget-object v2, p1, Lcom/samsung/android/app/galaxyraw/core2/container/FRFeatureDataRequest;->requestTags:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
