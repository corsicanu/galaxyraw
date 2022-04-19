.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BokehInfoCallbackManager"
.end annotation


# instance fields
.field private mBokehInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BokehInfoListener;

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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;->mBokehInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BokehInfoListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBokehInfoChanged$0$CallbackManagerImpl$BokehInfoCallbackManager(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;->mBokehInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BokehInfoListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->getBokehState()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;->mBokehInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BokehInfoListener;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->getBokehState()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->getBokehFocusedRects()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->getBokehCropRegion()Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BokehInfoListener;->onBokehInfoChanged(I[Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onBokehInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "bokehInfo",
            "camDevice"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$BokehInfoCallbackManager$_NNGhLwLCzksa5qvQT5_IP3s4qw;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$BokehInfoCallbackManager$_NNGhLwLCzksa5qvQT5_IP3s4qw;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setBokehInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BokehInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;->mBokehInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BokehInfoListener;

    return-void
.end method
