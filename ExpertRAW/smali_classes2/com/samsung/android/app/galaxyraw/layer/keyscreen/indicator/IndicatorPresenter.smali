.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorPresenter;
.super Ljava/lang/Object;
.source "IndicatorPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$Presenter;


# static fields
.field private static final VISIBLE_REMAIN_COUNT:I = 0x12c


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "view"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$View;

    return-void
.end method

.method private isRemainCounterAvailable(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x12c

    if-le p1, v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public onSetRemainCountIndicatorRequested(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorPresenter;->isRemainCounterAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$View;->showRemainCountIndicator(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$View;->hideRemainCountIndicator()V

    :goto_0
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
