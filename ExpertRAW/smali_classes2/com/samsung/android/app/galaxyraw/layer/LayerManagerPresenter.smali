.class public Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;
.super Ljava/lang/Object;
.source "LayerManagerPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "LayerManagerPresenter"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private mLayerPresenterArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

.field private final mView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "engine",
            "view",
            "shootingActionProvider"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$View;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$vrnI8ML-kURqsKLw2VXDZlsIKu4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$vrnI8ML-kURqsKLw2VXDZlsIKu4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    return-void
.end method

.method public getBackgroundLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getKeyScreenLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getLayerGestureManager()Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    return-object v0
.end method

.method public getLayerKeyEventManager()Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;
    .locals 3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V

    return-object v0
.end method

.method public getMenuLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$View;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getPopupLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$View;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getPreviewOverlayLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getShootingModeLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$Presenter;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$View;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getShootingModeOverlayLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public start()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launch - LayerManagerPresenter start : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$XUBj7U4M7nFl7ll1aGc57mBFmNs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$XUBj7U4M7nFl7ll1aGc57mBFmNs;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch - LayerManagerPresenter start : End["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "] ["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exit - LayerManagerPresenter stop : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$MujPbkPhymHUaUk9uR8QPJwlDFc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$MujPbkPhymHUaUk9uR8QPJwlDFc;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit - LayerManagerPresenter stop : End["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "] ["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
