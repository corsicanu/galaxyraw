.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingMotionSpeedModeInfoCallbackManager"
.end annotation


# instance fields
.field private mRecordingMotionSpeedModeInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$RecordingMotionSpeedModeInfoListener;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;->mRecordingMotionSpeedModeInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$RecordingMotionSpeedModeInfoListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$RecordingMotionSpeedModeInfoListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;->setRecordingMotionSpeedModeInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$RecordingMotionSpeedModeInfoListener;)V

    return-void
.end method

.method private setRecordingMotionSpeedModeInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$RecordingMotionSpeedModeInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;->mRecordingMotionSpeedModeInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$RecordingMotionSpeedModeInfoListener;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onRecordingMotionSpeedModeInfoChanged$0$CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;->mRecordingMotionSpeedModeInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$RecordingMotionSpeedModeInfoListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;->getRecordingSuggestedMotionSpeedMode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;->mRecordingMotionSpeedModeInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$RecordingMotionSpeedModeInfoListener;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;->getRecordingSuggestedMotionSpeedMode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$RecordingMotionSpeedModeInfoListener;->onRecordingMotionSpeedModeInfoChanged(I)V

    :cond_0
    return-void
.end method

.method public onRecordingMotionSpeedModeInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "recordingMotionSpeedModeInfo",
            "camDevice"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager$vRG63cgg6vH8VMAFLcFPq_Ytl1g;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager$vRG63cgg6vH8VMAFLcFPq_Ytl1g;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
