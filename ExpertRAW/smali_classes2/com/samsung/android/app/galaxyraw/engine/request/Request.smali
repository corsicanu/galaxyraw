.class abstract Lcom/samsung/android/app/galaxyraw/engine/request/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final BLOCKING_REQUEST_TIME_OUT:I = 0x1388

.field protected static final TAG:Ljava/lang/String; = "Request"


# instance fields
.field protected mCameraHolder:Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;

.field private mDiscarded:Z

.field protected mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

.field protected mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

.field private mNextCaptureState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

.field private mNextState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

.field private mRequestId:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraHolder",
            "makerHolder",
            "engine",
            "id"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mDiscarded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mNextState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mNextCaptureState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mCameraHolder:Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mRequestId:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "makerHolder",
            "engine",
            "id"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mDiscarded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mNextState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mNextCaptureState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mRequestId:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    return-void
.end method


# virtual methods
.method final discard()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mDiscarded:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/app/galaxyraw/engine/request/Request;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mRequestId:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/engine/request/Request;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->getRequestId()Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    move-result-object p1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method abstract execute()V
.end method

.method getBlockingRequestTimeOut()I
    .locals 0

    const/16 p0, 0x1388

    return p0
.end method

.method getInitialCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method getInitialState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method final getNextCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mNextCaptureState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    return-object p0
.end method

.method final getNextState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mNextState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    return-object p0
.end method

.method final getRequestId()Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mRequestId:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mRequestId:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->getId()I

    move-result p0

    return p0
.end method

.method isBlockingRequest()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method isDiscarded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mDiscarded:Z

    return p0
.end method

.method isInterruptibleRequest()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method abstract isSupportedCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentCaptureState"
        }
    .end annotation
.end method

.method abstract isSupportedState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentState"
        }
    .end annotation
.end method

.method onInterrupt()V
    .locals 0

    return-void
.end method

.method onTimeout()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mDiscarded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - Start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Request"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->execute()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " - End"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method final setNextCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextCaptureState"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mNextCaptureState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    return-void
.end method

.method final setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextState"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->mNextState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    return-void
.end method
