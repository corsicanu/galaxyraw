.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompositionGuideEventCallbackManager"
.end annotation


# instance fields
.field private mCompositionGuideEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$CompositionGuideEventListener;

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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;->mCompositionGuideEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$CompositionGuideEventListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCompositionGuideEvent$0$CallbackManagerImpl$CompositionGuideEventCallbackManager(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;->mCompositionGuideEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$CompositionGuideEventListener;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;->moveX:F

    iget v2, p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;->moveY:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;->mCompositionGuideEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$CompositionGuideEventListener;

    iget v1, p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;->angle:F

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;->status:I

    invoke-interface {p0, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$CompositionGuideEventListener;->onCompositionGuideEvent(Landroid/graphics/PointF;FI)V

    :cond_0
    return-void
.end method

.method public onCompositionGuideEvent(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "camDevice"
        }
    .end annotation

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$CompositionGuideEventCallbackManager$sQTUQVuVrIIYEiviWtjQ6hvrHB0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$CompositionGuideEventCallbackManager$sQTUQVuVrIIYEiviWtjQ6hvrHB0;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setCompositionGuideEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$CompositionGuideEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;->mCompositionGuideEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$CompositionGuideEventListener;

    return-void
.end method
