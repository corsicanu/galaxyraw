.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;
.super Landroid/widget/LinearLayout;
.source "ZoomTextView.java"


# static fields
.field public static final LENS_TYPE:I = 0x2

.field public static final SLIDER_TYPE:I = 0x1


# instance fields
.field private mOrientation:I

.field private mType:I


# direct methods
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

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->mType:I

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
            "defStyleAttr"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->mType:I

    return-void
.end method

.method private getBottomPivotTranslateX(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->mOrientation:I

    const/16 v0, -0x5a

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    neg-float p0, p1

    div-float/2addr p0, v1

    return p0

    :cond_1
    div-float/2addr p1, v1

    return p1
.end method

.method private getBottomPivotTranslateY(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->mOrientation:I

    const/16 v0, -0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    return p1
.end method

.method private getBottomPivotX(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->mOrientation:I

    const/16 v0, -0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getTextType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->mType:I

    return p0
.end method

.method public setRotation(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    float-to-int v0, p1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->mOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getRotation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->updatePosition(FF)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setRotation(F)V

    return-void
.end method

.method public setTextType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->mType:I

    return-void
.end method

.method public updatePosition(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getBottomPivotTranslateX(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setTranslationX(F)V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getBottomPivotTranslateY(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setTranslationY(F)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getBottomPivotX(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setPivotX(F)V

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setPivotY(F)V

    return-void
.end method
