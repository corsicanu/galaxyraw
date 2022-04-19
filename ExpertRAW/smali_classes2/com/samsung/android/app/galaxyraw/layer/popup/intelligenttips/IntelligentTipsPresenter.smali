.class public Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;
.super Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;
.source "IntelligentTipsPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter<",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$View;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$Presenter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntelligentTipsPresenter"


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)V
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
            "subPopupId"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->mSubPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->loadStyleFromResource()V

    return-void
.end method

.method private loadStyleFromResource()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->mSubPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$View;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->mSubPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$View;->setSubPopupId(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$View;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;->getStyleResId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$View;->setStyleResource(I)V

    return-void
.end method


# virtual methods
.method public onEmptyAreaTouchUp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onHdrAutoButtonClicked()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setHdr(I)V

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

.method public onUpdateLayout(IF)V
    .locals 4
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

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p2

    const/4 v0, 0x4

    invoke-interface {p2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getViewVisibleRect(I)Landroid/graphics/Rect;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getViewVisibleRect(I)Landroid/graphics/Rect;

    move-result-object v0

    const/16 v1, -0x5a

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    iget p2, v0, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BOTTOM_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, v0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BOTTOM_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v1

    :goto_0
    mul-float/2addr v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v3, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BOTTOM_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v3

    sub-float/2addr v1, v3

    mul-float/2addr p2, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    :goto_1
    sub-float/2addr p2, v0

    sub-float p2, v2, p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$View;

    invoke-interface {p0, v2, p2, p1, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$View;->setMargin(FFFF)V

    return-void
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$View;->showIntelligentTipsPopup()V

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public updateSubId(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subPopupId"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->mSubPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->loadStyleFromResource()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$View;->refreshStyle()V

    const/4 p0, 0x1

    return p0
.end method
