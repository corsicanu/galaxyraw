.class public Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;
.super Ljava/lang/Object;
.source "CalculationUtils.java"


# static fields
.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alignDown(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "num",
            "multiple"
        }
    .end annotation

    if-ge p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-int/2addr p0, p1

    div-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    mul-int/2addr p0, p1

    return p0
.end method

.method public static alignUp(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "num",
            "multiple"
        }
    .end annotation

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, p1

    mul-int/2addr p0, p1

    return p0
.end method

.method public static convertFaceNormalizeArrayBaseToImageBase(Landroid/hardware/camera2/params/Face;II)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "face",
            "pixelWidth",
            "pixelHeight"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "convertRectImageBaseToNormalizeArrayBase - rect is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v3

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    div-float/2addr v0, v3

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    div-float/2addr p1, v3

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    add-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    div-float/2addr p1, v3

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    const/4 p0, 0x1

    return p0
.end method

.method public static convertRectActiveArrayBaseToImageBase(Landroid/graphics/Rect;Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "imageSize",
            "sensorArraySize",
            "cropRegion"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v1, p0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_1

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-nez v1, :cond_1

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "convertRectActiveArrayBaseToImageBase: rect.right (%d), rect.bottom (%d)"

    invoke-static {v1, v5, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "convertRectActiveArrayBaseToImageBase: imageSize = [%d %d] "

    invoke-static {v1, v5, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    iget v6, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget v6, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const-string v6, "convertRectActiveArrayBaseToImageBase: sensorArraySize = [%d %d, %d, %d] "

    invoke-static {v1, v6, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, p3, Landroid/graphics/Rect;->left:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    iget v6, p3, Landroid/graphics/Rect;->top:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget v6, p3, Landroid/graphics/Rect;->right:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "convertRectActiveArrayBaseToImageBase: cropRegion = [%d %d, %d, %d] "

    invoke-static {v1, v6, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v6, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "convertRectActiveArrayBaseToImageBase: input rect = [%d %d, %d, %d] "

    invoke-static {v1, v6, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-nez v5, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v8, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/graphics/Rect;->left:I

    iget v8, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/graphics/Rect;->top:I

    iget v8, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    sub-int/2addr v8, p3

    int-to-float p3, v8

    mul-float/2addr p3, v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr p3, v5

    float-to-int p3, p3

    iput p3, p0, Landroid/graphics/Rect;->bottom:I

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    invoke-static {p3, v5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p3

    sub-float/2addr v5, v8

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, p3

    sub-float/2addr v8, v9

    div-float/2addr v8, v6

    float-to-int p3, v8

    iget v6, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, p3

    iput v6, p0, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v5

    iput v6, p0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, p3

    iput v6, p0, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v5

    iput v6, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget v8, p0, Landroid/graphics/Rect;->left:I

    mul-int/2addr v6, v8

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int/2addr p3, v2

    sub-int/2addr v8, p3

    div-int/2addr v6, v8

    iput v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v6

    iget v8, p0, Landroid/graphics/Rect;->top:I

    mul-int/2addr v6, v8

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int/2addr v5, v2

    sub-int/2addr v8, v5

    div-int/2addr v6, v8

    iput v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget v8, p0, Landroid/graphics/Rect;->right:I

    mul-int/2addr v6, v8

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v8, p3

    div-int/2addr v6, v8

    iput v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p3

    iget v6, p0, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr p3, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    sub-int/2addr p2, v5

    div-int/2addr p3, p2

    iput p3, p0, Landroid/graphics/Rect;->bottom:I

    new-array p2, v4, [Ljava/lang/Object;

    iget p3, p0, Landroid/graphics/Rect;->left:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    iget p3, p0, Landroid/graphics/Rect;->top:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    iget p3, p0, Landroid/graphics/Rect;->right:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    iget p3, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v7

    const-string p3, "convertRectActiveArrayBaseToImageBase: converted rect = [%d %d, %d, %d] "

    invoke-static {v1, p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p2, p0, Landroid/graphics/Rect;->left:I

    if-gez p2, :cond_3

    new-array p2, v3, [Ljava/lang/Object;

    iget p3, p0, Landroid/graphics/Rect;->left:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "convertRectActiveArrayBaseToImageBase: converted rect.left(%d) is less than 0"

    invoke-static {v1, p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v0, p0, Landroid/graphics/Rect;->left:I

    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->top:I

    if-gez p2, :cond_4

    new-array p2, v3, [Ljava/lang/Object;

    iget p3, p0, Landroid/graphics/Rect;->top:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "convertRectActiveArrayBaseToImageBase: converted rect.top(%d) is less than 0"

    invoke-static {v1, p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v0, p0, Landroid/graphics/Rect;->top:I

    :cond_4
    iget p2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p3

    if-le p2, p3, :cond_5

    new-array p2, v2, [Ljava/lang/Object;

    iget p3, p0, Landroid/graphics/Rect;->right:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    const-string p3, "convertRectActiveArrayBaseToImageBase: converted rect.right(%d) is bigger than image width(%d)"

    invoke-static {v1, p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    iput p2, p0, Landroid/graphics/Rect;->right:I

    :cond_5
    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p3

    if-le p2, p3, :cond_6

    new-array p2, v2, [Ljava/lang/Object;

    iget p3, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    const-string p3, "convertRectActiveArrayBaseToImageBase: converted rect.bottom(%d) is bigger than image height(%d)"

    invoke-static {v1, p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_6
    new-array p1, v4, [Ljava/lang/Object;

    iget p2, p0, Landroid/graphics/Rect;->left:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    iget p2, p0, Landroid/graphics/Rect;->top:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    iget p2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v7

    const-string p0, "convertRectActiveArrayBaseToImageBase: modified rect = [%d %d, %d, %d] "

    invoke-static {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_7
    :goto_0
    return v0
.end method

.method public static convertRectImageBaseToActiveArrayBase(Landroid/graphics/Rect;Landroid/util/Size;Landroid/graphics/Rect;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "imageSize",
            "cropRegion"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    sub-float/2addr v3, p1

    div-float/2addr v3, v2

    float-to-int p1, v3

    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->left:I

    iget p1, p0, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->top:I

    iget p1, p0, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->right:I

    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static convertRectImageBaseToNormalizeArrayBase(Landroid/graphics/Rect;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "pixelWidth",
            "pixelHeight"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "convertRectImageBaseToNormalizeArrayBase - rect is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 v1, 0x44fa0000    # 2000.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    mul-float/2addr v0, v1

    sub-float/2addr v0, v2

    float-to-int p1, v0

    iput p1, p0, Landroid/graphics/Rect;->right:I

    iget p1, p0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    mul-float/2addr p1, v1

    sub-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroid/graphics/Rect;->top:I

    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    mul-float/2addr p1, v1

    sub-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    const/4 p0, 0x1

    return p0
.end method

.method public static convertRectImageBaseToNormalizeArrayBase([III)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pixelPoint",
            "pixelWidth",
            "pixelHeight"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "convertRectImageBaseToNormalizeArrayBase - pixelPoint is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v0

    :cond_0
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    aget v1, p0, v0

    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    mul-float/2addr v1, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    sub-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, p0, v0

    add-int/lit8 v1, v0, 0x1

    aget v4, p0, v1

    int-to-float v4, v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    mul-float/2addr v4, v2

    sub-float/2addr v4, v3

    float-to-int v2, v4

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static convertRectNormalizeArrayBaseToImageBase(Landroid/graphics/Rect;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "pixelWidth",
            "pixelHeight"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "convertRectImageBaseToNormalizeArrayBase - rect is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    add-float/2addr v0, v1

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v2

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Landroid/graphics/Rect;->right:I

    iget p1, p0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr p1, v1

    div-float/2addr p1, v2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/graphics/Rect;->top:I

    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    add-float/2addr p1, v1

    div-float/2addr p1, v2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    const/4 p0, 0x1

    return p0
.end method

.method public static convertRectToHorizontalFlippedRect(Landroid/graphics/Rect;Landroid/util/Size;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rect",
            "imageSize"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->right:I

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static divide(Ljava/lang/Object;Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "num1",
            "num2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Ljava/math/BigDecimal;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static divide(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "num1",
            "num2",
            "roundingMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;I)",
            "Ljava/math/BigDecimal;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static floatDivide(FF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public static gcd(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lv",
            "rv"
        }
    .end annotation

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public static gcd(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numCollection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->gcd(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static gcd(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->gcd(II)I

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static ifPositive(Ljava/lang/Integer;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "defaultValue"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    return p1
.end method

.method public static lcm(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lv",
            "rv"
        }
    .end annotation

    mul-int v0, p0, p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->gcd(II)I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method public static multiply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "num1",
            "num2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Ljava/math/BigDecimal;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static percentage(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "numerator",
            "denominator"
        }
    .end annotation

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
