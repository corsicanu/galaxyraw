.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$StillCaptureProgressCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StillCaptureProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StillCaptureProgressCallbackManager"
.end annotation


# instance fields
.field private mStillCaptureProgressListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$StillCaptureProgressListener;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$StillCaptureProgressCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$StillCaptureProgressCallbackManager;->mStillCaptureProgressListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$StillCaptureProgressListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$StillCaptureProgressCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onStillCaptureProgressChanged$0$CallbackManagerImpl$StillCaptureProgressCallbackManager(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$StillCaptureProgressCallbackManager;->mStillCaptureProgressListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$StillCaptureProgressListener;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$StillCaptureProgressListener;->onStillCaptureProgressChanged(I)V

    :cond_0
    return-void
.end method

.method public onStillCaptureProgressChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "progress",
            "camDevice"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$StillCaptureProgressCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$StillCaptureProgressCallbackManager$AWR8iDwOdTUqC7N1ldKRRcmIRo8;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$StillCaptureProgressCallbackManager$AWR8iDwOdTUqC7N1ldKRRcmIRo8;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$StillCaptureProgressCallbackManager;Ljava/lang/Integer;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setStillCaptureProgressListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$StillCaptureProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$StillCaptureProgressCallbackManager;->mStillCaptureProgressListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$StillCaptureProgressListener;

    return-void
.end method
