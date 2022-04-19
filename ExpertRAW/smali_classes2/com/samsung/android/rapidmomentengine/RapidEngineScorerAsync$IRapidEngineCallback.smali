.class public interface abstract Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync$IRapidEngineCallback;
.super Ljava/lang/Object;
.source "RapidEngineScorerAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRapidEngineCallback"
.end annotation


# virtual methods
.method public abstract onCancelled()V
.end method

.method public abstract onProcessResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/rapidmomentengine/data/ResultInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStopped()V
.end method
