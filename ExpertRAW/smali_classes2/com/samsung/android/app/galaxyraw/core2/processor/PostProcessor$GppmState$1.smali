.class final enum Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState$1;
.super Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;-><init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$1;)V

    return-void
.end method


# virtual methods
.method updateState(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->requestGppmPermission(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->waitForGppmPermission()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
