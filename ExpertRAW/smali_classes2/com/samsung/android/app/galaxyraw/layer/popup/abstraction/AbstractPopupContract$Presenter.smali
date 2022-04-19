.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;
.super Ljava/lang/Object;
.source "AbstractPopupContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract onEmptyAreaTouchUp()Z
.end method

.method public abstract onPopupHideRequested()V
.end method

.method public abstract onPopupShown(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRefreshByOrientation"
        }
    .end annotation
.end method

.method public abstract onPopupVisibilityChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisible"
        }
    .end annotation
.end method

.method public abstract updateData(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation
.end method

.method public abstract updateSubId(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subPopupId"
        }
    .end annotation
.end method
