.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$pzMz171H7gD7maV3SztttvTr3EY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:[B

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(J[BLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$pzMz171H7gD7maV3SztttvTr3EY;->f$0:J

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$pzMz171H7gD7maV3SztttvTr3EY;->f$1:[B

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$pzMz171H7gD7maV3SztttvTr3EY;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$pzMz171H7gD7maV3SztttvTr3EY;->f$0:J

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$pzMz171H7gD7maV3SztttvTr3EY;->f$1:[B

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$pzMz171H7gD7maV3SztttvTr3EY;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;->lambda$onFacialAttributeResult$2(J[BLcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;)V

    return-void
.end method
