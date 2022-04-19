.class Lcom/samsung/android/app/galaxyraw/command/SwitchCameraCommand;
.super Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
.source "SwitchCameraCommand.java"


# instance fields
.field private final mReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiver"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/command/SwitchCameraCommand;->mReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/command/SwitchCameraCommand;->mReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;->onSwitchCameraSelect(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method
