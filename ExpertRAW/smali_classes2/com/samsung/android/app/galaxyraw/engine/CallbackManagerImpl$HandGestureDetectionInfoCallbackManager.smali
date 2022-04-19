.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandGestureDetectionInfoCallbackManager"
.end annotation


# instance fields
.field private mHandGestureDetectionListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HandGestureDetectionListener;",
            ">;"
        }
    .end annotation
.end field

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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;->mHandGestureDetectionListener:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method

.method static synthetic lambda$notifyPalmDetection$0(Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HandGestureDetectionListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HandGestureDetectionListener;->onPalmDetected(Landroid/graphics/Rect;)V

    return-void
.end method

.method private notifyPalmDetection(Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "palmRect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$HandGestureDetectionInfoCallbackManager$OnsnDsaZ4c29J67Ar5zmCdPrGes;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$HandGestureDetectionInfoCallbackManager$OnsnDsaZ4c29J67Ar5zmCdPrGes;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$notifyPalmDetection$1$CallbackManagerImpl$HandGestureDetectionInfoCallbackManager(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4400(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;->mHandGestureDetectionListener:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$HandGestureDetectionInfoCallbackManager$ZCVp1nWWvTBrwUBQjLLzLIff4TQ;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$HandGestureDetectionInfoCallbackManager$ZCVp1nWWvTBrwUBQjLLzLIff4TQ;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onHandGestureDetected(Ljava/lang/Integer;Ljava/util/List;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handGestureMode",
            "handGestureInfo",
            "camDevice"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/container/HandGestureInfo;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/container/HandGestureInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/HandGestureInfo;->getHandGestureRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;->notifyPalmDetection(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPalmDetection(Ljava/lang/Long;Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timestamp",
            "palm",
            "camDevice"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;->notifyPalmDetection(Landroid/graphics/Rect;)V

    return-void
.end method

.method registerHandGestureListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HandGestureDetectionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;->mHandGestureDetectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;->mHandGestureDetectionListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method unregisterHandGestureListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HandGestureDetectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;->mHandGestureDetectionListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
