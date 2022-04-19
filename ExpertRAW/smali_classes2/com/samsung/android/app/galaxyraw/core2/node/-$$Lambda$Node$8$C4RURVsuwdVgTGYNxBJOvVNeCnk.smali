.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$8$C4RURVsuwdVgTGYNxBJOvVNeCnk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$8$C4RURVsuwdVgTGYNxBJOvVNeCnk;->f$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$8$C4RURVsuwdVgTGYNxBJOvVNeCnk;->f$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;->lambda$process$2$Node$8(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method
