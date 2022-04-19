.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$FaceDetectionCallbackManager$8dfwPdwS9S-RshKDI4es1ZrSPfo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;

.field public final synthetic f$1:[Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;[Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$FaceDetectionCallbackManager$8dfwPdwS9S-RshKDI4es1ZrSPfo;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$FaceDetectionCallbackManager$8dfwPdwS9S-RshKDI4es1ZrSPfo;->f$1:[Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$FaceDetectionCallbackManager$8dfwPdwS9S-RshKDI4es1ZrSPfo;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$FaceDetectionCallbackManager$8dfwPdwS9S-RshKDI4es1ZrSPfo;->f$1:[Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->lambda$onFaceDetection$0$CallbackManagerImpl$FaceDetectionCallbackManager([Landroid/graphics/Rect;)V

    return-void
.end method
