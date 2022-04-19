.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$HandGestureDetectionInfoCallbackManager$OnsnDsaZ4c29J67Ar5zmCdPrGes;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$HandGestureDetectionInfoCallbackManager$OnsnDsaZ4c29J67Ar5zmCdPrGes;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$HandGestureDetectionInfoCallbackManager$OnsnDsaZ4c29J67Ar5zmCdPrGes;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$HandGestureDetectionInfoCallbackManager$OnsnDsaZ4c29J67Ar5zmCdPrGes;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$HandGestureDetectionInfoCallbackManager$OnsnDsaZ4c29J67Ar5zmCdPrGes;->f$1:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;->lambda$notifyPalmDetection$1$CallbackManagerImpl$HandGestureDetectionInfoCallbackManager(Landroid/graphics/Rect;)V

    return-void
.end method
