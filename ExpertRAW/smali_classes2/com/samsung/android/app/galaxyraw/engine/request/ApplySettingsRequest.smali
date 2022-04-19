.class Lcom/samsung/android/app/galaxyraw/engine/request/ApplySettingsRequest;
.super Lcom/samsung/android/app/galaxyraw/engine/request/Request;
.source "ApplySettingsRequest.java"


# instance fields
.field private mUpdater:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V
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
            "updater"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/Request;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ApplySettingsRequest;->mUpdater:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;

    return-void
.end method

.method private isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method execute()V
    .locals 4

    const-string v0, "Request"

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/ApplySettingsRequest;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ApplySettingsRequest;->mUpdater:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ApplySettingsRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getMakerPublicSettings()Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;->update(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ApplySettingsRequest : Returned, no need to set maker public settings"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ApplySettingsRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getCurrentMaker()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->applySettings()I

    move-result v0
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ApplySettingsRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRequestEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$RequestEventListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$RequestEventListener;->onApplySettingsRequested(I)V

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/ApplySettingsRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/ApplySettingsRequest;->discard()V

    return-void

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CamAccessException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ApplySettingsRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->getReason()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->handleCamAccessException(I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/ApplySettingsRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/ApplySettingsRequest;->discard()V

    return-void
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

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->BACKGROUND_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->PREPARING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
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

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
