.class public Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;
.super Ljava/lang/Object;
.source "JpegUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalJpegMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata$ShotType;
    }
.end annotation


# static fields
.field public static final SHOT_TYPE_NORMAL:I = 0x0

.field public static final SHOT_TYPE_STITCHING:I = 0x1


# instance fields
.field public cityID:J

.field public extOrientation:I

.field public shotType:I

.field public weather:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;->extOrientation:I

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;->cityID:J

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;->weather:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;->shotType:I

    return-void
.end method


# virtual methods
.method public hasValidJpegMeta()Z
    .locals 4

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;->extOrientation:I

    if-gez v0, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;->cityID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;->weather:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
