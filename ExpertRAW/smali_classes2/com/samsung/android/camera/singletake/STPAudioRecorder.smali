.class Lcom/samsung/android/camera/singletake/STPAudioRecorder;
.super Ljava/lang/Object;
.source "STPAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/singletake/STPAudioRecorder$AudioRecordRunnable;
    }
.end annotation


# static fields
.field private static final AUDIO_CHANNEL_CONFIG:I = 0xc

.field private static final AUDIO_FORMAT:I = 0x2

.field private static final AUDIO_IMAGE_FORMAT:I = 0x20203859

.field private static final AUDIO_READ_SIZE:I = 0x4000

.field private static final AUDIO_SAMPLE_RATE:I = 0xbb80

.field private static final AUDIO_SOURCE:I = 0x5

.field private static final AUDIO_SURFACE_MAX_IMAGES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "STPAudioRecorder"

.field private static volatile mSInstance:Lcom/samsung/android/camera/singletake/STPAudioRecorder;


# instance fields
.field private volatile SUPPORT_AUDIO_RECORDER:Z

.field private mAudioImageWriter:Landroid/media/ImageWriter;

.field private mAudioRecordThread:Ljava/lang/Thread;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->mAudioImageWriter:Landroid/media/ImageWriter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->SUPPORT_AUDIO_RECORDER:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/camera/singletake/STPAudioRecorder;I)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->getAudioFrameTimestamp(I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300(Lcom/samsung/android/camera/singletake/STPAudioRecorder;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/camera/singletake/STPAudioRecorder;)Landroid/media/ImageWriter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->mAudioImageWriter:Landroid/media/ImageWriter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/camera/singletake/STPAudioRecorder;[SJLandroid/media/ImageWriter;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->writeAudioToImageWriter([SJLandroid/media/ImageWriter;I)V

    return-void
.end method

.method private getAudioFrameTimestamp(I)J
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    int-to-float p1, p1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    const v3, 0xbb80

    mul-int/2addr v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->getBytesPerSample(I)I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->seconds2nanosec(F)J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method private getBytesPerSample(I)I
    .locals 2

    const/4 p0, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    if-eq p1, p0, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad audio format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return p0
.end method

.method static getInstance()Lcom/samsung/android/camera/singletake/STPAudioRecorder;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->mSInstance:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    invoke-direct {v0}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->mSInstance:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    :cond_0
    sget-object v0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->mSInstance:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    return-object v0
.end method

.method private interruptRecordingThread(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->mAudioRecordThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": stopRecording has not been called! Quitting existing thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->mAudioRecordThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->mAudioRecordThread:Ljava/lang/Thread;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": Exception in interrupting thread: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iput-object p2, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->mAudioRecordThread:Ljava/lang/Thread;

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method private seconds2nanosec(F)J
    .locals 0

    const p0, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr p1, p0

    float-to-long p0, p1

    return-wide p0
.end method

.method private writeAudioToImageWriter([SJLandroid/media/ImageWriter;I)V
    .locals 3

    invoke-virtual {p4}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, p1

    if-ge v1, v2, :cond_0

    sget-object p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "audio data size "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " greater than image can carry "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " Increase Image size"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, p5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p5

    invoke-virtual {p5, p1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    invoke-virtual {p0, p2, p3}, Landroid/media/Image;->setTimestamp(J)V

    invoke-virtual {p4, p0}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    return-void
.end method


# virtual methods
.method cancelRecording()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->stopRecording()V

    return-void
.end method

.method deinitialize()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->SUPPORT_AUDIO_RECORDER:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->TAG:Ljava/lang/String;

    const-string v1, "deinitialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "deinitialize"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->interruptRecordingThread(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->mAudioImageWriter:Landroid/media/ImageWriter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/ImageWriter;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->mAudioImageWriter:Landroid/media/ImageWriter;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method disableAudioRecorder()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->SUPPORT_AUDIO_RECORDER:Z

    return-void
.end method

.method enableAudioRecorder()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->SUPPORT_AUDIO_RECORDER:Z

    return-void
.end method

.method getAudioSize(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean p0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->SUPPORT_AUDIO_RECORDER:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x4000

    const-string v0, "audio_data_size"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method getAudioStreamConfig(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean p0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->SUPPORT_AUDIO_RECORDER:Z

    if-eqz p0, :cond_0

    const p0, 0xbb80

    const-string v0, "audio_bitrate"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x2

    const-string v0, "audio_data_format"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p0, 0xc

    const-string v0, "audio_channel_config"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method initialize(Landroid/view/Surface;)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->SUPPORT_AUDIO_RECORDER:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize: audioSurface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    const v2, 0x20203859

    :try_start_0
    invoke-static {p1, v1, v2}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->mAudioImageWriter:Landroid/media/ImageWriter;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method startRecording()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->SUPPORT_AUDIO_RECORDER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->TAG:Ljava/lang/String;

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->interruptRecordingThread(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/camera/singletake/STPAudioRecorder$AudioRecordRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/camera/singletake/STPAudioRecorder$AudioRecordRunnable;-><init>(Lcom/samsung/android/camera/singletake/STPAudioRecorder;Lcom/samsung/android/camera/singletake/STPAudioRecorder$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->mAudioRecordThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method stopRecording()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->SUPPORT_AUDIO_RECORDER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->TAG:Ljava/lang/String;

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->interruptRecordingThread(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
