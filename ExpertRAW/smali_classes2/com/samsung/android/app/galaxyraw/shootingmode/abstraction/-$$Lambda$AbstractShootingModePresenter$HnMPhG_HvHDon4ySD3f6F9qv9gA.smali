.class public final synthetic Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/-$$Lambda$AbstractShootingModePresenter$HnMPhG_HvHDon4ySD3f6F9qv9gA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/-$$Lambda$AbstractShootingModePresenter$HnMPhG_HvHDon4ySD3f6F9qv9gA;->f$0:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/-$$Lambda$AbstractShootingModePresenter$HnMPhG_HvHDon4ySD3f6F9qv9gA;->f$0:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->lambda$registerCameraSettingChangedListeners$0$AbstractShootingModePresenter(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    return-void
.end method
