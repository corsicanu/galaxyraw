.class public abstract Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;
.super Ljava/lang/Object;
.source "AbstractPopupPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;"
    }
.end annotation


# instance fields
.field protected final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field protected final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field protected final mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

.field protected mSubPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

.field protected final mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "view",
            "popupId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;",
            "TV;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->SUB_ID_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;->mSubPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;->clear()V

    return-void
.end method

.method public onEmptyAreaTouchUp()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPopupHideRequested()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPopupLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;->hidePopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    return-void
.end method

.method public onPopupShown(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRefreshByOrientation"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;->setIsPopupRefreshingByOrientation(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;->setIsShowRequested(Z)V

    return-void
.end method

.method public onPopupVisibilityChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisible"
        }
    .end annotation

    return-void
.end method

.method public updateData(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public updateSubId(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subId"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method
