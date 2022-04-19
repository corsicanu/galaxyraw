.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SmartScanEventCallbackForwarder$bPBB1TpPLpJSU_Fk_3IcHGKaTBs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:[F

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Z[FLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SmartScanEventCallbackForwarder$bPBB1TpPLpJSU_Fk_3IcHGKaTBs;->f$0:Z

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SmartScanEventCallbackForwarder$bPBB1TpPLpJSU_Fk_3IcHGKaTBs;->f$1:[F

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SmartScanEventCallbackForwarder$bPBB1TpPLpJSU_Fk_3IcHGKaTBs;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SmartScanEventCallbackForwarder$bPBB1TpPLpJSU_Fk_3IcHGKaTBs;->f$0:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SmartScanEventCallbackForwarder$bPBB1TpPLpJSU_Fk_3IcHGKaTBs;->f$1:[F

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SmartScanEventCallbackForwarder$bPBB1TpPLpJSU_Fk_3IcHGKaTBs;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SmartScanEventCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SmartScanEventCallbackForwarder;->lambda$onSmartScanResult$0(Z[FLcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SmartScanEventCallback;)V

    return-void
.end method
