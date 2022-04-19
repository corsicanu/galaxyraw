.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$bQqUIxI0XufyeWRxYrlNDU1J48g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PictureCallbackForwarder;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PictureCallbackForwarder;Landroid/net/Uri;Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$bQqUIxI0XufyeWRxYrlNDU1J48g;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PictureCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$bQqUIxI0XufyeWRxYrlNDU1J48g;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$bQqUIxI0XufyeWRxYrlNDU1J48g;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$bQqUIxI0XufyeWRxYrlNDU1J48g;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$bQqUIxI0XufyeWRxYrlNDU1J48g;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PictureCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$bQqUIxI0XufyeWRxYrlNDU1J48g;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$bQqUIxI0XufyeWRxYrlNDU1J48g;->f$2:Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$bQqUIxI0XufyeWRxYrlNDU1J48g;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PictureCallbackForwarder;->lambda$onDraftPostProcessingPictureTaken$1$CallbackForwarder$PictureCallbackForwarder(Landroid/net/Uri;Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
