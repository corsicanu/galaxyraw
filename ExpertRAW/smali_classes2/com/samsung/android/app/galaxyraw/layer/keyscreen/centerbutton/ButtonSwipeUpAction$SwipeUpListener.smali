.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;
.super Ljava/lang/Object;
.source "ButtonSwipeUpAction.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SwipeUpListener"
.end annotation


# virtual methods
.method public abstract onMoveAfterSwipeUp(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posX",
            "posY"
        }
    .end annotation
.end method

.method public abstract onSwipeUp()Z
.end method
