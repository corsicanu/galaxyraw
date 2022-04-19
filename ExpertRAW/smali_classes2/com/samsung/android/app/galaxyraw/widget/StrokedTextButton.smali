.class public Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;
.super Landroid/widget/Button;
.source "StrokedTextButton.java"


# instance fields
.field private mIsDrawing:Z

.field private mIsStroke:Z

.field private mStrokeColor:I

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mIsStroke:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mStrokeWidth:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mStrokeColor:I

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

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mIsStroke:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mStrokeWidth:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mStrokeColor:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mIsStroke:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mStrokeWidth:F

    const/4 p3, -0x1

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mStrokeColor:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    sget-object v0, Lcom/samsung/android/app/galaxyraw/R$styleable;->StrokedTextButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mIsStroke:Z

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mStrokeWidth:F

    const/4 p2, 0x1

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mStrokeColor:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mIsDrawing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mIsStroke:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mIsDrawing:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mStrokeColor:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->setTextColor(I)V

    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->mIsDrawing:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
