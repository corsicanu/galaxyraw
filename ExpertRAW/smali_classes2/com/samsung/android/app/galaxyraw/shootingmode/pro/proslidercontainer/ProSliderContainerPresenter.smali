.class public Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;
.super Ljava/lang/Object;
.source "ProSliderContainerPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;


# static fields
.field private static final AUTO_MODE:I = 0x1

.field private static final MANUAL_FOCUS_ASSIST_LONG_PRESS_DURATION:I = 0xc8

.field private static final MANUAL_FOCUS_ASSIST_LONG_PRESS_MSG:I = 0x1

.field private static final MANUAL_MODE:I = 0x0

.field private static final PRO_SLIDER_AUTO_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ProSliderContainerPresenter"


# instance fields
.field private final FOCUS_LENGTH_SLIDER_NUM_OFFSET:I

.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mHandler:Landroid/os/Handler;

.field private mIsManualFocusSliderPressed:Z

.field private mLastNearestColorTemperature:I

.field private mLastNearestFocusDistance:I

.field private mLastNearestIso:I

.field private mLastNearestShutterSpeed:I

.field private mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;

.field private final mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;)V
    .locals 2
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

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mIsManualFocusSliderPressed:Z

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter$1;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b009e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->FOCUS_LENGTH_SLIDER_NUM_OFFSET:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mIsManualFocusSliderPressed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->stopManualFocusSliderPressTimer()V

    return-void
.end method

.method private getSliderActiveAutoText(II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getWhiteBalanceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getExposureValueString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getShutterSpeedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getIsoString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f120001

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "A "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private getSliderActiveManualText(II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getWhiteBalanceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getFocusLengthString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getExposureValueString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getShutterSpeedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getIsoString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSliderValue(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proItemId"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getWhiteBalance()I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusLength()I

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p0

    return p0

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result p0

    return p0
.end method

.method private sendSALogProSettings(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "step"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getKelvinValue()I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v0, 0x64

    mul-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0041"

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusLength()I

    move-result p1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_6

    const-string p1, "1332"

    const-string v0, "2"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->getSliderValue(I)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->FOCUS_LENGTH_SLIDER_NUM_OFFSET:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0046"

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getExposureValueString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0036"

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getShutterSpeedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0035"

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getIsoString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0032"

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private showAutoMode(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->showAutoMode(I)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->getSliderActiveAutoText(II)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setSliderText(ILjava/lang/String;)V

    return-void
.end method

.method private showManualMode(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->showManualMode(II)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->getSliderActiveManualText(II)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setSliderText(ILjava/lang/String;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_AE_PRIORITY_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setAutoButtonEnabled(Z)V

    :cond_1
    return-void
.end method

.method private startManualFocusSliderPressTimer()V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopManualFocusSliderPressTimer()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public onApertureButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getAperture()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;->getApertureList()[F

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v0, v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setApertureValue(I)V

    return-void
.end method

.method public onAutoButtonClicked(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "isAutoMode"
        }
    .end annotation

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestColorTemperature:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->showAutoMode(II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestColorTemperature:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->showManualMode(II)V

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0043"

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    if-eqz p2, :cond_3

    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->showAutoMode(II)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestFocusDistance:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->showManualMode(II)V

    :goto_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0047"

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    if-eqz p2, :cond_5

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestShutterSpeed:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->showAutoMode(II)V

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestShutterSpeed:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->showManualMode(II)V

    :goto_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0034"

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    if-eqz p2, :cond_7

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestIso:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->showAutoMode(II)V

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestIso:I

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->findNearestIso(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->showManualMode(II)V

    :goto_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0031"

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public onCameraSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "prevValue",
            "nextValue"
        }
    .end annotation

    sget-object p2, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    if-ne p3, v0, :cond_0

    move p2, v0

    :cond_0
    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->updateMultiAfButtonSelection(Z)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    const/4 p2, 0x3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getFocusLengthString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setSliderText(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getWhiteBalance()I

    move-result p1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x17

    if-lt p3, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getWhiteBalanceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    const/4 v0, 0x4

    invoke-interface {p2, v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setSliderText(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->isSliderVisible(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {p0, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->changeWhiteBalanceIconImage(I)V

    goto :goto_0

    :pswitch_3
    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getExposureValueString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    const/4 p2, 0x2

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setSliderText(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    if-lez p3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getShutterSpeedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setSliderText(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_5
    if-lez p3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getIsoString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setSliderText(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMultiButtonClicked(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSelected"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setMultiAfMode(I)V

    return-void
.end method

.method public onProControlPanelItemClicked(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proItemId"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->getSliderValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->CAMERA_LIST_SCROLLING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->playHaptic(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_PRO_SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestColorTemperature:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->showAutoMode(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getKelvinValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->showManualMode(II)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->showAutoMode(II)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->showManualMode(II)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->showManualMode(II)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getExposureValueString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setSliderText(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;->isApertureSupported()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getAperture()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->initApertureValue(ZI)V

    if-nez v0, :cond_6

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestShutterSpeed:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->showAutoMode(II)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->showManualMode(II)V

    goto :goto_0

    :cond_7
    if-nez v0, :cond_8

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestIso:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->showAutoMode(II)V

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->showManualMode(II)V

    :goto_0
    return-void
.end method

.method public onRefreshIsoSliderRange()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;->getIsoScrollerRange()Landroid/util/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setIsoSliderRange(Landroid/util/Range;)V

    :cond_0
    return-void
.end method

.method public onRefreshShutterSpeedSliderRange()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/4 v3, 0x1

    const/16 v4, 0x25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;->getShutterSpeedScrollerRange(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;II)Landroid/util/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setShutterSpeedSliderRange(Landroid/util/Range;)V

    :cond_0
    return-void
.end method

.method public onScrollEnd(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proItemId"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->getSliderValue(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->sendSALogProSettings(II)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;->enableFocusPeaking(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->stopManualFocusSliderPressTimer()V

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mIsManualFocusSliderPressed:Z

    const-string p1, "1332"

    const-string v0, "2"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->FOCUS_LENGTH_SLIDER_NUM_OFFSET:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0046"

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScrollStart(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proItemId"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->isAutoMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestColorTemperature:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->showManualMode(II)V

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestColorTemperature:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->getSliderActiveManualText(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setSliderText(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestColorTemperature:I

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->changeWhiteBalanceIconImage(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->isAutoMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusLength()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestFocusDistance:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->showManualMode(II)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->startManualFocusSliderPressTimer()V

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mIsManualFocusSliderPressed:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->isAutoMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestShutterSpeed:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->showManualMode(II)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestShutterSpeed:I

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->getSliderActiveManualText(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setSliderText(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->isAutoMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestIso:I

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->findNearestIso(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->showManualMode(II)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestIso:I

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->findNearestIso(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->getSliderActiveManualText(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setSliderText(ILjava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onSensorInfoChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "value"
        }
    .end annotation

    const-string v0, "A "

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestColorTemperature:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getWhiteBalanceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setSliderText(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestFocusDistance:I

    goto :goto_0

    :cond_2
    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestShutterSpeed:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getShutterSpeedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setSliderText(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mLastNearestIso:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setSliderText(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSliderHide()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_PRO_SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    return-void
.end method

.method public setProSliderContainerManager(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manager"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;

    return-void
.end method

.method public start()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->onRefreshShutterSpeedSliderRange()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->onRefreshIsoSliderRange()V

    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->cancelAnimation()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_PRO_SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
