.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;
.super Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;
.source "ButtonLongPressAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;
    }
.end annotation


# static fields
.field private static final CHECK_SHUTTER_KEY_LONG_PRESSED_MSG:I = 0x1

.field private static final SHUTTER_KEY_LONG_PRESSED_DURATION:I = 0x12c


# instance fields
.field private final mActionEventListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;

.field private final mLongPressHandler:Landroid/os/Handler;

.field private final mLongPressListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "actionEventListener",
            "listener"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;->mLongPressHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;->mActionEventListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;->mLongPressListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;->mActionEventListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;->mLongPressListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;

    return-object p0
.end method


# virtual methods
.method public cancelTouchEvent()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;->cancelTouchEvent()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;->mLongPressHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 3
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

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;->mLongPressHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->ACTIVATE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    if-ne p1, p2, :cond_3

    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->IDLE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;->mLongPressHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->IDLE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->ACTIVATE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;->mLongPressHandler:Landroid/os/Handler;

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
