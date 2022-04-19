.class public Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;
.super Ljava/lang/Object;
.source "DisplayCutoutPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$Presenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayCutoutPresenter"

.field private static final mTimerAnimationDurationMap:Landroid/util/SparseLongArray;


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;->mTimerAnimationDurationMap:Landroid/util/SparseLongArray;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$View;)V
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$View;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public onStartDisplayCutoutAnimationRequested()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$View;->showSwitchCameraAnimation()V

    return-void
.end method

.method public onTimerHideRequested()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$View;->hideTimerProgressAnimation()V

    return-void
.end method

.method public onTimerShowRequested()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;->mTimerAnimationDurationMap:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->getAnimatorDurationScale(Landroid/content/Context;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$View;

    long-to-float v0, v0

    div-float/2addr v0, v2

    float-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$View;->showTimerProgressAnimation(J)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTimerShowRequested durationScale "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisplayCutoutPresenter"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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
