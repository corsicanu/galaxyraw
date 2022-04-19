.class public final synthetic Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$DAAjbqjd4a8Q0JRkxhD9pL4aVmc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$DAAjbqjd4a8Q0JRkxhD9pL4aVmc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$DAAjbqjd4a8Q0JRkxhD9pL4aVmc;

    invoke-direct {v0}, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$DAAjbqjd4a8Q0JRkxhD9pL4aVmc;-><init>()V

    sput-object v0, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$DAAjbqjd4a8Q0JRkxhD9pL4aVmc;->INSTANCE:Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$DAAjbqjd4a8Q0JRkxhD9pL4aVmc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 0

    check-cast p1, Ljava/lang/Float;

    invoke-static {p1}, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->lambda$null$5(Ljava/lang/Float;)D

    move-result-wide p0

    return-wide p0
.end method
