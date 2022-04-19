.class Lcom/samsung/android/app/galaxyraw/command/FilterSelectCommand;
.super Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
.source "FilterSelectCommand.java"


# instance fields
.field private final mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

.field private final mFilterId:I

.field private final mReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "receiver",
            "commandId",
            "filterId"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/command/MenuCommand;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/command/FilterSelectCommand;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/command/FilterSelectCommand;->mReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/command/FilterSelectCommand;->mFilterId:I

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/command/FilterSelectCommand$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/command/FilterSelectCommand;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/command/FilterSelectCommand;->mReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/command/FilterSelectCommand;->mFilterId:I

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;->onMyFilterSelect(I)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/command/FilterSelectCommand;->mReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;->onLaunchCreateMyFilter()Z

    move-result p0

    return p0

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/command/FilterSelectCommand;->mReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FILTER_DOWNLOAD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;->onLaunchDownload(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p0

    return p0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/command/FilterSelectCommand;->mReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/command/FilterSelectCommand;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/command/FilterSelectCommand;->mFilterId:I

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;->onFilterSelect(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
