.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotCaptureDurationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynamicShotCaptureDurationCallbackManager"
.end annotation


# instance fields
.field private mDynamicShotCaptureDuration:I

.field private mDynamicShotCaptureDurationForCapture:I

.field private mEstimatedCaptureDurationListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$EstimatedCaptureDurationListener;

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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDuration:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDurationForCapture:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mEstimatedCaptureDurationListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$EstimatedCaptureDurationListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->notifyDynamicShotCaptureDuration()V

    return-void
.end method

.method static synthetic access$3700(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->reset()V

    return-void
.end method

.method private notifyDynamicShotCaptureDuration()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mEstimatedCaptureDurationListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$EstimatedCaptureDurationListener;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDuration:I

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$EstimatedCaptureDurationListener;->onEstimatedCaptureDurationChanged(I)V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDuration:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDurationForCapture:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->notifyDynamicShotCaptureDuration()V

    return-void
.end method


# virtual methods
.method getDynamicShotCaptureDurationForCapture()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDurationForCapture:I

    return p0
.end method

.method public synthetic lambda$onDynamicShotCaptureDurationChanged$0$CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4100(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->notifyDynamicShotCaptureDuration()V

    return-void
.end method

.method public onDynamicShotCaptureDurationChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "dynamicShotCaptureDuration",
            "camDevice"
        }
    .end annotation

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDuration:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p1, p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDuration:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager$CCvAsfgeYuHaHSyAuC9fKY5qfbM;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager$CCvAsfgeYuHaHSyAuC9fKY5qfbM;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method setEstimatedCaptureDurationListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$EstimatedCaptureDurationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mEstimatedCaptureDurationListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$EstimatedCaptureDurationListener;

    return-void
.end method

.method updateDynamicShotCaptureDurationForCapture()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDuration:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDurationForCapture:I

    return-void
.end method
