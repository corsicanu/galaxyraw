.class public Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;
.super Landroid/widget/ImageView;
.source "ResizeableRect.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect$ResizeableRectEventListener;
    }
.end annotation


# static fields
.field public static final RESIZEABLE_RECT_EVENT_MOVE_FINISHED:I = 0x2

.field public static final RESIZEABLE_RECT_EVENT_MOVE_START:I = 0x0

.field public static final RESIZEABLE_RECT_EVENT_MOVING:I = 0x1

.field public static final RESIZEABLE_RECT_EVENT_RESIZE_FINISHED:I = 0x5

.field public static final RESIZEABLE_RECT_EVENT_RESIZE_START:I = 0x3

.field public static final RESIZEABLE_RECT_EVENT_RESIZING:I = 0x4

.field private static final RESIZEABLE_RECT_STATE_MOVING:I = 0x2

.field private static final RESIZEABLE_RECT_STATE_NONE:I = 0x0

.field private static final RESIZEABLE_RECT_STATE_RESIZING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ResizeableRect"

.field private static final TOUCH_INSIDE_AREA:I = 0x5

.field private static final TOUCH_OUTSIDE_AREA:I = 0x0

.field private static final TOUCH_VERTEX_LEFT_BOTTOM:I = 0x2

.field private static final TOUCH_VERTEX_LEFT_TOP:I = 0x1

.field private static final TOUCH_VERTEX_RIGHT_BOTTOM:I = 0x4

.field private static final TOUCH_VERTEX_RIGHT_TOP:I = 0x3


# instance fields
.field private mBoundaryRect:Landroid/graphics/Rect;

.field private mCurrentHeight:I

.field private mCurrentWidth:I

.field private mEffectGuideMaxSize:F

.field private mEffectGuideMinSize:F

.field private mGuideState:I

.field private mIsBoundaryRestricted:Z

.field private mOrientation:I

.field private mParentHeight:I

.field private mParentWidth:I

.field private mResizeThreeCorners:Z

.field private mResizeableRectEventListener:Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect$ResizeableRectEventListener;

.field private mResizeableRectXY:Landroid/graphics/Point;

.field private mSelectedVertex:I

.field private mTouchPoint:Landroid/graphics/PointF;

.field private mTouchVertexAreaWidth:I

.field private mXDelta:I

.field private mYDelta:I


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

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mGuideState:I

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mIsBoundaryRestricted:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mTouchPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mOrientation:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->init(Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mGuideState:I

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mIsBoundaryRestricted:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mTouchPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mOrientation:I

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private checkBottomBoundary(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_2

    const-string v0, "ResizeableRect"

    const-string v1, "exceeds bottom boundary"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    :cond_2
    return-void
.end method

.method private checkLeftBoundary(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_2

    const-string v0, "ResizeableRect"

    const-string v1, "exceeds left boundary"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    iput p0, p1, Landroid/graphics/Point;->x:I

    :cond_2
    return-void
.end method

.method private checkMaxBoundary()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMaxSize:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const-string v0, "ResizeableRect"

    const-string v1, "exceeds max size"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMaxSize:F

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMaxSize:F

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v1, v0

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMaxSize:F

    int-to-float v0, v0

    sub-float v0, v2, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    :cond_1
    return-void
.end method

.method private checkMaxBoundary(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMaxSize:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    :cond_0
    const-string v0, "ResizeableRect"

    const-string v1, "exceeds max size"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v0, p1

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMaxSize:F

    int-to-float p1, p1

    sub-float p1, v1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v0, p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMaxSize:F

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v0, p1

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMaxSize:F

    int-to-float p1, p1

    sub-float p1, v1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v0, p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMaxSize:F

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v0, p1

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMaxSize:F

    int-to-float p1, p1

    sub-float p1, v1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v0, p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMaxSize:F

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMaxSize:F

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v0, p1

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMaxSize:F

    int-to-float p1, p1

    sub-float p1, v1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v0, p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    :cond_5
    :goto_0
    return-void
.end method

.method private checkMinBoundary()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMinSize:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v0, v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    const-string v0, "ResizeableRect"

    const-string v1, "less than minimum size"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMinSize:F

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMinSize:F

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v1, v0

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMinSize:F

    int-to-float v0, v0

    sub-float v0, v2, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    :cond_1
    return-void
.end method

.method private checkMinBoundary(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMinSize:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v0, v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    :cond_0
    const-string v0, "ResizeableRect"

    const-string v1, "less than minimum size"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v0, p1

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMinSize:F

    int-to-float p1, p1

    sub-float p1, v1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v0, p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMinSize:F

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v0, p1

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMinSize:F

    int-to-float p1, p1

    sub-float p1, v1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v0, p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMinSize:F

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v0, p1

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMinSize:F

    int-to-float p1, p1

    sub-float p1, v1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v0, p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMinSize:F

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMinSize:F

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v0, p1

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMinSize:F

    int-to-float p1, p1

    sub-float p1, v1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v0, p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    :cond_5
    :goto_0
    return-void
.end method

.method private checkRightBoundary(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_2

    const-string v0, "ResizeableRect"

    const-string v1, "exceeds right boundary"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    :cond_2
    return-void
.end method

.method private checkTopBoundary(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_2

    const-string v0, "ResizeableRect"

    const-string v1, "exceeds top boundary"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iput p0, p1, Landroid/graphics/Point;->y:I

    :cond_2
    return-void
.end method

.method private decideSelectedVertex(FF)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchX",
            "touchY"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mTouchVertexAreaWidth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getMeasuredHeight()I

    move-result v1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mTouchVertexAreaWidth:I

    sub-int/2addr v1, p0

    int-to-float v2, p0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    int-to-float v2, p0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    int-to-float v2, p0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    int-to-float p0, v1

    cmpl-float p0, p2, p0

    if-lez p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    if-lez v0, :cond_3

    int-to-float p0, v1

    cmpl-float p0, p2, p0

    if-lez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/R$styleable;->ResizeableRect:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mTouchVertexAreaWidth:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private moveRect(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xMargin",
            "yMargin"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mIsBoundaryRestricted:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge p2, v0, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_3

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p2, v0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mParentWidth:I

    iget p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mParentHeight:I

    iget p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private resize(IFF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "touchX",
            "touchY"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, p2, v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mTouchPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, p3, v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mTouchPoint:Landroid/graphics/PointF;

    iput p2, v2, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mTouchPoint:Landroid/graphics/PointF;

    iput p3, p2, Landroid/graphics/PointF;->y:F

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getLeft()I

    move-result p3

    iput p3, p2, Landroid/graphics/Point;->x:I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getTop()I

    move-result p3

    iput p3, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getMeasuredHeight()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getMeasuredWidth()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iget-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeThreeCorners:Z

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->resizeThreeCorners(III)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->checkMinBoundary(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->checkMaxBoundary(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->resizeFourCorners(III)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->checkMinBoundary()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->checkMaxBoundary()V

    :goto_0
    iget-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mIsBoundaryRestricted:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->checkLeftBoundary(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->checkRightBoundary(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->checkBottomBoundary(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->checkTopBoundary(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mParentWidth:I

    iget p3, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    sub-int/2addr p2, p3

    iget p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mParentHeight:I

    iget p3, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    sub-int/2addr p2, p3

    iget p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private resizeFourCorners(III)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "deltaX",
            "deltaY"
        }
    .end annotation

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    mul-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_2
    mul-int/lit8 p3, p2, -0x1

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_6

    mul-int/lit8 p2, p3, -0x1

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    move p2, p3

    :cond_6
    :goto_1
    move p3, p2

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->y:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Point;->y:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    mul-int/2addr p3, v1

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    return-void
.end method

.method private resizeThreeCorners(III)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "deltaX",
            "deltaY"
        }
    .end annotation

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->y:I

    if-eq p1, v2, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    mul-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_2
    mul-int/lit8 p3, p2, -0x1

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    mul-int/lit8 p3, p2, -0x1

    :goto_1
    iput p3, v1, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    mul-int/lit8 p2, p3, -0x1

    :cond_6
    iput p2, v1, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    move p2, p3

    :cond_8
    iput p2, v1, Landroid/graphics/Point;->x:I

    iput p2, v1, Landroid/graphics/Point;->y:I

    :goto_2
    move p3, p2

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, v1, Landroid/graphics/Point;->x:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->y:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->y:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    return-void
.end method


# virtual methods
.method public initializeResizeableRectLayout(II)V
    .locals 2
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mParentWidth:I

    iget p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mParentHeight:I

    iget p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initializeResizeableRectXY(Landroid/graphics/RectF;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    iput p1, p0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
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

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mOrientation:I

    const/16 v0, -0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mParentWidth:I

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mParentHeight:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_9

    if-eq v1, v5, :cond_5

    if-eq v1, v3, :cond_2

    return v4

    :cond_2
    iget p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mYDelta:I

    sub-int p2, v0, p2

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mXDelta:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mGuideState:I

    if-ne v2, v3, :cond_3

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->moveRect(II)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectEventListener:Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect$ResizeableRectEventListener;

    if-eqz p0, :cond_4

    invoke-interface {p0, v5}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect$ResizeableRectEventListener;->onMove(I)V

    goto :goto_1

    :cond_3
    if-ne v2, v5, :cond_4

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mSelectedVertex:I

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-direct {p0, p2, p1, v0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->resize(IFF)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectEventListener:Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect$ResizeableRectEventListener;

    if-eqz p0, :cond_4

    const/4 p1, 0x4

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect$ResizeableRectEventListener;->onResize(I)V

    :cond_4
    :goto_1
    return v5

    :cond_5
    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mGuideState:I

    if-nez p1, :cond_6

    return v4

    :cond_6
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectEventListener:Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect$ResizeableRectEventListener;

    if-eqz p2, :cond_8

    if-ne p1, v3, :cond_7

    invoke-interface {p2, v3}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect$ResizeableRectEventListener;->onMove(I)V

    goto :goto_2

    :cond_7
    if-ne p1, v5, :cond_8

    invoke-interface {p2, v2}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect$ResizeableRectEventListener;->onResize(I)V

    :cond_8
    :goto_2
    iput v4, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mGuideState:I

    return v5

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mTouchPoint:Landroid/graphics/PointF;

    int-to-float v6, p1

    int-to-float v7, v0

    invoke-virtual {v1, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    iput v4, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mGuideState:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getLeft()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mXDelta:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mYDelta:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->decideSelectedVertex(FF)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mSelectedVertex:I

    if-ne p1, v2, :cond_a

    iput v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mGuideState:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectEventListener:Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect$ResizeableRectEventListener;

    if-eqz p0, :cond_b

    invoke-interface {p0, v4}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect$ResizeableRectEventListener;->onMove(I)V

    goto :goto_3

    :cond_a
    if-eqz p1, :cond_b

    iput v5, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mGuideState:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectEventListener:Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect$ResizeableRectEventListener;

    if-eqz p0, :cond_b

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect$ResizeableRectEventListener;->onResize(I)V

    :cond_b
    :goto_3
    return v5

    :cond_c
    return v4
.end method

.method public resizeEffectGuideByRadiusDelta(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delta"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectXY:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->checkMinBoundary()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->checkMaxBoundary()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentWidth:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mCurrentHeight:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mIsBoundaryRestricted:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iput p3, p1, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mBoundaryRect:Landroid/graphics/Rect;

    iput p4, p0, Landroid/graphics/Rect;->bottom:I

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

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mParentWidth:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mParentHeight:I

    return-void
.end method

.method public setRectMinMax(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMinSize:F

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mEffectGuideMaxSize:F

    return-void
.end method

.method public setResizeThreeCorners(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resizeThreeCorners"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeThreeCorners:Z

    return-void
.end method

.method public setResizeableRectEventListener(Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect$ResizeableRectEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mResizeableRectEventListener:Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect$ResizeableRectEventListener;

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

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ResizeableRect;->mOrientation:I

    return-void
.end method
