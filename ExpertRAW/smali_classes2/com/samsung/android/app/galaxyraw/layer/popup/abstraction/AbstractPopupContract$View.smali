.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;
.super Ljava/lang/Object;
.source "AbstractPopupContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View<",
        "TP;>;"
    }
.end annotation


# virtual methods
.method public abstract applyBias()V
.end method

.method public abstract isShowRequested()Z
.end method

.method public abstract onPreviewTouch(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation
.end method

.method public abstract refreshStyle()V
.end method

.method public abstract setIsPopupRefreshingByOrientation(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRefreshByOrientation"
        }
    .end annotation
.end method

.method public abstract setIsShowRequested(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requested"
        }
    .end annotation
.end method

.method public abstract setOrientation(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation
.end method

.method public abstract setStyleResource(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation
.end method

.method public abstract setSubPopupId(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subPopupId"
        }
    .end annotation
.end method
