.class public Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;
.super Ljava/lang/Object;
.source "CameraSensorManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraSensorManager"

.field private static mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;

.field private static final mInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-void
.end method

.method public static clear()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public initialize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sensorType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mSensorType:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mSensorType:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mSensor:Landroid/hardware/Sensor;

    :cond_1
    return-void
.end method

.method public registerListener(IILandroid/hardware/SensorEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sensorType",
            "sensorDelay",
            "listener"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->initialize(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p3, p0, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method
