.class public Lcom/samsung/android/app/galaxyraw/widget/RectEdge;
.super Landroid/view/View;
.source "RectEdge.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v4, v0, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;->mPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v7, 0x0

    iget-object v9, v0, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;->mPaint:Landroid/graphics/Paint;

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v1

    const/4 v12, 0x0

    sub-float v16, v1, v3

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v1

    move/from16 v13, v16

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v9, v0, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;->mPaint:Landroid/graphics/Paint;

    move v5, v1

    move v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x0

    int-to-float v2, v2

    iget-object v9, v0, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;->mPaint:Landroid/graphics/Paint;

    move v6, v2

    move v7, v3

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    sub-float v3, v2, v3

    iget-object v11, v0, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v10, v3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v15, v0, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v1

    move v12, v2

    move v14, v2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v15, v0, Lcom/samsung/android/app/galaxyraw/widget/RectEdge;->mPaint:Landroid/graphics/Paint;

    move v13, v1

    move v14, v3

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method
