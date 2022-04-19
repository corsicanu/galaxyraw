.class public final synthetic Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerSync$n13QLMNOkxkAzPlz-vnKBh01rBo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerSync$n13QLMNOkxkAzPlz-vnKBh01rBo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerSync$n13QLMNOkxkAzPlz-vnKBh01rBo;

    invoke-direct {v0}, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerSync$n13QLMNOkxkAzPlz-vnKBh01rBo;-><init>()V

    sput-object v0, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerSync$n13QLMNOkxkAzPlz-vnKBh01rBo;->INSTANCE:Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerSync$n13QLMNOkxkAzPlz-vnKBh01rBo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;

    invoke-static {p1}, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->lambda$deinit$1(Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;)V

    return-void
.end method
