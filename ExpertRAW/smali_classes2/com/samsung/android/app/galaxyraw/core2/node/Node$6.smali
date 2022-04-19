.class Lcom/samsung/android/app/galaxyraw/core2/node/Node$6;
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
        "Landroid/media/Image;",
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$6;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needProcess()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$6;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->needProcessPreview()Z

    move-result p0

    return p0
.end method

.method public process(Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 4
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

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$6;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->processPreview(Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Landroid/media/Image;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3c

    cmp-long p2, v2, v0

    if-ltz p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$6;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processing time over 60ms  : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_0
    return-object p1
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

    check-cast p1, Landroid/media/Image;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$6;->process(Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
