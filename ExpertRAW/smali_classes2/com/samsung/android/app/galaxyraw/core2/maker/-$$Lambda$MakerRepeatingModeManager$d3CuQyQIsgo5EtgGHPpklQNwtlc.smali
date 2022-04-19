.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$d3CuQyQIsgo5EtgGHPpklQNwtlc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$d3CuQyQIsgo5EtgGHPpklQNwtlc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$d3CuQyQIsgo5EtgGHPpklQNwtlc;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$d3CuQyQIsgo5EtgGHPpklQNwtlc;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$d3CuQyQIsgo5EtgGHPpklQNwtlc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$d3CuQyQIsgo5EtgGHPpklQNwtlc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    check-cast p2, Ljava/util/PriorityQueue;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->lambda$reset$1(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;Ljava/util/PriorityQueue;)V

    return-void
.end method
