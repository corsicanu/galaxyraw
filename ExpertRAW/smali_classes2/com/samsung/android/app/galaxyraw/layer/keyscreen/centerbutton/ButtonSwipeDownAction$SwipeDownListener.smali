.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;
.super Ljava/lang/Object;
.source "ButtonSwipeDownAction.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SwipeDownListener"
.end annotation


# virtual methods
.method public abstract onSwipeDownEnd(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posY"
        }
    .end annotation
.end method

.method public abstract onSwipeDownReachMax()V
.end method

.method public abstract onSwipeDownStart()Z
.end method

.method public abstract onSwipeMove(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posY"
        }
    .end annotation
.end method
