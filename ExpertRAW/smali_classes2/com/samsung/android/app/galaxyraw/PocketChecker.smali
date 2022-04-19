.class Lcom/samsung/android/app/galaxyraw/PocketChecker;
.super Ljava/lang/Object;
.source "PocketChecker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final DELAY_TIME_TO_CHECK_POCKET_CONDITION:I = 0x96

.field private static final DELAY_TIME_TO_FINISH:I = 0x1388

.field private static final MIN_LIGHT_FOR_POCKET_CONDITION:I = 0x0

.field private static final SENSOR_TYPE_BIO_HRM:I = 0x1001a

.field private static final SENSOR_TYPE_REAR_PROX_DETECT:I = 0x1002c

.field private static final TAG:Ljava/lang/String; = "PocketChecker"


# instance fields
.field private mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCheckPocketContinuation:Ljava/lang/Runnable;

.field private mHrmIr:I

.field private mHrmSensor:Landroid/hardware/Sensor;

.field private mIsHrmOn:Z

.field private mLightValue:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTimeStamp:[J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
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

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mLightValue:I

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mTimeStamp:[J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mIsHrmOn:Z

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mHrmIr:I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$PocketChecker$B5tWOkInyywaJGnIhLVkxzaKSaI;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$PocketChecker$B5tWOkInyywaJGnIhLVkxzaKSaI;-><init>(Lcom/samsung/android/app/galaxyraw/PocketChecker;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mCheckPocketContinuation:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method


# virtual methods
.method checkLightCondition()V
    .locals 3

    const-string v0, "PocketChecker"

    const-string v1, "checkLightCondition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method checkPocket()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1002c

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mHrmSensor:Landroid/hardware/Sensor;

    const-string v1, "PocketChecker"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x1001a

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mHrmSensor:Landroid/hardware/Sensor;

    const-string v0, "using SENSOR_TYPE_BIO_HRM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "using SENSOR_TYPE_REAR_PROX_DETECT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mTimeStamp:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    aput-wide v2, v0, v4

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mIsHrmOn:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mTimeStamp:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mHrmSensor:Landroid/hardware/Sensor;

    const/16 v3, 0x4e20

    invoke-virtual {v0, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Failed to register HRM sensor listener"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput v4, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mHrmIr:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mIsHrmOn:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mCheckPocketContinuation:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$0$PocketChecker()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mTimeStamp:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HRMInfo::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mHrmIr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PocketChecker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mHrmIr:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mTimeStamp:[J

    aget-wide v5, v4, v3

    const/4 v3, 0x0

    aget-wide v7, v4, v3

    sub-long/2addr v5, v7

    long-to-float v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Camera OFF in pocket(%.3f)"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CHECK_INSIDE_POCKET:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/PocketChecker;->stopChecker()V

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
            "sensor",
            "accuracy"
        }
    .end annotation

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
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

    const-string v2, "PocketChecker"

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mLightValue:I

    const/high16 v5, -0x80000000

    if-gt v0, v5, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mLightValue:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Light : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    iget v8, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mLightValue:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "%d lux"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mLightValue:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/PocketChecker;->checkPocket()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iput v5, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mLightValue:I

    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v3, 0x1001a

    if-eq v0, v3, :cond_2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v3, 0x1002c

    if-ne v0, v3, :cond_3

    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mHrmIr:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HRMInfo:: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v4

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "HRM-IR[%d]"

    invoke-static {v3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mCheckPocketContinuation:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method stopChecker()V
    .locals 2

    const-string v0, "PocketChecker"

    const-string v1, "stopChecker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mCheckPocketContinuation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mHrmSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mIsHrmOn:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/PocketChecker;->mLightValue:I

    return-void
.end method
