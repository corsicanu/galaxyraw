.class public Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsPresenter;
.super Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;
.source "SmartTipsPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter<",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$View;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$Presenter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartTipsPresenter"


# instance fields
.field private mIsLinkClick:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V
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

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsPresenter;->mIsLinkClick:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsPresenter;->loadStyleFromResource()V

    return-void
.end method

.method private handleLinkAction()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsPresenter;->mIsLinkClick:Z

    return-void
.end method

.method private handleShootingModeLinkAction(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder;->buildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/command/MenuCommand;->execute()Z

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getShootingModeShortcut()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;->translateList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    return-void
.end method

.method private loadStyleFromResource()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsPresenter;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$View;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;->getStyleResId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$View;->setStyleResource(I)V

    return-void
.end method


# virtual methods
.method public onEmptyAreaTouchUp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLinkClick()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsPresenter;->handleLinkAction()V

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

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsPresenter;->mIsLinkClick:Z

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
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$View;->showSmartTipsPopup()V

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
