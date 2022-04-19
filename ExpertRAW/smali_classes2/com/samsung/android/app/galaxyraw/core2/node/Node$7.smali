.class Lcom/samsung/android/app/galaxyraw/core2/node/Node$7;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface<",
        "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$process$0(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    return-void
.end method


# virtual methods
.method public needProcess()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->needProcessBackgroundPreview()Z

    move-result p0

    return p0
.end method

.method public process(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "bundle"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$7;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->processBackgroundPreview(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$7$CAYQ3vUAvXLL_WXgbNQdXSWigUQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$7$CAYQ3vUAvXLL_WXgbNQdXSWigUQ;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public bridge synthetic process(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "data",
            "bundle"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$7;->process(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
