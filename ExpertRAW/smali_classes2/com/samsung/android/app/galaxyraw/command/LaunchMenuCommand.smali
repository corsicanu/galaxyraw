.class Lcom/samsung/android/app/galaxyraw/command/LaunchMenuCommand;
.super Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
.source "LaunchMenuCommand.java"


# instance fields
.field private final mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

.field private final mReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "receiver",
            "commandId"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/command/MenuCommand;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/command/LaunchMenuCommand;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/command/LaunchMenuCommand;->mReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/command/LaunchMenuCommand;->mReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/command/LaunchMenuCommand;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;->onLaunchMenu(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p0

    return p0
.end method
