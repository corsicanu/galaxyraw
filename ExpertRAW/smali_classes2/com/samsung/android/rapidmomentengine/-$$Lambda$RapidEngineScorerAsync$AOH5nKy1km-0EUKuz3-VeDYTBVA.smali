.class public final synthetic Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$AOH5nKy1km-0EUKuz3-VeDYTBVA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$AOH5nKy1km-0EUKuz3-VeDYTBVA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$AOH5nKy1km-0EUKuz3-VeDYTBVA;

    invoke-direct {v0}, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$AOH5nKy1km-0EUKuz3-VeDYTBVA;-><init>()V

    sput-object v0, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$AOH5nKy1km-0EUKuz3-VeDYTBVA;->INSTANCE:Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$AOH5nKy1km-0EUKuz3-VeDYTBVA;

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

    invoke-static {p1}, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->lambda$deinit$4(Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;)V

    return-void
.end method
