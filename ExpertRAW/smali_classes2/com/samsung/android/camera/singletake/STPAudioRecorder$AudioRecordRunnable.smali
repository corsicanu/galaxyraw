.class Lcom/samsung/android/camera/singletake/STPAudioRecorder$AudioRecordRunnable;
.super Ljava/lang/Object;
.source "STPAudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/singletake/STPAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/singletake/STPAudioRecorder;


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/singletake/STPAudioRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder$AudioRecordRunnable;->this$0:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/singletake/STPAudioRecorder;Lcom/samsung/android/camera/singletake/STPAudioRecorder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPAudioRecorder$AudioRecordRunnable;-><init>(Lcom/samsung/android/camera/singletake/STPAudioRecorder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startRecordThread "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    const v1, 0xbb80

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1, v0, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v4

    mul-int/2addr v4, v2

    invoke-static {}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioRecord minBufferSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x4000

    if-ge v4, v5, :cond_0

    move v4, v5

    :cond_0
    new-instance v5, Landroid/media/AudioRecord$Builder;

    invoke-direct {v5}, Landroid/media/AudioRecord$Builder;-><init>()V

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object v5

    new-instance v6, Landroid/media/AudioFormat$Builder;

    invoke-direct {v6}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v6, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v3

    const/16 v0, 0x2000

    new-array v1, v0, [S

    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2, v0}, Landroid/media/AudioRecord;->read([SII)I

    move-result v2

    if-eq v2, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read audio data size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is different from : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder$AudioRecordRunnable;->this$0:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    mul-int/lit8 v9, v2, 0x2

    invoke-static {v4, v9}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->access$200(Lcom/samsung/android/camera/singletake/STPAudioRecorder;I)J

    move-result-wide v6

    iget-object v2, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder$AudioRecordRunnable;->this$0:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    invoke-static {v2}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->access$300(Lcom/samsung/android/camera/singletake/STPAudioRecorder;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder$AudioRecordRunnable;->this$0:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    invoke-static {v4}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->access$400(Lcom/samsung/android/camera/singletake/STPAudioRecorder;)Landroid/media/ImageWriter;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/camera/singletake/STPAudioRecorder$AudioRecordRunnable;->this$0:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    invoke-static {v4}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->access$400(Lcom/samsung/android/camera/singletake/STPAudioRecorder;)Landroid/media/ImageWriter;

    move-result-object v8

    move-object v5, v1

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->access$500(Lcom/samsung/android/camera/singletake/STPAudioRecorder;[SJLandroid/media/ImageWriter;I)V

    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_3
    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    invoke-static {}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Audio recording stop"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_4

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_3
    invoke-static {}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio recording exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    :cond_4
    return-void

    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    :cond_5
    throw p0
.end method
