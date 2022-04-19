.class public Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;
.super Ljava/lang/Object;
.source "HrmSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager$MainHandler;,
        Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager$HrmContactListener;
    }
.end annotation


# static fields
.field private static final ACCELEROMETER_CAPTURE_THRESHOLD:F = -12.0f

.field private static final ACCELEROMETER_CAPTURE_THRESHOLD_SENSOR_FLOOR:F = 7.8f

.field private static final SET_START_HRM_CAPTURE_DURATION:I = 0x12c

.field private static final SET_TIMEOUT_DURATION:I = 0x2710

.field private static final START_HRM_CAPTURE:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "HrmSensorManager"

.field private static final TIMEOUT_HRM_CAPTURE:I = 0x2


# instance fields
.field private mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mContactListener:Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager$HrmContactListener;

.field private mCurrentFlatState:Z

.field private mHrmSensorCaptureStart:Z

.field private mHrmSensorValue:I

.field private mHrmShutterListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HrmShutterListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager$MainHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager$MainHandler;-><init>(Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mHrmSensorValue:I

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mHrmSensorCaptureStart:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mCurrentFlatState:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mContactListener:Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager$HrmContactListener;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mHrmShutterListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HrmShutterListener;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mHrmSensorCaptureStart:Z

    return p1
.end method

.method private checkCurrentFlatState(Landroid/hardware/SensorEvent;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget p1, p1, v4

    float-to-double v4, v0

    const-wide/high16 v6, -0x4008000000000000L    # -1.5

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_1

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    cmpg-double v0, v4, v8

    if-gtz v0, :cond_1

    float-to-double v4, v2

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_1

    cmpg-double v0, v4, v8

    if-gtz v0, :cond_1

    const/high16 v0, -0x3ec00000    # -12.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x40f9999a    # 7.8f

    cmpg-float p1, p1, v0

    if-lez p1, :cond_1

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mCurrentFlatState:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mCurrentFlatState:Z

    :goto_0
    return-void
.end method

.method private handleHrmContactEvent(Landroid/hardware/SensorEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHrmContactEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HrmSensorManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mHrmSensorValue:I

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/high16 v3, -0x3ee00000    # -10.0f

    cmpl-float v0, v0, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "Remove HRM Sensor timeout message : 2"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v0, v0, v5

    if-nez v0, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mCurrentFlatState:Z

    if-eqz p1, :cond_1

    const-string p0, "State Flat..."

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    const/high16 v0, -0x3fc00000    # -3.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mHrmSensorCaptureStart:Z

    if-eqz p1, :cond_4

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mHrmSensorCaptureStart:Z

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mCurrentFlatState:Z

    if-eqz p1, :cond_3

    const-string p0, "Capture is cancelled... State Flat"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mContactListener:Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager$HrmContactListener;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager$HrmContactListener;->onRelease()V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public deInitSensorManager()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "HrmSensorManager"

    const-string v2, "deInitSensorManager - unregisterListener"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mHrmSensorValue:I

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mHrmSensorCaptureStart:Z

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mContactListener:Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager$HrmContactListener;

    return-void
.end method

.method public getHrmSensorValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mHrmSensorValue:I

    return p0
.end method

.method public initSensorManager()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const-string v0, "HrmSensorManager"

    const-string v1, "initSensorManager - registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1001a

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    new-instance v0, Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$HrmSensorManager$iSd3MaX8-epn1bsi-pPkVYrIRJ4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$HrmSensorManager$iSd3MaX8-epn1bsi-pPkVYrIRJ4;-><init>(Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mContactListener:Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager$HrmContactListener;

    return-void
.end method

.method public synthetic lambda$initSensorManager$0$HrmSensorManager()V
    .locals 2

    const-string v0, "HrmSensorManager"

    const-string v1, "HrmContactListener.onRelease"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mHrmShutterListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HrmShutterListener;

    if-nez v1, :cond_0

    const-string p0, "HrmContactListener.onRelease returned - mHrmShutterListener is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCaptureAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "HrmContactListener.onRelease returned because capture is not available"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getCachedStorageStatus(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->restartInactivityTimer()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getMenuLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;->collapseMenu()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mHrmShutterListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HrmShutterListener;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HrmShutterListener;->onHrmShutterDetected()V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1"
        }
    .end annotation

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x1001a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->handleHrmContactEvent(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->checkCurrentFlatState(Landroid/hardware/SensorEvent;)V

    :goto_0
    return-void
.end method

.method public setHrmShutterListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HrmShutterListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->mHrmShutterListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HrmShutterListener;

    return-void
.end method
