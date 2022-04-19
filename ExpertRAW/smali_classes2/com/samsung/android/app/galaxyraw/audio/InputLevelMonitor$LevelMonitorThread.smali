.class Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;
.super Ljava/lang/Thread;
.source "InputLevelMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LevelMonitorThread"
.end annotation


# instance fields
.field private mIsRunning:Z

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;->this$0:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;->mIsRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;-><init>(Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "InputLevelMonitor"

    const-string v1, "Start Level Monitor Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;->mIsRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;->this$0:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->access$100(Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;)I

    move-result v0

    new-array v0, v0, [S

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;->this$0:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->access$200(Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;)Landroid/media/AudioRecord;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;->this$0:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->access$100(Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->convertAudioLevel(I[S)Landroid/util/Pair;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;->this$0:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->access$300(Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;->this$0:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->access$300(Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;->onAudioInputLevelUpdated(FF)V

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const-string p0, "InputLevelMonitor"

    const-string v0, "Finish Level Monitor Thread"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method stopThread()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor$LevelMonitorThread;->mIsRunning:Z

    return-void
.end method
