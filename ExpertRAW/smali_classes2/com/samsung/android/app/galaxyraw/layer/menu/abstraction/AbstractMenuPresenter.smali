.class public abstract Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;
.super Ljava/lang/Object;
.source "AbstractMenuPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;"
    }
.end annotation


# instance fields
.field protected final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field protected final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field protected final mMenuId:Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;

.field protected final mView:Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V
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
            "menuId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;",
            "TV;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$View;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;->mMenuId:Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;

    return-void
.end method


# virtual methods
.method public onBackKeyUp()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getMenuLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;->collapseMenu()V

    const/4 p0, 0x1

    return p0
.end method

.method public onEmptyAreaTouch(ZII)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isTouchUp",
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getViewVisibleRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getMenuLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;->collapseMenu()V

    :cond_1
    return v1
.end method

.method public onVolumeKeyDown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
