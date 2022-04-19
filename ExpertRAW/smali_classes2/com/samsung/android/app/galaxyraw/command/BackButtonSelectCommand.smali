.class Lcom/samsung/android/app/galaxyraw/command/BackButtonSelectCommand;
.super Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
.source "BackButtonSelectCommand.java"


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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/command/BackButtonSelectCommand;->mReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/command/BackButtonSelectCommand;->mReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;->onBackButtonSelect()Z

    move-result p0

    return p0
.end method
