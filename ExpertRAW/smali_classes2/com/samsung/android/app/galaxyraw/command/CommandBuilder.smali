.class public Lcom/samsung/android/app/galaxyraw/command/CommandBuilder;
.super Ljava/lang/Object;
.source "CommandBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$SubBuilder;,
        Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$Builder;
    }
.end annotation


# static fields
.field private static final mCommandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private static final mFilterCommandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$SubBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder;->mCommandMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$2;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder;->mFilterCommandMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "receiver"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder;->mCommandMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$Builder;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p0}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$Builder;->build(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static buildFilterCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ILcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "subCommand",
            "receiver"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder;->mFilterCommandMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$SubBuilder;

    if-eqz v1, :cond_1

    invoke-interface {v1, p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$SubBuilder;->build(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method
