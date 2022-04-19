.class Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;
.super Ljava/lang/Object;
.source "MultiFrameNodeBase.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;-><init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Z)V
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
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$process$1(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    return-void
.end method

.method static synthetic lambda$process$2(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$process$0$MultiFrameNodeBase$1(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->updateSequenceId(I)V

    return-void
.end method

.method public needProcess()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->needProcessPicture()Z

    move-result p0

    return p0
.end method

.method public process(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 6
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

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MULTI_PICTURE_INFO_MAX_INPUT_COUNT:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->setMaxInputCount(I)V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MULTI_PICTURE_INFO_MAX_YUV_INPUT_COUNT:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->setMaxYuvInputCount(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->isSupportIncompleteMerge()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "[Error] this node dose not support incomplete merge."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->access$008(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;)I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->isDumpCaptureImageInNativeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MultiFrameNodeBase$1$sFV46YO7Uw2a0HXYNeL7nPuVkUM;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MultiFrameNodeBase$1$sFV46YO7Uw2a0HXYNeL7nPuVkUM;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->access$108(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;)I

    :cond_5
    move v1, v0

    goto :goto_1

    :cond_6
    const/4 v1, 0x1

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-boolean v4, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->DEBUG:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->checkPictureProcessTimeout()V

    :cond_7
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MultiFrameNodeBase$1$A_KKF4eJxaZojmxb-SqR0jYSKeM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MultiFrameNodeBase$1$A_KKF4eJxaZojmxb-SqR0jYSKeM;

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - processPicture ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->getMaxInputCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->processPicture(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x1f4

    cmp-long p2, v4, v2

    if-ltz p2, :cond_8

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing time over 500ms  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_8
    sget-boolean p2, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->DEBUG:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->cancelPictureProcessTimeout()V

    :cond_9
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MultiFrameNodeBase$1$iC_RRjoZUDJbJF1J-YAbbcLafyU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MultiFrameNodeBase$1$iC_RRjoZUDJbJF1J-YAbbcLafyU;

    invoke-virtual {p2, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;)I

    move-result p2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->access$200(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;)I

    move-result v2

    if-eq p2, v2, :cond_a

    if-eqz v1, :cond_b

    :cond_a
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->access$002(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;I)I

    :cond_b
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->access$100(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;)I

    move-result p2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->access$300(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;)I

    move-result v2

    if-eq p2, v2, :cond_c

    if-eqz v1, :cond_d

    :cond_c
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->access$102(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;I)I

    :cond_d
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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->process(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
