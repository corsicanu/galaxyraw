.class public Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;
.super Ljava/lang/Object;
.source "InputLevelMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;
    }
.end annotation


# static fields
.field private static final READ_BUFFER_SIZE_FACTOR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "InputLevelMonitor"


# instance fields
.field private mAudioInputUpdateListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mBufferSize:I

.field private mContext:Landroid/content/Context;

.field private mLevelMonitorThread:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mBufferSize:I

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mAudioInputUpdateListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;

    return-object p0
.end method


# virtual methods
.method initialize()V
    .locals 6

    const-string v0, "InputLevelMonitor"

    const-string v1, "initializeAudioRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0xbb80

    const/16 v1, 0xc

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    mul-int/2addr v3, v2

    iput v3, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mBufferSize:I

    new-instance v3, Landroid/media/AudioRecord$Builder;

    invoke-direct {v3}, Landroid/media/AudioRecord$Builder;-><init>()V

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/AudioRecord$Builder;->semAllowConcurrentCapture(Z)Landroid/media/AudioRecord$Builder;

    move-result-object v4

    new-instance v5, Landroid/media/AudioFormat$Builder;

    invoke-direct {v5}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v5, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mBufferSize:I

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    invoke-virtual {v3}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method isRunning()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method declared-synchronized setInputLevelListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mAudioInputUpdateListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p0, p1}, Landroid/media/AudioRecord;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void
.end method

.method start()V
    .locals 2

    const-string v0, "InputLevelMonitor"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;-><init>(Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mLevelMonitorThread:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;->start()V

    return-void
.end method

.method stop()V
    .locals 3

    const-string v0, "InputLevelMonitor"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mLevelMonitorThread:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;->stopThread()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mLevelMonitorThread:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mLevelMonitorThread:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    const-string v1, "stopAudioRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0, v2}, Landroid/media/AudioRecord;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_1
    return-void
.end method
