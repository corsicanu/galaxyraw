.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SmartScanEventCallbackManager$thWBbjO481LLdPmzC8xL454_zAA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;

.field public final synthetic f$1:Z

.field public final synthetic f$2:[F


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;Z[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SmartScanEventCallbackManager$thWBbjO481LLdPmzC8xL454_zAA;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SmartScanEventCallbackManager$thWBbjO481LLdPmzC8xL454_zAA;->f$1:Z

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SmartScanEventCallbackManager$thWBbjO481LLdPmzC8xL454_zAA;->f$2:[F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SmartScanEventCallbackManager$thWBbjO481LLdPmzC8xL454_zAA;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SmartScanEventCallbackManager$thWBbjO481LLdPmzC8xL454_zAA;->f$1:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SmartScanEventCallbackManager$thWBbjO481LLdPmzC8xL454_zAA;->f$2:[F

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;->lambda$onSmartScanResult$0$CallbackManagerImpl$SmartScanEventCallbackManager(Z[F)V

    return-void
.end method
