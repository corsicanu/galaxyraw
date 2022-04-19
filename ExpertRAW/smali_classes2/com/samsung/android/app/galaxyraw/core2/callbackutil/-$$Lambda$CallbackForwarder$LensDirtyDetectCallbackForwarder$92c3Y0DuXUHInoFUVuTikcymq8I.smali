.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensDirtyDetectCallbackForwarder$92c3Y0DuXUHInoFUVuTikcymq8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Long;

.field public final synthetic f$1:Ljava/lang/Boolean;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Boolean;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensDirtyDetectCallbackForwarder$92c3Y0DuXUHInoFUVuTikcymq8I;->f$0:Ljava/lang/Long;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensDirtyDetectCallbackForwarder$92c3Y0DuXUHInoFUVuTikcymq8I;->f$1:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensDirtyDetectCallbackForwarder$92c3Y0DuXUHInoFUVuTikcymq8I;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensDirtyDetectCallbackForwarder$92c3Y0DuXUHInoFUVuTikcymq8I;->f$0:Ljava/lang/Long;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensDirtyDetectCallbackForwarder$92c3Y0DuXUHInoFUVuTikcymq8I;->f$1:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensDirtyDetectCallbackForwarder$92c3Y0DuXUHInoFUVuTikcymq8I;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensDirtyDetectCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LensDirtyDetectCallbackForwarder;->lambda$onLensDirtyDetectChanged$0(Ljava/lang/Long;Ljava/lang/Boolean;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensDirtyDetectCallback;)V

    return-void
.end method
