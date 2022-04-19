.class public Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;
.super Ljava/lang/Object;
.source "DynamicShotInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo$DynamicShotMode;
    }
.end annotation


# instance fields
.field private mDsCondition:I

.field private mDsDeviceInfo:J

.field private mDsExtraInfo:I

.field private mProcessingMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mProcessingMode:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsCondition:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsExtraInfo:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsDeviceInfo:J

    return-void
.end method

.method public constructor <init>(IIIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "processingMode",
            "dsCondition",
            "dsExtraInfo",
            "dsDeviceInfo"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mProcessingMode:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsCondition:I

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsExtraInfo:I

    iput-wide p4, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsDeviceInfo:J

    return-void
.end method


# virtual methods
.method public getDsCondition()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsCondition:I

    return p0
.end method

.method public getDsDeviceInfo()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsDeviceInfo:J

    return-wide v0
.end method

.method public getDsExtraInfo()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsExtraInfo:I

    return p0
.end method

.method public getDsMode()I
    .locals 1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsCondition:I

    const/high16 v0, -0x80000000

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsMode(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public getProcessingMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mProcessingMode:I

    return p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mProcessingMode:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsCondition:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsExtraInfo:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsDeviceInfo:J

    return-void
.end method

.method public setDsCondition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsCondition"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsCondition:I

    return-void
.end method

.method public setDsDeviceInfo(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsDeviceInfo"
        }
    .end annotation

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsDeviceInfo:J

    return-void
.end method

.method public setDsExtraInfo(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsExtraInfo"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsExtraInfo:I

    return-void
.end method

.method public setProcessingMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processingMode"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mProcessingMode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mProcessingMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsCondition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsCondition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsMode(Ljava/lang/Integer;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo$DynamicShotMode;->getDsModeName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsExtraInfo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->mDsDeviceInfo:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x4

    aput-object p0, v1, v2

    const-string p0, "processingMode = 0x%X, dsCondition = 0x%X, dsMode = %s, dsExtraInfo = 0x%X, dsDeviceInfo = 0x%X"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
