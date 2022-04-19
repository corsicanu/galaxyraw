.class public final synthetic Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$GenXKw-ElPcM-TcJWpvmPxzx4Zo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$Builder;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$GenXKw-ElPcM-TcJWpvmPxzx4Zo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$GenXKw-ElPcM-TcJWpvmPxzx4Zo;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$GenXKw-ElPcM-TcJWpvmPxzx4Zo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$GenXKw-ElPcM-TcJWpvmPxzx4Zo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$GenXKw-ElPcM-TcJWpvmPxzx4Zo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->lambda$new$1(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    move-result-object p0

    return-object p0
.end method
