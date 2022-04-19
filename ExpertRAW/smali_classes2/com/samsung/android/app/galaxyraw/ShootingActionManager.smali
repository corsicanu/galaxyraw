.class public Lcom/samsung/android/app/galaxyraw/ShootingActionManager;
.super Ljava/lang/Object;
.source "ShootingActionManager.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;


# instance fields
.field private mRecordShutterActionEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;

.field private mShutterActionEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$ShutterActionEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performRecordButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/ShootingActionManager;->mRecordShutterActionEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;->onRecordButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performRecordPauseButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/ShootingActionManager;->mRecordShutterActionEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;->onRecordPauseButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performRecordResumeButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/ShootingActionManager;->mRecordShutterActionEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;->onRecordResumeButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performRecordSnapShotButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/ShootingActionManager;->mRecordShutterActionEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;->onRecordSnapShotButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performRecordStopButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/ShootingActionManager;->mRecordShutterActionEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;->onRecordStopButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performShutterButtonActionOnSwipeDown(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/ShootingActionManager;->mShutterActionEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$ShutterActionEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$ShutterActionEventListener;->onShutterButtonSwipeDown(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performShutterButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/ShootingActionManager;->mShutterActionEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$ShutterActionEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$ShutterActionEventListener;->onShutterButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performShutterButtonLongPress(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/ShootingActionManager;->mShutterActionEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$ShutterActionEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$ShutterActionEventListener;->onShutterButtonLongPress(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performStopButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/ShootingActionManager;->mShutterActionEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$ShutterActionEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$ShutterActionEventListener;->onStopButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setRecordShutterActionEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/ShootingActionManager;->mRecordShutterActionEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;

    return-void
.end method

.method public setShutterActionEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$ShutterActionEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/ShootingActionManager;->mShutterActionEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$ShutterActionEventListener;

    return-void
.end method
