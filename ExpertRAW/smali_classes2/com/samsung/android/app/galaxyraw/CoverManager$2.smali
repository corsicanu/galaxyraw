.class Lcom/samsung/android/app/galaxyraw/CoverManager$2;
.super Ljava/lang/Object;
.source "CoverManager.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/CoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/CoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/CoverManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/CoverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCancelled()V
    .locals 0

    return-void
.end method

.method public onCaptureCompleted()V
    .locals 0

    return-void
.end method

.method public onCaptureInterrupted()V
    .locals 0

    return-void
.end method

.method public onCaptureRequested()V
    .locals 0

    return-void
.end method

.method public onCaptureStarted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/CoverManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->access$300(Lcom/samsung/android/app/galaxyraw/CoverManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/CoverManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCaptureStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/CoverManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->access$400(Lcom/samsung/android/app/galaxyraw/CoverManager;)Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->requestShowShutterLEDIcon()Z

    :cond_0
    return-void
.end method

.method public onCaptureStopped()V
    .locals 0

    return-void
.end method

.method public onShutter()V
    .locals 0

    return-void
.end method
