.class public abstract Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;
.super Ljava/lang/Object;
.source "EngineInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 0

    return-void
.end method

.method public filterResultForGroup(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/rapidmomentengine/data/ResultInfo;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract filterResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/rapidmomentengine/data/ResultInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract process(Lcom/samsung/android/rapidmomentengine/data/FrameData;)Lcom/samsung/android/rapidmomentengine/data/ResultInfo;
.end method
