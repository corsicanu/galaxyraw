.class Lcom/samsung/android/app/galaxyraw/command/LaunchShootingModeCommand;
.super Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
.source "LaunchShootingModeCommand.java"


# instance fields
.field private final mReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

.field private final mShootingModeCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "receiver",
            "commandId"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/command/LaunchShootingModeCommand;->mReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/command/LaunchShootingModeCommand;->mShootingModeCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/command/LaunchShootingModeCommand;->mReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/command/LaunchShootingModeCommand;->mShootingModeCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;->onLaunchShootingMode(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p0

    return p0
.end method