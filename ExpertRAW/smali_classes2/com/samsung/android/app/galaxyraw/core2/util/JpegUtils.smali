.class public Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;
.super Ljava/lang/Object;
.source "JpegUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;,
        Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$CamCapability;,
        Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$0(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$1302(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$1(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$2702(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$10(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Landroid/hardware/camera2/CaptureResult;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->meteringConverter(Landroid/hardware/camera2/CaptureResult;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$1702(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$11(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpeg image unique id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$1602(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$12(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$1502(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$13([B)Z
    .locals 0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$loadJpegMetadata$14(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;[B)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$1402(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;[B)[B

    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$15(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;->extOrientation:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$loadJpegMetadata$16(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;)V
    .locals 0

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;->extOrientation:I

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$1302(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$17(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;->cityID:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$loadJpegMetadata$18(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;)V
    .locals 2

    iget-wide v0, p1, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;->cityID:J

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$1202(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;J)J

    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$19(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;)Z
    .locals 4

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;->weather:I

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$loadJpegMetadata$2(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$2602(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$20(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;)V
    .locals 0

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;->weather:I

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$1102(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$21(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Landroid/util/Size;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpegSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$902(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$1002(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$22(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Landroid/util/Size;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpegThumbSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$702(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$802(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$3(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$2502(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$4(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Float;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lensAperture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->multiply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$2302(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->multiply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$2402(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$5(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$2202(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$6(Landroid/util/Rational;Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string v2, "aeCompensationStep = %d / %d, exposureCompensation = %s"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p2, p0

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$2102(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;F)F

    :cond_0
    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$7(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Float;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x43480000    # 200.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$2002(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$2002(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$8(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Float;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lensFocalLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->multiply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$1902(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    return-void
.end method

.method static synthetic lambda$loadJpegMetadata$9(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$1802(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    return-void
.end method

.method public static loadJpegMetadata(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;Z)Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageInfo",
            "capability",
            "extJpegMetadata",
            "addThumbnail"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "result is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;

    invoke-direct {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;-><init>()V

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget v3, p2, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;->shotType:I

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$N85I1TZPiO2EsaxJLFuIgj8OSiQ;

    invoke-direct {v5, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$N85I1TZPiO2EsaxJLFuIgj8OSiQ;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    new-instance v8, Ljava/text/SimpleDateFormat;

    sget-object v9, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v10, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v8, v10, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/Date;

    const-wide/32 v10, 0xf4240

    div-long/2addr v4, v10

    add-long/2addr v6, v4

    invoke-direct {v9, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$002(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)Ljava/lang/String;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$7kgOu5VMi_Lx0xjBJcXcR7kjvNY;

    invoke-direct {v5, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$7kgOu5VMi_Lx0xjBJcXcR7kjvNY;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$dsVXb4Qcog1eBHAR1uc9Fbs_M78;

    invoke-direct {v5, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$dsVXb4Qcog1eBHAR1uc9Fbs_M78;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v5, v3, :cond_5

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_4

    const v6, 0x3b9aca00

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7fffffff

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    shr-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    shr-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_2

    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v8, "Should be unreachable"

    invoke-static {v7, v8}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-array v7, v4, [I

    invoke-static {v1, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$102(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;[I)[I

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$100(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)[I

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    aput v3, v7, v2

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$100(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)[I

    move-result-object v3

    aput v6, v3, v5

    :cond_4
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$lOr017De__lIr78tLkrjWtwD2DA;

    invoke-direct {v6, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$lOr017De__lIr78tLkrjWtwD2DA;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {v3, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$1hKkZfqkWF7cTwUyNBZpVowbSy4;

    invoke-direct {v6, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$1hKkZfqkWF7cTwUyNBZpVowbSy4;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {v3, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BRIGHTNESS_VALUE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$dP27ggWhIvqTvi4B6weSypBVuag;

    invoke-direct {v6, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$dP27ggWhIvqTvi4B6weSypBVuag;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {v3, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$CamCapability;->getAeCompensationStep()Landroid/util/Rational;

    move-result-object v3

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v6}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$MdHMyXHdyEPwkr9d0l1bx0MLs7Q;

    invoke-direct {v7, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$MdHMyXHdyEPwkr9d0l1bx0MLs7Q;-><init>(Landroid/util/Rational;Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_5
    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$pQdSopss4H_rlbFRZVyY5hTkRGE;

    invoke-direct {v6, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$pQdSopss4H_rlbFRZVyY5hTkRGE;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {v3, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$XkX_Ixe3uy_S3N9sCoIb-KlU7VA;

    invoke-direct {v6, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$XkX_Ixe3uy_S3N9sCoIb-KlU7VA;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {v3, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$FQTu66c2LIvV7EjdydzM44IJoUA;

    invoke-direct {v6, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$FQTu66c2LIvV7EjdydzM44IJoUA;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {v3, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$Js5JpmRVn5s8Pjfeg_RYi-Zrq7Q;

    invoke-direct {v6, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$Js5JpmRVn5s8Pjfeg_RYi-Zrq7Q;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {v3, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$CamCapability;->getAvailableApertures()[F

    move-result-object p1

    array-length v3, p1

    if-lez v3, :cond_6

    array-length v3, p1

    sub-int/2addr v3, v5

    aget p1, p1, v3

    float-to-double v6, p1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    double-to-int p1, v6

    invoke-static {v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$202(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I

    :cond_6
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->JPEG_IMAGE_UNIQUE_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$n6-hW9VbW2lJC2zzOxxpM-5SlKQ;

    invoke-direct {v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$n6-hW9VbW2lJC2zzOxxpM-5SlKQ;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {p1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->LENS_INFO_FOCAL_LENGTH_IN_35MM_FILM:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$oxrUk1OZldjUaQHX14sJR5jBYKU;

    invoke-direct {v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$oxrUk1OZldjUaQHX14sJR5jBYKU;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {p1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    if-eqz p1, :cond_7

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jpegGpsLocation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$302(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;D)D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$402(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;D)D

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$502(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;D)D

    goto :goto_2

    :cond_7
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v3, "jpegGpsLocation is null"

    invoke-static {p1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->JPEG_IMAGE_DEBUG_INFO_APP4:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_8

    array-length v3, p1

    goto :goto_3

    :cond_8
    move v3, v2

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getExtraDebugInfoApp4()[B

    move-result-object v6

    if-eqz v6, :cond_9

    array-length v7, v6

    goto :goto_4

    :cond_9
    move v7, v2

    :goto_4
    add-int v8, v3, v7

    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v4

    const-string v3, "jpegImgDebugInfoSize(%d) + solutionDebugInfoSize(%d) = debugInfoApp4Size(%d)"

    invoke-static {v9, v3, v10}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->d(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v8, :cond_c

    new-array v3, v8, [B

    if-eqz p1, :cond_a

    array-length v4, p1

    invoke-static {p1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    goto :goto_5

    :cond_a
    move p1, v2

    :goto_5
    if-eqz v6, :cond_b

    array-length v4, v6

    invoke-static {v6, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->access$602(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;[B)[B

    :cond_c
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->JPEG_IMAGE_DEBUG_INFO_APP5:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$hOIwjJlFzR66W3zA8hDg8vngVFs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$hOIwjJlFzR66W3zA8hDg8vngVFs;

    invoke-virtual {p1, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$lVMrvTP2RVB6IMfZm7KC7Ml5T0Q;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$lVMrvTP2RVB6IMfZm7KC7Ml5T0Q;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$oCrLtU3a00gcCLe8R79VjcUUJAQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$oCrLtU3a00gcCLe8R79VjcUUJAQ;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p2

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$Nzkmz2Y_hEYclutWSit4sL8ykFI;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$Nzkmz2Y_hEYclutWSit4sL8ykFI;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {p2, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$TEYbSBI2uJcnBjIAhqs9WtXFRuo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$TEYbSBI2uJcnBjIAhqs9WtXFRuo;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p2

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$7E9U5c5CA4bEIVa_ogiFG5ZdqKg;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$7E9U5c5CA4bEIVa_ogiFG5ZdqKg;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {p2, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$heI-LoWlPF3jU9L3eqVeHDVTRCY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$heI-LoWlPF3jU9L3eqVeHDVTRCY;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$jsfn1xyNhBG9L7us5kps4bfz1mo;

    invoke-direct {p2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$jsfn1xyNhBG9L7us5kps4bfz1mo;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$ewBVsSNVfRvPE5ePErt1THOEtxE;

    invoke-direct {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$ewBVsSNVfRvPE5ePErt1THOEtxE;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz p3, :cond_d

    sget-object p0, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$TL2cpifnyxMRu1uxrXLPwAbrP_I;

    invoke-direct {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$TL2cpifnyxMRu1uxrXLPwAbrP_I;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_6

    :cond_d
    const-string p0, "addThumbnail false"

    invoke-static {v9, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_6
    return-object v1
.end method

.method private static meteringConverter(Landroid/hardware/camera2/CaptureResult;I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "meteringMode"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return v3

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v0
.end method
