.class public Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;
.super Landroid/view/View;
.source "InclinometerBar.java"


# instance fields
.field private mColor:I

.field private mDeviceOrientation:I

.field private mRotationAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->mColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->mRotationAngle:F

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->mDeviceOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->mColor:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->mRotationAngle:F

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->mDeviceOrientation:I

    return-void
.end method


# virtual methods
.method public getRotation()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->mRotationAngle:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->mColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->mDeviceOrientation:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_0
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->mRotationAngle:F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float v1, v0, v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    const/4 v4, 0x0

    move-object v0, p1

    move v2, v3

    move v3, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->mColor:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->invalidate()V

    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->mDeviceOrientation:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->setRotation(F)V

    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->mRotationAngle:F

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;->invalidate()V

    return-void
.end method
