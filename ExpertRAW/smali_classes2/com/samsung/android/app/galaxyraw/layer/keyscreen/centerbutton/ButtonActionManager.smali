.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;
.super Ljava/lang/Object;
.source "ButtonActionManager.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;",
            ">;"
        }
    .end annotation
.end field


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onConsume(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumeButtonEvent"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;->cancelTouchEvent()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 6
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_1

    iput-boolean v4, v3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;->mEnable:Z

    :cond_1
    iget-boolean v4, v3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;->mEnable:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;->onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    :cond_2
    monitor-exit v0

    if-eqz v2, :cond_3

    return v4

    :cond_3
    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetCenterButtonAction()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setLongPressListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;-><init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSwipeDownListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;-><init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSwipeUpListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;-><init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
