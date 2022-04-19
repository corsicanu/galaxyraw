.class public final synthetic Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$NBxuWdtxbeKslniAziecvGIhKHo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;

.field public final synthetic f$1:Lcom/samsung/android/rapidmomentengine/data/FrameData;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;Lcom/samsung/android/rapidmomentengine/data/FrameData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$NBxuWdtxbeKslniAziecvGIhKHo;->f$0:Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;

    iput-object p2, p0, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$NBxuWdtxbeKslniAziecvGIhKHo;->f$1:Lcom/samsung/android/rapidmomentengine/data/FrameData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$NBxuWdtxbeKslniAziecvGIhKHo;->f$0:Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$NBxuWdtxbeKslniAziecvGIhKHo;->f$1:Lcom/samsung/android/rapidmomentengine/data/FrameData;

    invoke-virtual {v0, p0}, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->lambda$processFrame$1$RapidEngineScorerAsync(Lcom/samsung/android/rapidmomentengine/data/FrameData;)V

    return-void
.end method
