.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HandGestureDetectionInfoCallbackForwarder$JCn3eqyBeBzZQ8C_4h5Er-2gmPw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Integer;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/util/List;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HandGestureDetectionInfoCallbackForwarder$JCn3eqyBeBzZQ8C_4h5Er-2gmPw;->f$0:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HandGestureDetectionInfoCallbackForwarder$JCn3eqyBeBzZQ8C_4h5Er-2gmPw;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HandGestureDetectionInfoCallbackForwarder$JCn3eqyBeBzZQ8C_4h5Er-2gmPw;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HandGestureDetectionInfoCallbackForwarder$JCn3eqyBeBzZQ8C_4h5Er-2gmPw;->f$0:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HandGestureDetectionInfoCallbackForwarder$JCn3eqyBeBzZQ8C_4h5Er-2gmPw;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HandGestureDetectionInfoCallbackForwarder$JCn3eqyBeBzZQ8C_4h5Er-2gmPw;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$HandGestureDetectionInfoCallbackForwarder;->lambda$onHandGestureDetected$0(Ljava/lang/Integer;Ljava/util/List;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;)V

    return-void
.end method
