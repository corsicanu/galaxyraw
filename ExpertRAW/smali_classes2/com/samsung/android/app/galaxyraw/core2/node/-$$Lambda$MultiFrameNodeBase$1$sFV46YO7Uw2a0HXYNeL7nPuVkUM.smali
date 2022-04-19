.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MultiFrameNodeBase$1$sFV46YO7Uw2a0HXYNeL7nPuVkUM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MultiFrameNodeBase$1$sFV46YO7Uw2a0HXYNeL7nPuVkUM;->f$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MultiFrameNodeBase$1$sFV46YO7Uw2a0HXYNeL7nPuVkUM;->f$0:Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->lambda$process$0$MultiFrameNodeBase$1(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method
