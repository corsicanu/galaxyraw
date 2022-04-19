.class public Landroidx/appcompat/util/SeslSubheaderRoundedCorner;
.super Landroidx/appcompat/util/SeslRoundedCorner;
.source "SeslSubheaderRoundedCorner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslSubheaderRoundedCorner"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private drawRoundedCornerInternal(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v5, v0

    iget v6, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v6, v3

    invoke-virtual {v4, v0, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget v4, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int v5, v1, v5

    iget v6, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget v3, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int v4, v2, v4

    iget v5, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v0, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v0, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int v3, v1, v3

    iget v4, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int v4, v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public drawRoundedCorner(IIIILandroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0, p5}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCornerInternal(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mX:I

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mY:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mX:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mY:I

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mX:I

    iget v2, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mY:I

    iget v3, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mX:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->mY:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0, p2}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCornerInternal(Landroid/graphics/Canvas;)V

    return-void
.end method
