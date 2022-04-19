.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager$vRG63cgg6vH8VMAFLcFPq_Ytl1g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager$vRG63cgg6vH8VMAFLcFPq_Ytl1g;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager$vRG63cgg6vH8VMAFLcFPq_Ytl1g;->f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager$vRG63cgg6vH8VMAFLcFPq_Ytl1g;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager$vRG63cgg6vH8VMAFLcFPq_Ytl1g;->f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;->lambda$onRecordingMotionSpeedModeInfoChanged$0$CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;)V

    return-void
.end method
