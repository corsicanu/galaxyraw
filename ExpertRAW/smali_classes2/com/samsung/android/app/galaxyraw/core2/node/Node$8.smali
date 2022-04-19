.class Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$process$0(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    return-void
.end method

.method static synthetic lambda$process$1(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$process$3(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$process$2$Node$8(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->updateSequenceId(I)V

    return-void
.end method

.method public needProcess()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->needProcessPicture()Z

    move-result p0

    return p0
.end method

.method public process(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;
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

    sget-boolean v2, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->checkPictureProcessTimeout()V

    :cond_0
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->isSupportIncompleteMerge()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "[Error] this node dose not support incomplete merge."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$8$dGymTnJByyAd7CCjdCfpdmTY-Ik;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$8$dGymTnJByyAd7CCjdCfpdmTY-Ik;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->isDumpCaptureImageInNativeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$8$KpFMO27vrVdTVpqDN0zADRamCnc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$8$KpFMO27vrVdTVpqDN0zADRamCnc;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$8$C4RURVsuwdVgTGYNxBJOvVNeCnk;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$8$C4RURVsuwdVgTGYNxBJOvVNeCnk;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - processPicture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->processPicture(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x1f4

    cmp-long p2, v2, v0

    if-ltz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processing time over 500ms  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_4
    sget-boolean p2, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->DEBUG:Z

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->cancelPictureProcessTimeout()V

    :cond_5
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$8$mqgQhdwXCHOxkjRtObSU2jCTxGg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$8$mqgQhdwXCHOxkjRtObSU2jCTxGg;

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;->process(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
