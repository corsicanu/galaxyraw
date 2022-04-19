.class Lcom/samsung/android/app/galaxyraw/engine/request/WaitRequest;
.super Lcom/samsung/android/app/galaxyraw/engine/request/Request;
.source "WaitRequest.java"


# instance fields
.field private mWaitDurationInMs:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "makerHolder",
            "engine",
            "id",
            "durationInMs"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/Request;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitRequest;->mWaitDurationInMs:I

    return-void
.end method


# virtual methods
.method execute()V
    .locals 0

    return-void
.end method

.method getBlockingRequestTimeOut()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitRequest;->mWaitDurationInMs:I

    return p0
.end method

.method isBlockingRequest()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isSupportedCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentCaptureState"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method isSupportedState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentState"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method
