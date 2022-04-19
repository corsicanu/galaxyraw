.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;
.super Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;
.source "ButtonSwipeDownAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;
    }
.end annotation


# static fields
.field private static final SWIPE_DOWN_TOUCH_RATIO:F = 1.5f


# instance fields
.field private final mActionEventListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;

.field private mDownPoint:Landroid/graphics/PointF;

.field private mIsReachedMax:Z

.field private mLastPosY:F

.field private final mSwipeDownListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "actionEventListener",
            "swipeDownListener"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mIsReachedMax:Z

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mActionEventListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mSwipeDownListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;

    return-void
.end method

.method private getPosition(Landroid/view/MotionEvent;Landroid/graphics/PointF;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "downPoint"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    const/high16 v1, 0x3fc00000    # 1.5f

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    iget p1, p2, Landroid/graphics/PointF;->y:F

    :goto_0
    sub-float/2addr p0, p1

    mul-float/2addr p0, v1

    return p0

    :cond_0
    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iget p1, p2, Landroid/graphics/PointF;->x:F

    goto :goto_0
.end method

.method private isSwipeDownStartCondition(Landroid/view/MotionEvent;Landroid/graphics/PointF;F)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "downPoint",
            "threshold"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    iget p1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p3

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    add-float/2addr p1, p3

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iget p1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, p3

    cmpl-float p0, p0, p1

    if-lez p0, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method


# virtual methods
.method public cancelTouchEvent()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;->cancelTouchEvent()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "area"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_9

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->IDLE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mDownPoint:Landroid/graphics/PointF;

    goto/16 :goto_1

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mDownPoint:Landroid/graphics/PointF;

    if-nez p2, :cond_2

    return v0

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070033

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070036

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mIsReachedMax:Z

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mDownPoint:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->getPosition(Landroid/view/MotionEvent;Landroid/graphics/PointF;)F

    move-result p1

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mLastPosY:F

    cmpl-float p2, p1, v1

    if-lez p2, :cond_3

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mLastPosY:F

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mLastPosY:F

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mSwipeDownListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mLastPosY:F

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;->onSwipeMove(F)V

    return v2

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mDownPoint:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v3, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->isSwipeDownStartCondition(Landroid/view/MotionEvent;Landroid/graphics/PointF;F)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->ACTIVATE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    if-ne v3, v4, :cond_7

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mSwipeDownListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;->onSwipeDownStart()Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->IDLE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    return v0

    :cond_6
    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->CONSUME:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mActionEventListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;->onConsume(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->CONSUME:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    if-ne v3, v4, :cond_c

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mDownPoint:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->getPosition(Landroid/view/MotionEvent;Landroid/graphics/PointF;)F

    move-result p1

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mLastPosY:F

    cmpl-float p2, p1, v1

    if-lez p2, :cond_8

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mIsReachedMax:Z

    :cond_8
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mSwipeDownListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;->onSwipeMove(F)V

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mIsReachedMax:Z

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mSwipeDownListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;->onSwipeDownReachMax()V

    return v2

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->CONSUME:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    if-ne p1, p2, :cond_a

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mSwipeDownListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mLastPosY:F

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;->onSwipeDownEnd(F)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->IDLE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    return v2

    :cond_a
    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->IDLE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mDownPoint:Landroid/graphics/PointF;

    goto :goto_1

    :cond_b
    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->ACTIVATE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mIsReachedMax:Z

    new-instance p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {p2, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;->mDownPoint:Landroid/graphics/PointF;

    :cond_c
    :goto_1
    return v0
.end method
