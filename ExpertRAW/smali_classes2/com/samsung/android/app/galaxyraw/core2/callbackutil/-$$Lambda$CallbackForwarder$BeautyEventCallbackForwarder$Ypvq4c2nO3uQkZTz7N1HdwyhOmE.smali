.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$BeautyEventCallbackForwarder$Ypvq4c2nO3uQkZTz7N1HdwyhOmE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BeautyEventCallbackForwarder;

.field public final synthetic f$1:[Lcom/samsung/android/app/galaxyraw/core2/container/RelightTransformData;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BeautyEventCallbackForwarder;[Lcom/samsung/android/app/galaxyraw/core2/container/RelightTransformData;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$BeautyEventCallbackForwarder$Ypvq4c2nO3uQkZTz7N1HdwyhOmE;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BeautyEventCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$BeautyEventCallbackForwarder$Ypvq4c2nO3uQkZTz7N1HdwyhOmE;->f$1:[Lcom/samsung/android/app/galaxyraw/core2/container/RelightTransformData;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$BeautyEventCallbackForwarder$Ypvq4c2nO3uQkZTz7N1HdwyhOmE;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$BeautyEventCallbackForwarder$Ypvq4c2nO3uQkZTz7N1HdwyhOmE;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BeautyEventCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$BeautyEventCallbackForwarder$Ypvq4c2nO3uQkZTz7N1HdwyhOmE;->f$1:[Lcom/samsung/android/app/galaxyraw/core2/container/RelightTransformData;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$BeautyEventCallbackForwarder$Ypvq4c2nO3uQkZTz7N1HdwyhOmE;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BeautyEventCallbackForwarder;->lambda$onRelightData$1$CallbackForwarder$BeautyEventCallbackForwarder([Lcom/samsung/android/app/galaxyraw/core2/container/RelightTransformData;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
