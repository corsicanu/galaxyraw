.class public final synthetic Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$G7O4pv9Z1lhfxGxOsQ0m02pcmBs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$G7O4pv9Z1lhfxGxOsQ0m02pcmBs;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$G7O4pv9Z1lhfxGxOsQ0m02pcmBs;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$G7O4pv9Z1lhfxGxOsQ0m02pcmBs;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$G7O4pv9Z1lhfxGxOsQ0m02pcmBs;->f$1:Landroid/os/Bundle;

    check-cast p1, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->lambda$init$0(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;)V

    return-void
.end method
