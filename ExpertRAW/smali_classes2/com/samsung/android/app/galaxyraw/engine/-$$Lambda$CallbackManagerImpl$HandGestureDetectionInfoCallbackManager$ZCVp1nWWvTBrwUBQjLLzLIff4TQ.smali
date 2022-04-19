.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$HandGestureDetectionInfoCallbackManager$ZCVp1nWWvTBrwUBQjLLzLIff4TQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$HandGestureDetectionInfoCallbackManager$ZCVp1nWWvTBrwUBQjLLzLIff4TQ;->f$0:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$HandGestureDetectionInfoCallbackManager$ZCVp1nWWvTBrwUBQjLLzLIff4TQ;->f$0:Landroid/graphics/Rect;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HandGestureDetectionListener;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;->lambda$notifyPalmDetection$0(Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HandGestureDetectionListener;)V

    return-void
.end method
