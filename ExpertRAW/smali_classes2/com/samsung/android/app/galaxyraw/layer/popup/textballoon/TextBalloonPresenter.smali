.class public Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonPresenter;
.super Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;
.source "TextBalloonPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter<",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$View;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextBalloonPresenter"


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V
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

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonPresenter;->loadStyleFromResource()V

    return-void
.end method

.method private loadStyleFromResource()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonPresenter;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$View;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;->getStyleResId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$View;->setStyleResource(I)V

    return-void
.end method


# virtual methods
.method public onLinkClick()V
    .locals 0

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

.method public onRadioButton1Click()V
    .locals 0

    return-void
.end method

.method public onRadioButton2Click()V
    .locals 0

    return-void
.end method

.method public onUpdateLayout(IF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orientation",
            "popupWidth"
        }
    .end annotation

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonPresenter;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->ZOOM_IN_MIC_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->isExtend()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0704cb

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    neg-float p2, p2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0704c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070481

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702ae

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0704c8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, p1

    goto :goto_1

    :cond_2
    move p2, v1

    move v0, p2

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$View;

    invoke-interface {p0, v1, p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$View;->setMargin(FFFF)V

    return-void
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$View;->showTextBalloonPopup()V

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
