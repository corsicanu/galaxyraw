.class public final synthetic Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$5iGo9MzPK1SqSBZrSBZoyU6ahy4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$Builder;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$5iGo9MzPK1SqSBZrSBZoyU6ahy4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$5iGo9MzPK1SqSBZrSBZoyU6ahy4;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$5iGo9MzPK1SqSBZrSBZoyU6ahy4;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$5iGo9MzPK1SqSBZrSBZoyU6ahy4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$5iGo9MzPK1SqSBZrSBZoyU6ahy4;

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

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->lambda$new$4(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    move-result-object p0

    return-object p0
.end method
