.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PalmDetectionEventCallbackForwarder$WQ6vrALUExpdK7WfM_1vbgENZ60;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PalmDetectionEventCallbackForwarder;

.field public final synthetic f$1:Ljava/lang/Long;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PalmDetectionEventCallbackForwarder;Ljava/lang/Long;Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PalmDetectionEventCallbackForwarder$WQ6vrALUExpdK7WfM_1vbgENZ60;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PalmDetectionEventCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PalmDetectionEventCallbackForwarder$WQ6vrALUExpdK7WfM_1vbgENZ60;->f$1:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PalmDetectionEventCallbackForwarder$WQ6vrALUExpdK7WfM_1vbgENZ60;->f$2:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PalmDetectionEventCallbackForwarder$WQ6vrALUExpdK7WfM_1vbgENZ60;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PalmDetectionEventCallbackForwarder$WQ6vrALUExpdK7WfM_1vbgENZ60;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PalmDetectionEventCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PalmDetectionEventCallbackForwarder$WQ6vrALUExpdK7WfM_1vbgENZ60;->f$1:Ljava/lang/Long;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PalmDetectionEventCallbackForwarder$WQ6vrALUExpdK7WfM_1vbgENZ60;->f$2:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PalmDetectionEventCallbackForwarder$WQ6vrALUExpdK7WfM_1vbgENZ60;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PalmDetectionEventCallbackForwarder;->lambda$onPalmDetection$1$CallbackForwarder$PalmDetectionEventCallbackForwarder(Ljava/lang/Long;Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
