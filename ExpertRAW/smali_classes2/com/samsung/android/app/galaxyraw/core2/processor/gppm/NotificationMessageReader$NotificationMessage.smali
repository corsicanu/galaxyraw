.class public Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;
.super Ljava/lang/Object;
.source "NotificationMessageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;
    }
.end annotation


# instance fields
.field action:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "packageName"
    .end annotation
.end field

.field private trigger:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trigger"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "packageName",
            "state",
            "trigger"
        }
    .end annotation

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;->access$100(I)Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;-><init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "packageName",
            "action",
            "trigger"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;->action:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;->trigger:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;->action:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getTrigger()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;->trigger:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationMessage{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;->action:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", trigger=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;->trigger:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
