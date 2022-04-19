.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;
.super Ljava/lang/Object;
.source "CenterButtonContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract onFloatingShutterButtonMove(II)V
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

.method public abstract onLongPress()Z
.end method

.method public abstract onPauseButtonClick()Z
.end method

.method public abstract onRecordButtonClick()Z
.end method

.method public abstract onRecordStopButtonClick()Z
.end method

.method public abstract onRefreshFloatingShutterButton(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCenterButtonVisible"
        }
    .end annotation
.end method

.method public abstract onResumeButtonClick()Z
.end method

.method public abstract onShutterButtonClick()Z
.end method

.method public abstract onShutterButtonSwipeUp(II)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultX",
            "defaultY"
        }
    .end annotation
.end method

.method public abstract onStopButtonClick()Z
.end method

.method public abstract onSwipeDownEnd()V
.end method

.method public abstract onSwipeDownReachMax()V
.end method

.method public abstract onSwipeDownStarted()Z
.end method
