.class public Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerPresenter;
.super Ljava/lang/Object;
.source "ShootingModeLayerPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$Presenter;


# instance fields
.field private mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "engine",
            "view"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$View;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
