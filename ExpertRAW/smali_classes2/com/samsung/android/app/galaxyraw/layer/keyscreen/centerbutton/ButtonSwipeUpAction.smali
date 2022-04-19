.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;
.super Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;
.source "ButtonSwipeUpAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;
    }
.end annotation


# instance fields
.field private final mActionEventListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;

.field private mDownPoint:Landroid/graphics/PointF;

.field private final mSwipeUpListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;)V
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
            "swipeUpListener"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;->mActionEventListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;->mSwipeUpListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;

    return-void
.end method


# virtual methods
.method public cancelTouchEvent()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;->cancelTouchEvent()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 2
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

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;->mDownPoint:Landroid/graphics/PointF;

    if-nez p2, :cond_1

    return v0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070038

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    neg-float p2, p2

    cmpg-float p2, v1, p2

    if-gez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->ACTIVATE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;->mSwipeUpListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;->onSwipeUp()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->CONSUME:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;->mActionEventListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;

    invoke-interface {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;->onConsume(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;)V

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->CONSUME:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    if-ne p2, v1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;->mSwipeUpListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;->onMoveAfterSwipeUp(II)V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->IDLE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;->mDownPoint:Landroid/graphics/PointF;

    goto :goto_0

    :cond_4
    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->ACTIVATE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    new-instance p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p2, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;->mDownPoint:Landroid/graphics/PointF;

    :cond_5
    :goto_0
    return v0
.end method
