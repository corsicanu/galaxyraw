.class public Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;
.super Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;
.source "ToastPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter<",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$Presenter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ToastPresenter"


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "view",
            "popupId",
            "data"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->loadStyleFromResource()V

    invoke-virtual {p0, p4}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->updateData(Ljava/lang/String;)Z

    return-void
.end method

.method private loadStyleFromResource()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;->getStyleResId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;->setStyleResource(I)V

    return-void
.end method


# virtual methods
.method public onPopupShown(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRefreshByOrientation"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->QUICK_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_QUICK_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->FOCUS_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_FOCUS_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;->onPopupShown(Z)V

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

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;->onPopupVisibilityChanged(Z)V

    return-void
.end method

.method public onUpdateLayout(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->QUICK_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0702a9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v0, v2

    const/16 v2, -0x5a

    if-ne p1, v2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;

    invoke-interface {p0, v1, v0, v1, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;->setMargin(FFFF)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;

    invoke-interface {p0, v0, v1, v1, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;->setMargin(FFFF)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;

    invoke-interface {p0, v1, v1, v1, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;->setMargin(FFFF)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getPreviewTopGuideLine()F

    move-result p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->TOP_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->floatEquals(FF)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getPreviewTopGuideLine()F

    move-result v0

    mul-float/2addr p1, v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;

    neg-float p1, p1

    invoke-interface {p0, p1, v1, v1, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;->setMargin(FFFF)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;

    invoke-interface {p0, v1, v1, v1, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;->setMargin(FFFF)V

    :cond_4
    :goto_0
    return-void
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;->showToastPopup()V

    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->QUICK_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_QUICK_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->FOCUS_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_FOCUS_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-interface {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    :cond_1
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;->setText(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
