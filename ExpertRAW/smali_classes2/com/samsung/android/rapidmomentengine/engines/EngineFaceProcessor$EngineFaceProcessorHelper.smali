.class Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$EngineFaceProcessorHelper;
.super Ljava/lang/Object;
.source "EngineFaceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EngineFaceProcessorHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/rapidmomentengine/data/FrameData;)F
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$EngineFaceProcessorHelper;->calculateFaceRatioInOrigImage(Lcom/samsung/android/rapidmomentengine/data/FrameData;)F

    move-result p0

    return p0
.end method

.method static synthetic access$100([Ljava/lang/Double;Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$EngineFaceProcessorHelper;->evalExpressionType([Ljava/lang/Double;Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;)V

    return-void
.end method

.method static synthetic access$200(ILcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$EngineFaceProcessorHelper;->evalBlinkType(ILcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;)V

    return-void
.end method

.method static synthetic access$300(DD)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$EngineFaceProcessorHelper;->getHeadPoseIndex(DD)I

    move-result p0

    return p0
.end method

.method private static calculateFaceRatioInOrigImage(Lcom/samsung/android/rapidmomentengine/data/FrameData;)F
    .locals 4

    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "calculateFaceRatioInOrigImage: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x40800000    # -1.0f

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getOrigWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getOrigHeight()I

    move-result v2

    mul-int/2addr v1, v2

    if-gtz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getFaces()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getFaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getFaces()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$EngineFaceProcessorHelper;->getFaceArea(Ljava/util/List;)I

    move-result p0

    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateFaceRatioInOrigImage: faceArea: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateFaceRatioInOrigImage: origArea: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v2, "calculateFaceRatioInOrigImage: X"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p0, p0

    int-to-float v0, v1

    div-float/2addr p0, v0

    return p0

    :cond_2
    return v0
.end method

.method private static evalBlinkType(ILcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;)V
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;->NO_STATUS:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    invoke-virtual {p1, p0}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->setBlinkStatus(Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;)V

    return-void

    :cond_0
    sget-object p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;->BOTH_BLINK:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    invoke-virtual {p1, p0}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->setBlinkStatus(Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;)V

    return-void

    :cond_1
    sget-object p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;->RIGHT_WINK:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    invoke-virtual {p1, p0}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->setBlinkStatus(Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;)V

    return-void

    :cond_2
    sget-object p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;->LEFT_WINK:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    invoke-virtual {p1, p0}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->setBlinkStatus(Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;)V

    return-void

    :cond_3
    sget-object p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;->BOTH_OPEN:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    invoke-virtual {p1, p0}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->setBlinkStatus(Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;)V

    return-void
.end method

.method private static evalExpressionType([Ljava/lang/Double;Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$EngineFaceProcessorHelper;->findMaxConfidenceExpression([Ljava/lang/Double;)I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;->EXP_DEFAULT:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;

    invoke-virtual {p1, p0}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->setExpression(Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;)V

    return-void

    :cond_0
    sget-object p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;->EXP_SURPRISE:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;

    invoke-virtual {p1, p0}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->setExpression(Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;)V

    return-void

    :cond_1
    sget-object p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;->EXP_DISLIKE:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;

    invoke-virtual {p1, p0}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->setExpression(Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;)V

    return-void

    :cond_2
    sget-object p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;->EXP_LIKE:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;

    invoke-virtual {p1, p0}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->setExpression(Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;)V

    return-void

    :cond_3
    sget-object p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;->EXP_NEUTRAL:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;

    invoke-virtual {p1, p0}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->setExpression(Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;)V

    return-void
.end method

.method private static findMaxConfidenceExpression([Ljava/lang/Double;)I
    .locals 1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static getFaceArea(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/Face;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/Face;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/2addr v1, p0

    return v1
.end method

.method private static getHeadPoseIndex(DD)I
    .locals 4

    const-wide v0, 0x4056800000000000L    # 90.0

    div-double/2addr p0, v0

    div-double/2addr p2, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide v2, 0x3fbc710cb295e9e2L    # 0.1111

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v2, v0, p0

    if-gez v2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 v2, -0x3fdc000000000000L    # -10.0

    cmpl-double p0, v2, p0

    if-lez p0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    cmpg-double p0, v0, p2

    if-gez p0, :cond_3

    const/4 p0, 0x3

    goto :goto_0

    :cond_3
    cmpl-double p0, v2, p2

    if-lez p0, :cond_4

    const/4 p0, 0x4

    goto :goto_0

    :cond_4
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
