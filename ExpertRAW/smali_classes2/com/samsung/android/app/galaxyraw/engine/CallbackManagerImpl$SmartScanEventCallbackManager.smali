.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SmartScanEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartScanEventCallbackManager"
.end annotation


# instance fields
.field private mSmartScanEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SmartScanEventListener;

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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;->mSmartScanEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SmartScanEventListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSmartScanResult$0$CallbackManagerImpl$SmartScanEventCallbackManager(Z[F)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;->mSmartScanEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SmartScanEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SmartScanEventListener;->onSmartScanResult(Z[F)V

    :cond_0
    return-void
.end method

.method public onSmartScanResult(Z[FLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isDetected",
            "result",
            "camDevice"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SmartScanEventCallbackManager$thWBbjO481LLdPmzC8xL454_zAA;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SmartScanEventCallbackManager$thWBbjO481LLdPmzC8xL454_zAA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;Z[F)V

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setSmartScanEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SmartScanEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;->mSmartScanEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SmartScanEventListener;

    return-void
.end method
