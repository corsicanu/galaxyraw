.class public Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;
.super Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;
.source "TextBoxPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter<",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$View;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$Presenter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextBoxPresenter"


# instance fields
.field private final DEFAULT_TIMEOUT:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V
    .locals 0
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

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    const/16 p1, 0x1388

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->DEFAULT_TIMEOUT:I

    return-void
.end method

.method private getDescription()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    const-string v2, "com.samsung.android.visionintelligence"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->isPkgExistAsUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v4

    const-string v5, "com.samsung.android.aremoji"

    invoke-static {v3, v5, v4}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->isPkgExistAsUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isKNOXMode()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    const-string v6, "com.samsung.android.arzone"

    invoke-static {v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->isPkgExistAsUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isKNOXMode()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    const v0, 0x7f1202bc

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    const v0, 0x7f1202bb

    goto :goto_3

    :cond_4
    const v0, 0x7f1202ba

    :goto_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onEmptyAreaTouchUp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPopupHideRequested()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->isCameraDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$View;

    const-wide/16 v0, 0x1388

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$View;->startHideTextBoxTimer(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPopupLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;->hidePopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    :goto_0
    return-void
.end method

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

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_MORE_HELP:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    :cond_0
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

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->setBottomBackgroundPosition(II)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06009a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$View;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$View;->setDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$View;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$View;->startHideTextBoxTimer(J)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$View;->showTextBoxPopup()V

    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPopupLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;->setPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_MORE_HELP:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->resetBottomBackground(Z)V

    return-void
.end method
