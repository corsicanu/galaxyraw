.class public Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;
.super Landroid/widget/ImageView;
.source "DualPipRect.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/widget/DualPipRect$DualPipRectEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DualPipRect"


# instance fields
.field private mBoundaryRect:Landroid/graphics/Rect;

.field private mDownPoint:Landroid/graphics/Point;

.field private mDualPipRectEventListener:Lcom/samsung/android/app/galaxyraw/widget/DualPipRect$DualPipRectEventListener;

.field private mDualPipRectXY:Landroid/graphics/Point;

.field private mLastTouchPoint:Landroid/graphics/Point;

.field private mOrientation:I

.field private mParentHeight:I

.field private mParentWidth:I


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

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mBoundaryRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mLastTouchPoint:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mOrientation:I

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

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

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mBoundaryRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mLastTouchPoint:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mOrientation:I

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private moveRect(Landroid/graphics/Point;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mLastTouchPoint:Landroid/graphics/Point;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDownPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDownPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mLastTouchPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mLastTouchPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mLastTouchPoint:Landroid/graphics/Point;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->getWidth()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-le p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->setTranslationX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public initializeDualPipRectXY(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "top"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->setTranslationX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectXY:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->setTranslationY(F)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mOrientation:I

    const/16 v1, -0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/Point;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mParentWidth:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mParentHeight:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectEventListener:Lcom/samsung/android/app/galaxyraw/widget/DualPipRect$DualPipRectEventListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect$DualPipRectEventListener;->onPipRectTouch(Landroid/view/MotionEvent;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    if-eq p2, v0, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_4

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->moveRect(Landroid/graphics/Point;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mLastTouchPoint:Landroid/graphics/Point;

    goto :goto_1

    :cond_5
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDownPoint:Landroid/graphics/Point;

    :goto_1
    return v0
.end method

.method public setBoundaries(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "right",
            "top",
            "bottom"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mBoundaryRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mBoundaryRect:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mBoundaryRect:Landroid/graphics/Rect;

    iput p3, p1, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mBoundaryRect:Landroid/graphics/Rect;

    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setDualPipRectEventListener(Lcom/samsung/android/app/galaxyraw/widget/DualPipRect$DualPipRectEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mDualPipRectEventListener:Lcom/samsung/android/app/galaxyraw/widget/DualPipRect$DualPipRectEventListener;

    return-void
.end method

.method public setParentDimension(II)V
    .locals 0
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

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mParentWidth:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mParentHeight:I

    return-void
.end method

.method public updateOrientation(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/DualPipRect;->mOrientation:I

    return-void
.end method
